package com.team.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoRestVO;
import com.mangoplate.vo.MangoReviewVO;
import com.team.service.FileServiceImpl;
import com.team.service.ListServiceImpl;
import com.team.service.ReviewServiceImpl;

@Controller
public class ReviewController {
	
	@Autowired
	private ListServiceImpl listService;
	
	@Autowired
	private ReviewServiceImpl reviewService;
	
	@Autowired
	private FileServiceImpl fileService;
	
	/**
	 * review_write.do : 리뷰 작성 페이지 화면
	 */
	@RequestMapping(value="/review_write.do", method = RequestMethod.GET)
	public ModelAndView review_write(String rid) {
		
		/* System.out.println(rid); */
		ModelAndView mv = new ModelAndView();
		MangoRestVO vo = listService.getContent(rid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/restaurant/review_write");
		
		return mv;
	}
	
	/**
	 * review_write_check.do : 리뷰 작성하기
	 */
	@RequestMapping(value = "/review_write_check.do", method = RequestMethod.POST)
	public ModelAndView review_write_check(MangoReviewVO vo, HttpServletRequest request) throws Exception {
		
		vo = fileService.fileCheck(vo); //서비스쪽 메소드 호출(위의 주석처리 내용임)
		
		ModelAndView mv = new ModelAndView();
		
		int result = reviewService.getReview(vo);
		if(result == 1){
			
			fileService.fileSave(vo, request); //위코드를 이동한 서비스쪽 메소드 호출
			
			mv.setViewName("/restaurant/review_content");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	/**
	 * review_content.do : 리뷰 보기 화면
	 */
	@RequestMapping(value="/review_content.do", method = RequestMethod.GET)
	public String review_content() {
		return "/restaurant/review_content";
	}
	
	/**
	 * restaurant_detail.do : 식당 상세페이지에 리뷰 출력
	 */
	/*
	 * @RequestMapping(value="/restaurant_detail.do", method = RequestMethod.GET)
	 * public ModelAndView restaurant_detail_review(String vname) { ModelAndView mv
	 * = new ModelAndView(); ArrayList<MangoReviewVO> list =
	 * reviewService.getReviewList(vname);
	 * 
	 * mv.addObject("list", list); mv.setViewName("/restaurant/restaurant_content");
	 * 
	 * return mv; }
	 */
}
