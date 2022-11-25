package com.team.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoMemberVO;
import com.mangoplate.vo.SessionVO;
import com.team.service.MemberServiceImpl;

@Controller
public class LoginController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	/**
	 * logout.do : �α׾ƿ�
	 */
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		//���������� �����ͼ� sid ���� null�� �ƴϸ� session.invalidation �޼ҵ� ȣ��
		String sid = (String)session.getAttribute("sid");
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		
		if(svo != null) {
			session.invalidate();	//���� ���� ����
			mv.addObject("logout_result","ok"); //index ���������� logout_result ���� �޾Ƽ� ok�� ��� alert â�� ���
		}
		
		mv.setViewName("/index");
		
		return mv;
	}
	
	/**
	 * loginCheck.do : �α��� ó��
	 */
	@RequestMapping(value="/loginCheck.do", method=RequestMethod.POST)
	public ModelAndView loginCheck(MangoMemberVO vo, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		SessionVO svo = memberService.getLoginResult(vo); 
		if(svo != null) {
			if(svo.getLoginresult() == 1){
				//�α��� ���� --> session��ü�� key(sid),value(�α��� ����) �߰� �� index �������� �̵�
				session.setAttribute("sid", vo.getId());
				session.setAttribute("svo", svo);
				mv.addObject("login_result","ok");
				mv.setViewName("index");
			}
		}else{
			mv.addObject("login_result","fail");
			mv.setViewName("index");
		}
		
		return mv;
	}
	
	/**
	 * login.do : �α��� ��
	 */
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public ModelAndView login(String auth) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("auth", auth);
		mv.setViewName("/login/login");
		return mv;
	}
}
