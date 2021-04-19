package com.song.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class MainPageController {
	
	// 메인 페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainpageGET() throws Exception {
		return "/MainPage";
	}
}
