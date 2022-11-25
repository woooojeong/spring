package com.team.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mangoplate.dao.MangoEatdealDAO;
import com.mangoplate.vo.MangoEatdealVO;
import com.team.service.EatdealServiceImpl;
import com.team.service.FileServiceImpl;

@Controller
public class EatdealController {
	
	@Autowired
	private EatdealServiceImpl eatdealService;
	
	@Autowired
	private FileServiceImpl fileService;
	
	/**
	 * eatdeal_content_json.do : �յ� ���� Ajax�� ȣ��
	 */
	@ResponseBody
	@RequestMapping(value="/eatdeal_content_json.do", method=RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String eatdeal_content_json(String eid) {

		MangoEatdealDAO dao = new MangoEatdealDAO();
		MangoEatdealVO vo = dao.select(eid);
		/*
		 * if(vo != null){ dao.updateHits(eid); }
		 */
		Gson gson = new Gson();
		JsonObject jobject = new JsonObject();
		jobject.addProperty("eid", vo.getEid());
		jobject.addProperty("ename", vo.getEname());
		jobject.addProperty("region", vo.getRegion());
		jobject.addProperty("packaging", vo.getPackaging());
		jobject.addProperty("menu", vo.getMenu());
		jobject.addProperty("price", vo.getPrice());
		jobject.addProperty("scontent", vo.getScontent());
		jobject.addProperty("common", vo.getCommon());
		jobject.addProperty("eimage1", vo.getEimage1());
		jobject.addProperty("esimage1", vo.getEsimage1());
		jobject.addProperty("eimage2", vo.getEimage2());
		jobject.addProperty("esimage2", vo.getEsimage2());

		return gson.toJson(jobject);
	}
	
	/**
	 * eatdeal_list_json.do : �������� ��ü ����Ʈ Ajax�� ȣ��
	 */
	@ResponseBody
	@RequestMapping(value="/eatdeal_list_json.do", method=RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String eatdeal_list_json(String rpage) {
		
		MangoEatdealDAO dao = new MangoEatdealDAO();

		//����¡ ó�� - startCount, endCount ���ϱ�
			int startCount = 0;
			int endCount = 0;
			int pageSize = 3;	//���������� �Խù� ��
			int reqPage = 1;	//��û������	
			int pageCount = 1;	//��ü ������ ��
			int dbCount = dao.totalCount();	//DB���� ������ ��ü ���
			
			//�� ������ �� ���
			if(dbCount % pageSize == 0){
				pageCount = dbCount/pageSize;
			}else{
				pageCount = dbCount/pageSize+1;
			}
			
			//��û ������ ���
			if(rpage != null){ //�Խ��� �� �������� repage�� ���� null�̰� 1�������� ��������
				reqPage = Integer.parseInt(rpage);
				startCount = (reqPage-1) * pageSize+1;
				endCount = reqPage *pageSize;
			}else{
				startCount = 1;
				endCount = pageSize;
			}
		
		ArrayList<MangoEatdealVO> list = dao.select();
		//ArrayList<MangoEatdealVO> list = dao.select(startCount,endCount);
		
		JsonObject jobject = new JsonObject(); //MangoEatdealVO��ü
		JsonArray jarray = new JsonArray(); //ArrayList����
		Gson gson = new Gson(); //�Ľ�
		
		for(MangoEatdealVO vo : list){
			JsonObject jo = new JsonObject();
			jo.addProperty("ename", vo.getEname());
			jo.addProperty("region", vo.getRegion());
			jo.addProperty("menu", vo.getMenu());
			jo.addProperty("eimage1", vo.getEimage1());
			jo.addProperty("esimage1", vo.getEsimage1());
			
			jarray.add(jo);
		} 
				
		jobject.add("list",jarray); 
		
		jobject.addProperty("dbCount", dbCount);
		jobject.addProperty("pageSize", pageSize);
		jobject.addProperty("rpage", reqPage);
		
		return gson.toJson(jobject); //���⿡ �ѱ��� ���ԵǾ������� ���ڵ��� ������ produces �����߰�.
	}
	
	
	
	
	
	
	/**
	 * admin_eatdeal_content.do
	 */
	@RequestMapping(value = "/admin_eatdeal_content.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_content(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB�� �����ʿ��� ����
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid); //������ �޼ҵ� ȣ��
		
		//if(vo != null){
		//	dao.updateHits(nid);
		//}
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_content");
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_delete.do
	 */
	@RequestMapping(value = "/admin_eatdeal_delete.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_delete(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		mv.addObject("eid", eid);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_delete");
		
		return mv;
	}
	
	/**
	 * admin_eatdeal_delete_check.do
	 */
	@RequestMapping(value="/admin_eatdeal_delete_check.do", method=RequestMethod.POST)
	public ModelAndView admin_eatdeal_delete_check(String eid, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
	//	System.out.println("eid="+eid);
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //�����ʿ���!
		
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid);
		
		//int result = dao.delete(nid);
		int result = eatdealService.getDeleteResult(eid);
		if(result == 1){
			//������ �ִ� �Խñ��� ��� �Խñ۰� �Բ� upload ������ ���ϵ� ����
//			if(vo.getNsfile() != null) {
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File old_file = new File(path + vo.getNsfile());
//				if(old_file.exists()) {
//					old_file.delete();
//				}
//			}
			fileService.fileDelete(vo, request);//���� �ּ�ó���� �ڵ带 ó���ϴ� ������ �޼ҵ�
			
			mv.setViewName("redirect:/admin_eatdeal_list.do");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_list.do : Eatdeal ��ü����Ʈ
	 */
	@RequestMapping(value = "/admin_eatdeal_list.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_list(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		MangoEatdealVO vo = eatdealService.getContent(eid); //������ �޼ҵ� ȣ��
		
		mv.addObject("vo", vo);
		
		
		ArrayList<MangoEatdealVO> list = eatdealService.getList();
		
		mv.addObject("list", list);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_list");
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_update.do : eatdeal ����ȭ��
	 */
	@RequestMapping(value = "/admin_eatdeal_update.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_update(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB�� �����ʿ��� ó��
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_update");
		
		return mv;
	}
	
	/**
	 * admin_eatdeal_update_check.do 
	 */
	@RequestMapping(value="/admin_eatdeal_update_check.do", method=RequestMethod.POST)
	public ModelAndView admin_eatdeal_update_check(MangoEatdealVO vo, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
//		String old_filename = vo.getNsfile(); //����ȭ��(admin_notice_update.jsp)���� hidden���� �Ѿ���� ���� upload ������ ����� ���ϸ�
												//�� ������ ������ �̸� ���� �̸� ������ ���س��´�
		
//		if(!vo.getFile1().getOriginalFilename().equals("")) { //���ο� ������ ������ ���      //�����ʿ��� �����Ͽ� �ּ�ó��
//			UUID uuid = UUID.randomUUID();
//			
//			vo.setNfile(vo.getFile1().getOriginalFilename());
//			vo.setNsfile(uuid + "_" + vo.getFile1().getOriginalFilename());
//		}
//		vo = fileService.update_fileCheck(vo);//���� �ּ�ó���� �ڵ带 ���������� �̵��Ͽ���, �� �޼ҵ� ȣ���� ��
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //�����ʿ��� ó��
		//int result = dao.update(vo);
		int result = eatdealService.getUpdateResult(vo);
		if(result ==1){
			//���ο� ������ upload ������ ������ �� ������ ������ ����
//			if(!vo.getFile1().getOriginalFilename().equals("")) { //���ο� ������ ������ ���
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File new_file = new File(path + vo.getNsfile());
//				vo.getFile1().transferTo(new_file);
//				
//				//���� ������ ���� ��� ����
//				File old_file = new File(path + old_filename);
//				if(old_file.exists()) {
//					old_file.delete();
//				}
//			}
//			fileService.update_filesave(vo, request, old_filename); //���� �ּ�ó���� �ڵ带 �̵���Ų ������ �޼ҵ� ȣ��
			
			mv.setViewName("redirect:/admin_eatdeal_list.do");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_write.do
	 */
	@RequestMapping(value = "/admin_eatdeal_write.do", method = RequestMethod.GET)
	public String admin_eatdeal_write() {
		return "/admin/admin_eatdeal/admin_eatdeal_write";
	}
	
	/**
	 * admin_eatdeal_write_check.do
	 */
	@RequestMapping(value = "/admin_eatdeal_write_check.do", method = RequestMethod.POST)
	public ModelAndView admin_eatdeal_write_check(MangoEatdealVO vo, HttpServletRequest request) throws Exception {
		
//		//������ ���õǾ����� üũ      //�� �κ��� FileServiceImpl.java���� �����Ѵ�
//		if(vo.getFile1().getOriginalFilename().equals("")) {//������ ���õǾ����� ���� ���
//			vo.setNfile("");
//			vo.setNsfile("");// cf) �ڹٿ����� null�� DB������ null�� Ÿ���� �ٸ���. �ڹٿ��� ""�� �־�߸� DB���� null�� �ν��Ѵ�
//		}else {//������ ���õ� ���
//			UUID uuid = UUID.randomUUID();
//			
//			vo.setNfile(vo.getFile1().getOriginalFilename());//DB�� nfile�� ���ε��� ������ �̸��� ���ڵ����ͷ� ��´�
//			vo.setNsfile(uuid+"_"+vo.getFile1().getOriginalFilename());
//		}
		vo = fileService.multiFileCheck(vo); //������ �޼ҵ� ȣ��(���� �ּ�ó�� ������)
		
		ModelAndView mv = new ModelAndView();
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //�����ʿ��� ó��
		//int result = dao.insert(vo);
		int result = eatdealService.getWriteResult(vo);
		if(result == 1){
			
//			//������ �ִ� ��� upload ������ ���� ����  //�ش� �κ� �����ʿ��� ����
//			if(!vo.getFile1().getOriginalFilename().equals("")) {//DB�� nfile�� �����Ͱ� null�� �ƴ� ��츦 ���Ѵ�
//																//�׷��� !vo.getNfile().equals("")�� �����ϴ�
//				
//				//upload ������ ��θ� �������� ����, HttpServletRequest ��ü�� �Ķ���ͷ� �����´�
//				//(��Ŭ������ /resources/upload���� ���� �ٷ� ã�� ���Ѵ�)
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File file = new File(path+vo.getNsfile()); //������� �۾��ϸ� �̸��� nsfile�� 0kb¥�� ����ִ� ������ �����ȴ�
//				vo.getFile1().transferTo(file); //������� �۾��ؾ� ��μ� ���ε��� ������ �����ϰ� ä������ �����ȴ�
//			}
			fileService.multiFileSave(vo, request); //���ڵ带 �̵��� ������ �޼ҵ� ȣ��
			
			//response.sendRedirect("admin_notice_list.jsp");
			mv.setViewName("redirect:/admin_eatdeal_list.do");
		}else{
			//response.sendRedirect("../errorPage.jsp");
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_purchase.do : eatdeal ����ȭ��
	 */
	@RequestMapping(value = "/admin_eatdeal_purchase.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_purchase(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB�� �����ʿ��� ó��
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_purchase");
		
		return mv;
	}
	
	/**
	 * admin_eatdeal_purchase_check.do 
	 */
	@RequestMapping(value="/admin_eatdeal_purchase_check.do", method=RequestMethod.POST)
	public ModelAndView admin_eatdeal_purchase_check(String eid, HttpServletRequest request) throws Exception {
	//	System.out.println("eid="+eid);
		ModelAndView mv = new ModelAndView();
		
	//	MangoEatdealVO vo = eatdealService.getContent(eid);
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //�����ʿ��� ó��
		//int result = dao.update(vo);
		int result = eatdealService.getPurchaseResult(eid);
		if(result == 1){

			
			mv.setViewName("redirect:/admin_eatdeal_list.do");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	
	
	/**
	 * eatdeal_list.do : Eatdeal ��ü����Ʈ
	 */
	@RequestMapping(value = "/eatdeal_list.do", method = RequestMethod.GET)
	public ModelAndView eatdeal_list(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		MangoEatdealVO vo = eatdealService.getContent(eid); //������ �޼ҵ� ȣ��
		
		mv.addObject("vo", vo);
		
		
		ArrayList<MangoEatdealVO> list = eatdealService.getList();
		
		mv.addObject("list", list);
		mv.setViewName("/eatdeal/eatdeal_list");
		
		return mv;
	}
	
	/**
	 * eatdeal_purchase.do : eatdeal ����ȭ��
	 */
	@RequestMapping(value = "/eatdeal_purchase.do", method = RequestMethod.GET)
	public ModelAndView eatdeal_purchase(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB�� �����ʿ��� ó��
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/eatdeal/eatdeal_purchase");
		
		return mv;
	}
	
	/**
	 * eatdeal_purchase_check.do 
	 */
	@RequestMapping(value="/eatdeal_purchase_check.do", method=RequestMethod.POST)
	public ModelAndView eatdeal_purchase_check(String eid, HttpServletRequest request) throws Exception {
	//	System.out.println("eid="+eid);
		ModelAndView mv = new ModelAndView();
		
	//	MangoEatdealVO vo = eatdealService.getContent(eid);
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //�����ʿ��� ó��
		//int result = dao.update(vo);
		int result = eatdealService.getPurchaseResult(eid);
		if(result == 1){

			
			mv.setViewName("redirect:/eatdeal_list.do");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	/**
	 * eatdeal_content.do
	 */
	@RequestMapping(value = "/eatdeal_content.do", method = RequestMethod.GET)
	public ModelAndView eatdeal_content(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB�� �����ʿ��� ����
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid); //������ �޼ҵ� ȣ��
		
		//if(vo != null){
		//	dao.updateHits(nid);
		//}
		
		mv.addObject("vo", vo);
		mv.setViewName("/eatdeal/eatdeal_content");
		
		return mv;
	}
	
}
