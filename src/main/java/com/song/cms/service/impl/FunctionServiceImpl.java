package com.song.cms.service.impl;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.song.cms.mapper.FunctionMapper;
import com.song.cms.model.Function;
import com.song.cms.model.FunctionExample;
import com.song.cms.service.FunctionService;
import com.song.utility.Tool;

@Service
public class FunctionServiceImpl implements FunctionService {

	@Resource
	FunctionMapper functionMapper;

	@Override
	public int countByExample(FunctionExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByExample(FunctionExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(String functionId) {
		// TODO Auto-generated method stub
		return 0;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.song.cms.service.FunctionService#insert(com.song.cms.model.Function)
	 */
	@Override
	public int insert(Function record) {
		if (null != record) {
			if (null == record.getFunctionId() || "" == record.getFunctionId()) {
				record.setFunctionId(UUID.randomUUID().toString());
				record.setAddDate(Tool.getCurrentDate());
				record.setParentId(UUID.randomUUID().toString());
				record.setIsDelete(false);
				record.setIsEnable(true);
				record.setSequence(0);
				record.setLevel(1);
				return functionMapper.insert(record);
			} else {
				return functionMapper.updateByPrimaryKey(record);
			}
		} else {

		}
		return 0;
	}

	@Override
	public int insertSelective(Function record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Function> selectByExample(FunctionExample example) {
		return functionMapper.selectByExample(example);
	}

	@Override
	public Function selectByPrimaryKey(String functionId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByExampleSelective(Function record, FunctionExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(Function record, FunctionExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(Function record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Function record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
