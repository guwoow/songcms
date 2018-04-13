package com.song.cms.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.song.cms.model.Function;
import com.song.cms.model.FunctionExample;
import com.song.cms.model.Gallery;
import com.song.cms.model.GalleryExample;

public interface GalleryService {
	int countByExample(GalleryExample example);

    int deleteByExample(GalleryExample example);

    int deleteByPrimaryKey(String galleryId);

    int insert(Gallery record);

    int insertSelective(Gallery record);

    List<Gallery> selectByExample(GalleryExample example);

    Gallery selectByPrimaryKey(String galleryId);

    int updateByExampleSelective(@Param("record") Gallery record, @Param("example") GalleryExample example);

    int updateByExample(@Param("record") Gallery record, @Param("example") GalleryExample example);

    int updateByPrimaryKeySelective(Gallery record);

    int updateByPrimaryKey(Gallery record);
}
