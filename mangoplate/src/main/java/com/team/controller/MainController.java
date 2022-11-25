package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {


	/**
	 * error_page.do 페이지 호출
	 */
	@RequestMapping(value="/error_page.do", method=RequestMethod.GET)
	public String error_page() {
		return "error_page";
	}
	
	@RequestMapping(value="/header.do", method=RequestMethod.GET)
	public String header() {
		return "header";
	}
	
	@RequestMapping(value="/footer.do", method=RequestMethod.GET)
	public String footer() {
		return "footer";
	}
	
	/**
	 * index.do 페이지 호출
	 */
	
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	public String index() {
		return "index";
	}
}
