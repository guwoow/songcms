package com.song.cms.mapper;

import com.song.cms.model.Edition;
import com.song.cms.model.EditionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EditionMapper {
    int countByExample(EditionExample example);

    int deleteByExample(EditionExample example);

    int deleteByPrimaryKey(String editionId);

    int insert(Edition record);

    int insertSelective(Edition record);

    List<Edition> selectByExample(EditionExample example);

    Edition selectByPrimaryKey(String editionId);

    int updateByExampleSelective(@Param("record") Edition record, @Param("example") EditionExample example);

    int updateByExample(@Param("record") Edition record, @Param("example") EditionExample example);

    int updateByPrimaryKeySelective(Edition record);

    int updateByPrimaryKey(Edition record);
}