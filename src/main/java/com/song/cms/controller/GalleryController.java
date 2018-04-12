package com.song.cms.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.song.cms.model.Gallery;
import com.song.cms.model.GalleryExample;
import com.song.cms.service.GalleryService;

@Controller
@RequestMapping(value = "/gallery")
public class GalleryController {

	@Resource
	private GalleryService galleryService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelandview = new ModelAndView();
		GalleryExample example = new GalleryExample();
		List<Gallery> galleryList = galleryService.selectByExample(example);
		modelandview.addObject("list", galleryList);
		return modelandview;
	}

	public void save(Gallery record) {
		galleryService.insert(record);
	}

	/*
	 * 采用spring提供的上传文件的方法
	 */
	@RequestMapping(value = "upload", method = RequestMethod.POST)
	@ResponseBody
	public String upload(HttpServletRequest request) throws IllegalStateException, IOException {
		// 将当前上下文初始化给 CommonsMutipartResolver （多部分解析器）。
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		// 检查form中是否有enctype="multipart/form-data"。
		if (multipartResolver.isMultipart(request)) {
			// 将request变成多部分request。
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			// 迭代器获取multiRequest中所有的文件名。
			Iterator<String> iterator = multipartRequest.getFileNames();
			String path = "";
			while (iterator.hasNext()) {
				MultipartFile file = multipartRequest.getFile(iterator.next().toString());
				if (file != null) {
					// 获得应用根目录。
					String rootPath = request.getSession().getServletContext().getRealPath("");

					// 以UUID生成新的文件名。
					String filename = UUID.randomUUID().toString().replaceAll("-", "");

					// 获得文件类型。
					String contentType = file.getContentType();

					// 获得文件扩展名。
					String extension = contentType.substring(contentType.indexOf("/") + 1);

					// 文件在服务器上的相对路径。
					String relativePath = "/static/images/" + filename + "." + extension;

					// 文件在服务器上的绝对路径。
					String absolutePath = rootPath.concat(relativePath);

					File uploadFile = new File(absolutePath);

					// String canonicalPath = uploadFile.getCanonicalPath();

					// 如果文件目录不存在，先创建目录。
					if (!uploadFile.getParentFile().exists()) {
						if (!uploadFile.getParentFile().mkdirs()) {
							continue;
						}
					}

					// 保存文件。
					file.transferTo(uploadFile);
					path += relativePath + ",";
					if (uploadFile.exists()) {
						Gallery record = new Gallery();
						record.setGalleryId(UUID.randomUUID().toString());
						record.setName(filename);
						record.setPath(relativePath);
						save(record);
					}
				}
			}

			if (path.endsWith(",")) {
				path = path.substring(0, path.lastIndexOf(","));
			}

			HashMap<String, Object> hashMap = new HashMap<String, Object>();
			hashMap.put("STATUS", 200);
			hashMap.put("DATA", path);
			return JSONObject.toJSONString(hashMap);
		}
		return "fail";
	}
}
