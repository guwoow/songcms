package com.song.cms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/content")
public class ContentController {

	@RequestMapping(value = "/gallerylist", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView modelandview = new ModelAndView();
		return modelandview;
	}
}
