package com.song.cms.mapper;

import com.song.cms.model.EditionFunction;
import com.song.cms.model.EditionFunctionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EditionFunctionMapper {
    int countByExample(EditionFunctionExample example);

    int deleteByExample(EditionFunctionExample example);

    int deleteByPrimaryKey(String editionFunctionId);

    int insert(EditionFunction record);

    int insertSelective(EditionFunction record);

    List<EditionFunction> selectByExample(EditionFunctionExample example);

    EditionFunction selectByPrimaryKey(String editionFunctionId);

    int updateByExampleSelective(@Param("record") EditionFunction record, @Param("example") EditionFunctionExample example);

    int updateByExample(@Param("record") EditionFunction record, @Param("example") EditionFunctionExample example);

    int updateByPrimaryKeySelective(EditionFunction record);

    int updateByPrimaryKey(EditionFunction record);
}