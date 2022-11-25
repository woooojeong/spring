package com.team.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoMemberVO;
import com.mangoplate.vo.MangoRestVO;
import com.team.service.FileServiceImpl;
import com.team.service.MemberServiceImpl;
import com.team.service.PageServiceImpl;
import com.team.service.RestaurantServiceImpl;

@Controller
public class AdminController {

	@Autowired
	private FileServiceImpl fileService;
	
	@Autowired
	private PageServiceImpl pageService;
	
	@Autowired
	private MemberServiceImpl memberService;
	
	@Autowired
	private RestaurantServiceImpl restaurantService;
	
	//admin_restaurant : 식당 등록
	
		/**
		 * admin_restaurant_delete_check.do : 식당 삭제 처리
		 */
		@RequestMapping(value="/admin_restaurant_delete_check.do", method=RequestMethod.POST)
		public ModelAndView admin_restaurant_delete_check(String rid, HttpServletRequest request)
																throws Exception {
			ModelAndView mv = new ModelAndView();
		
			MangoRestVO vo = restaurantService.getContent(rid);
			int result = restaurantService.getDelete(rid);
			
			if(result == 1){	
				fileService.fileDelete(vo, request);
				mv.setViewName("redirect:/admin_restaurant_list.do");
			}else{
	
				mv.setViewName("error_page");
			}		
			
			return mv;
		}
	
		/**
		 * admin_restaurant_update_check.do : 식당 수정 처리
		 */
		@RequestMapping(value="/admin_restaurant_update_check.do", method=RequestMethod.POST)
		public ModelAndView admin_restaurant_update_check(MangoRestVO vo, HttpServletRequest request)
																	throws Exception {
			ModelAndView mv = new ModelAndView();
	
			String old_filename = vo.getRsimage();	//수정화면에서 hidden으로 넘어오는 기존 upload 폴더에 저장된 파일명
			
			vo = fileService.update_fileCheck(vo);
			int result = restaurantService.getUpdate(vo);
			
			if(result == 1){
				//새로운 파일을 upload 폴더에 저장한 후 기존의 파일은 삭제
				fileService.update_filesave(vo, request, old_filename);
				mv.setViewName("redirect:/admin_restaurant_list.do");
				
			}else{
	
				mv.setViewName("error_page");
			}		
			
			return mv;
		}
	
		/**
		 * admin_restaurant_regist_check.do : 식당 등록 처리
		 */
		@RequestMapping(value="/admin_restaurant_regist_check.do", method=RequestMethod.POST)
		public ModelAndView admin_restaurant_regist_check(MangoRestVO vo, HttpServletRequest request) 
		throws Exception {
			
			if(vo.getFile1().getOriginalFilename().equals("")) {
				vo.setRimage("");
				vo.setRsimage("");
			}else {
				UUID uuid = UUID.randomUUID();
				vo.setRimage(vo.getFile1().getOriginalFilename());
				vo.setRsimage(uuid+"_"+vo.getFile1().getOriginalFilename());
			}//if-else
			
			
			ModelAndView mv = new ModelAndView();
			
			//DB연동
			int result = restaurantService.getWriteResult(vo);
			
			if(result == 1){
				if(!vo.getFile1().getOriginalFilename().equals("")) {
					String path = request.getSession().getServletContext().getRealPath("/");
					path += "\\resources\\upload\\";
					
					File file = new File(path+vo.getRsimage());
					vo.getFile1().transferTo(file);
				}
				mv.setViewName("redirect:/admin_restaurant_list.do");
			}else {
				mv.setViewName("error_page");
			}
			
			return mv;
		}
		/**
		 * admin_restaurant_delete.do  : 식당 삭제하기
		 */
		@RequestMapping(value="/admin_restaurant_delete.do", method=RequestMethod.GET)
		public ModelAndView admin_restaurant_delete(String rid) {
			ModelAndView mv = new ModelAndView();
			
			mv.addObject("rid",rid);
			mv.setViewName("/admin/admin_restaurant/admin_restaurant_delete");
			return mv;
		}
		
		/**
		 * admin_restaurant_update.do  : 식당 수정하기
		 */
		@RequestMapping(value="/admin_restaurant_update.do", method=RequestMethod.GET)
		public ModelAndView admin_restaurante_update(String rid) {
			ModelAndView mv = new ModelAndView();
			
			MangoRestVO vo = restaurantService.getContent(rid);
			
			mv.addObject("vo",vo);
			mv.setViewName("/admin/admin_restaurant/admin_restaurant_update");
			
			return mv;
		}
	
		/**
		 * admin_restaurant_regist.do : 식당 등록하기
		 */
		@RequestMapping(value = "/admin_restaurant_regist.do", method = RequestMethod.GET)
		public ModelAndView admin_restaurant_regist() {
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("/admin/admin_restaurant/admin_restaurant_regist");
			return mv;
		}
		
		/**
		 * admin_restaurant_content.do : 식당 상세 정보 
		 */
		@RequestMapping(value="/admin_restaurant_content.do", method=RequestMethod.GET)
		public ModelAndView admin_restaurant_content(String rid) {
			ModelAndView mv = new ModelAndView();
			MangoRestVO vo = restaurantService.getContent(rid);
			
			mv.addObject("vo", vo);
			mv.setViewName("/admin/admin_restaurant/admin_restaurant_content");
			System.out.println("rid==>"+rid);
			return mv;
		}
		
		/**
		 * admin_restaurant_list.do : 전체 식당 리스트
		 */
		@RequestMapping(value = "/admin_restaurant_list.do", method = RequestMethod.GET)
		public ModelAndView admin_restaurant_list() {
			ModelAndView mv = new ModelAndView();
			
			ArrayList<MangoRestVO> list = restaurantService.getList(1, 5);
			mv.addObject("list", list);
			mv.setViewName("/admin/admin_restaurant/admin_restaurant_list");
			return mv;
		}
		
	//admin_member
	/**
	 * admin_member_content.do
	 */
	@RequestMapping(value = "/admin_member_content.do", method = RequestMethod.GET)
	public ModelAndView admin_member_content(String id) {
	ModelAndView mv = new ModelAndView();
	MangoMemberVO vo =memberService.getMemberContent(id);
	String address = vo.getAddr1()+" "+ vo.getAddr2();
	String email = vo.getEmail1()+"@"+ vo.getEmail2();
	mv.addObject("vo", vo);
	mv.addObject("address", address);
	mv.addObject("email", email);
	mv.setViewName("/admin/admin_member/admin_member_content");
	return mv;
	}
	
	/**
	 * admin_member_list.do : 회원 전체 리스트
	 */
	@RequestMapping(value = "/admin_member_list.do", method = RequestMethod.GET)
	public ModelAndView admin_member_list(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Integer> param = pageService.getPageResult(rpage, "member", memberService);
		ArrayList<MangoMemberVO> list = memberService.getMemberList(param.get("startCount"),param.get("endCount"));
		
		mv.addObject("list",list);
		mv.addObject("dbCount",param.get("dbCount"));
		mv.addObject("pageSize",param.get("pageSize"));
		mv.addObject("rpage",param.get("rpage"));
		mv.setViewName("/admin/admin_member/admin_member_list");
		
		return mv;
	}
	
	/**
	 * admin.do : 관리자 페이지 
	 */
	@RequestMapping(value="/admin.do", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	
	
	/////////////////////////////////////////////////////////////////////////
	//            notice         /        eatdeal
	/////////////////////////////////////////////////////////////////////////
	
	//admin_notice
	/**
	 * admin_notice_content.do
	 */
	@RequestMapping(value = "/admin_notice_content.do", method = RequestMethod.GET)
	public String admin_notice_content() {
		return "/admin/admin_notice/admin_notice_content";
	}
	
	//admin_eatdeal
}
