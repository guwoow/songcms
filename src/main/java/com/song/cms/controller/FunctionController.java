package com.song.cms.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.song.cms.model.Function;
import com.song.cms.model.FunctionExample;
import com.song.cms.service.FunctionService;

@Controller
@RequestMapping(value = "/function")
public class FunctionController {

	@Resource
	private FunctionService functionService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelandview = new ModelAndView();
		FunctionExample example = new FunctionExample();
		List<Function> functionList = functionService.selectByExample(example);
		modelandview.addObject("list", functionList);
		return modelandview;
	}

	@RequestMapping(value = "/functionList", method = RequestMethod.GET)
	@ResponseBody
	public String functionList() {
		FunctionExample example = new FunctionExample();
		List<Function> functionList = functionService.selectByExample(example);
		return JSONObject.toJSONString(functionList);
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(Function function) {
		int i = functionService.insert(function);
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		if (0 < i) {
			hashMap.put("STATUS", 200);
			hashMap.put("DATA", "success");
		} else {
			hashMap.put("STATUS", 400);
			hashMap.put("DATA", "fail");
		}
		return JSONObject.toJSONString(hashMap);
	}
}
