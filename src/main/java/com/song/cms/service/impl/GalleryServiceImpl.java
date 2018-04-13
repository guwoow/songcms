package com.song.cms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.song.cms.mapper.GalleryMapper;
import com.song.cms.model.Gallery;
import com.song.cms.model.GalleryExample;
import com.song.cms.service.GalleryService;

@Service
public class GalleryServiceImpl implements GalleryService {

	@Resource
	GalleryMapper galleryMapper;

	@Override
	public int countByExample(GalleryExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByExample(GalleryExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(String galleryId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Gallery record) {
		int i = galleryMapper.insert(record);
		return i;
	}

	@Override
	public int insertSelective(Gallery record) {
		int i = galleryMapper.insert(record);
		return i;
	}

	@Override
	public List<Gallery> selectByExample(GalleryExample example) {
		// TODO Auto-generated method stub
		return galleryMapper.selectByExample(example);
	}

	@Override
	public Gallery selectByPrimaryKey(String galleryId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByExampleSelective(Gallery record, GalleryExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(Gallery record, GalleryExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(Gallery record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Gallery record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
