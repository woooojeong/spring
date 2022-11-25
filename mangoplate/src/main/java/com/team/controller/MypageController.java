package com.team.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.dao.MangoMemberDAO;
import com.mangoplate.vo.MangoMemberVO;
import com.team.service.MemberServiceImpl;

@Controller
public class MypageController {

	@Autowired
	private MemberServiceImpl memberService;


	/**
	 * mypage_update_check.do : 회원정보 수정체크
	 */
	@RequestMapping(value="/mypage_update_check.do", method=RequestMethod.POST)
	public ModelAndView amypage_update_check(MangoMemberVO vo) {
		ModelAndView mv = new ModelAndView();
		
		/* MangoMemberDAO dao = new MangoMemberDAO(); */
		int result = memberService.getUpdate(vo);
		/* int result = dao.update(vo); */
		if(result == 1){
			mv.addObject("vo", vo);
			mv.setViewName("redirect:/mypage.do");
			System.out.println(result);
		}else {
			mv.setViewName("error_page");
			System.out.println(result);
		}
		
		return mv;
	}
	/**
	 * mypage_update.do : 회원정보 수정 페이지
	 */
	@RequestMapping(value = "/mypage_update.do", method = RequestMethod.GET)
	public ModelAndView admin_notice_update(String id) {
		
		ModelAndView mv = new ModelAndView();
		
		MangoMemberVO vo = memberService.getMemberContent(id);
		
		mv.addObject("vo", vo);
		mv.setViewName("/mypage/mypage_update");
		
		return mv;
	}
	/**
	 * mypage.do : 마이페이지
	 */
	  @RequestMapping(value="/mypage.do", method=RequestMethod.GET) 
	  public ModelAndView mypage(HttpSession session) { 
		  ModelAndView mv = new ModelAndView();
		  String id = (String)session.getAttribute("sid");
		  MangoMemberVO vo = memberService.getMemberMypage(id);
		  mv.addObject("vo",vo);
		  mv.setViewName("/mypage/mypage");
		  //System.out.println(id);
		  return mv; 
	  }

}
