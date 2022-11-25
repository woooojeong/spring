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

import com.mangoplate.dao.MangoNoticeDAO;
import com.mangoplate.vo.MangoNoticeVO;
import com.team.service.FileServiceImpl;
import com.team.service.NoticeServiceImpl;


@Controller
public class NoticeController {
	
	@Autowired
	private NoticeServiceImpl noticeService;
	
	@Autowired
	private FileServiceImpl fileService;
	
	
	
//	/**
//	 * admin_notice_content.do
//	 */
//	@RequestMapping(value = "/admin_notice_content.do", method = RequestMethod.GET)
//	public ModelAndView admin_notice_content(String nid) {
//		
//		ModelAndView mv = new ModelAndView();
//		
//		//String nid = request.getParameter("nid");
//		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB는 서비스쪽에서 관리
//		//CgvNoticeVO vo = dao.select(nid);
//		MangoNoticeVO vo = noticeService.getContent(nid); //서비스쪽 메소드 호출
//		
//		//if(vo != null){
//		//	dao.updateHits(nid);
//		//}
//		
//		mv.addObject("vo", vo);
//		mv.setViewName("/admin/admin_notice/admin_notice_content");
//		
//		return mv;
//	}
//	
	
	/**
	 * admin_notice_delete.do
	 */
	@RequestMapping(value = "/admin_notice_delete.do", method = RequestMethod.GET)
	public ModelAndView admin_notice_delete(String nid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		mv.addObject("nid", nid);
		mv.setViewName("/admin/admin_notice/admin_notice_delete");
		
		return mv;
	}
	
	/**
	 * admin_notice_delete_check.do
	 */
	@RequestMapping(value="/admin_notice_delete_check.do", method=RequestMethod.POST)
	public ModelAndView admin_notice_delete_check(String nid, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //서비스쪽에서!
		
		//CgvNoticeVO vo = dao.select(nid);
		MangoNoticeVO vo = noticeService.getContent(nid);
		
		//int result = dao.delete(nid);
		int result = noticeService.getDeleteResult(nid);
		if(result == 1){
			//파일이 있는 게시글일 경우 게시글과 함께 upload 폴더의 파일도 삭제
//			if(vo.getNsfile() != null) {
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File old_file = new File(path + vo.getNsfile());
//				if(old_file.exists()) {
//					old_file.delete();
//				}
//			}
			fileService.fileDelete(vo, request);//위의 주석처리한 코드를 처리하는 서비스쪽 메소드
			
			mv.setViewName("redirect:/admin_notice_list.do");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * admin_notice_list.do : 공지사항 전체리스트
	 */
	@RequestMapping(value = "/admin_notice_list.do", method = RequestMethod.GET)
	public ModelAndView admin_notice_list(String nid) {
		
		ModelAndView mv = new ModelAndView();
		
//		//String rpage = request.getParameter("rpage");
//		//CgvNoticeDAO dao = new CgvNoticeDAO(); //서비스쪽에서 관리
//
//		//startCount, endCount
//		//페이징 처리 - startCount, endCount 구하기
//		int startCount = 0;
//		int endCount = 0;
//		int pageSize = 5;	//한페이지당 게시물 수
//		int reqPage = 1;	//요청페이지	
//		int pageCount = 1;	//전체 페이지 수
//		//int dbCount = dao.totalCount();	//DB에서 가져온 전체 행수
//		int dbCount = noticeService.getTotalCount(); //서비스쪽 메소드 호출
//		
//		//총 페이지 수 계산
//		if(dbCount % pageSize == 0){
//			pageCount = dbCount/pageSize;
//		}else{
//			pageCount = dbCount/pageSize+1;
//		}
//		
//		//요청 페이지 계산
//		if(rpage != null){
//			reqPage = Integer.parseInt(rpage);
//			startCount = (reqPage-1) * pageSize+1;
//			endCount = reqPage *pageSize;
//		}else{
//			startCount = 1;
//			endCount = pageSize;
//		}
//
//		//ArrayList<CgvNoticeVO> list = dao.select(startCount, endCount);
//		ArrayList<CgvNoticeVO> list = noticeService.getList(startCount, endCount); //서비스쪽 메소드 호출

		//Map<String, Integer> param = pageService.getPageResult(rpage, "notice", noticeService);
		
		MangoNoticeVO vo = noticeService.getContent(nid); //서비스쪽 메소드 호출
		
		mv.addObject("vo", vo);
		
		
		ArrayList<MangoNoticeVO> list = noticeService.getList();
		
		mv.addObject("list", list);
		mv.setViewName("/admin/admin_notice/admin_notice_list");
		
		return mv;
	}
	
	
	/**
	 * admin_notice_update.do : 공지사항 수정화면
	 */
	@RequestMapping(value = "/admin_notice_update.do", method = RequestMethod.GET)
	public ModelAndView admin_notice_update(String nid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB는 서비스쪽에서 처리
		//CgvNoticeVO vo = dao.select(nid);
		MangoNoticeVO vo = noticeService.getContent(nid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_notice/admin_notice_update");
		
		return mv;
	}
	
	/**
	 * admin_notice_update_check.do 
	 */
	@RequestMapping(value="/admin_notice_update_check.do", method=RequestMethod.POST)
	public ModelAndView admin_notice_update_check(MangoNoticeVO vo, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		String old_filename = vo.getNsfile(); //수정화면(admin_notice_update.jsp)에서 hidden으로 넘어오는 기존 upload 폴더에 저장된 파일명
												//이 기존의 파일의 이름 값을 미리 변수로 구해놓는다
		
//		if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일을 선택한 경우      //서비스쪽에서 진행하여 주석처리
//			UUID uuid = UUID.randomUUID();
//			
//			vo.setNfile(vo.getFile1().getOriginalFilename());
//			vo.setNsfile(uuid + "_" + vo.getFile1().getOriginalFilename());
//		}
		vo = fileService.update_fileCheck(vo);//위의 주석처리한 코드를 서비스쪽으로 이동하였고, 그 메소드 호출한 것
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //서비스쪽에서 처리
		//int result = dao.update(vo);
		int result = noticeService.getUpdateResult(vo);
		if(result ==1){
			//새로운 파일을 upload 폴더에 저장한 후 기존의 파일은 삭제
//			if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일을 선택한 경우
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File new_file = new File(path + vo.getNsfile());
//				vo.getFile1().transferTo(new_file);
//				
//				//기존 파일이 있을 경우 삭제
//				File old_file = new File(path + old_filename);
//				if(old_file.exists()) {
//					old_file.delete();
//				}
//			}
			fileService.update_filesave(vo, request, old_filename); //위의 주석처리한 코드를 이동시킨 서비스쪽 메소드 호출
			
			mv.setViewName("redirect:/admin_notice_list.do");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * admin_notice_write.do
	 */
	@RequestMapping(value = "/admin_notice_write.do", method = RequestMethod.GET)
	public String admin_notice_write() {
		return "/admin/admin_notice/admin_notice_write";
	}
	
	/**
	 * admin_notice_write_check.do
	 */
	@RequestMapping(value = "/admin_notice_write_check.do", method = RequestMethod.POST)
	public ModelAndView admin_notice_write_check(MangoNoticeVO vo, HttpServletRequest request) throws Exception {
		
//		//파일이 선택되었는지 체크      //이 부분은 FileServiceImpl.java에서 진행한다
//		if(vo.getFile1().getOriginalFilename().equals("")) {//파일이 선택되어있지 않은 경우
//			vo.setNfile("");
//			vo.setNsfile("");// cf) 자바에서의 null과 DB에서의 null은 타입이 다르다. 자바에서 ""를 주어야만 DB에서 null로 인식한다
//		}else {//파일이 선택된 경우
//			UUID uuid = UUID.randomUUID();
//			
//			vo.setNfile(vo.getFile1().getOriginalFilename());//DB의 nfile에 업로드한 파일의 이름을 문자데이터로 담는다
//			vo.setNsfile(uuid+"_"+vo.getFile1().getOriginalFilename());
//		}
		vo = fileService.fileCheck(vo); //서비스쪽 메소드 호출(위의 주석처리 내용임)
		
		ModelAndView mv = new ModelAndView();
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //서비스쪽에서 처리
		//int result = dao.insert(vo);
		int result = noticeService.getWriteResult(vo);
		if(result == 1){
			
//			//파일이 있는 경우 upload 폴더에 파일 저장  //해당 부분 서비스쪽에서 진행
//			if(!vo.getFile1().getOriginalFilename().equals("")) {//DB의 nfile에 데이터가 null이 아닌 경우를 말한다
//																//그래서 !vo.getNfile().equals("")도 가능하다
//				
//				//upload 폴더의 경로를 가져오기 위해, HttpServletRequest 객체를 파라미터로 가져온다
//				//(이클립스는 /resources/upload에서 파일 바로 찾지 못한다)
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File file = new File(path+vo.getNsfile()); //여기까지 작업하면 이름이 nsfile인 0kb짜리 비어있는 파일이 생성된다
//				vo.getFile1().transferTo(file); //여기까지 작업해야 비로소 업로드한 파일이 온전하게 채워져서 생성된다
//			}
			fileService.fileSave(vo, request); //위코드를 이동한 서비스쪽 메소드 호출
			
			//response.sendRedirect("admin_notice_list.jsp");
			mv.setViewName("redirect:/admin_notice_list.do");
		}else{
			//response.sendRedirect("../errorPage.jsp");
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * notice_list.do : 공지사항 전체리스트
	 */
	@RequestMapping(value = "/notice_list.do", method = RequestMethod.GET)
	public ModelAndView notice_list(String nid) {
		
		ModelAndView mv = new ModelAndView();
		
		
		MangoNoticeVO vo = noticeService.getContent(nid); //서비스쪽 메소드 호출
		
		mv.addObject("vo", vo);
		
		
		ArrayList<MangoNoticeVO> list = noticeService.getList();
		
		mv.addObject("list", list);
		mv.setViewName("/notice/notice_list");
		
		return mv;
	}
	
	
}
