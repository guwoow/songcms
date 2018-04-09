package com.song.cms.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
		FunctionExample example = null;
		functionService.selectByExample(example);
		return modelandview;
	}
}
