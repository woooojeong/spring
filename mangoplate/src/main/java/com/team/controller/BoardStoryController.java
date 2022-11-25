package com.team.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoBoardStoryVO;
import com.team.service.BoardStoryServiceImpl;
import com.team.service.FileServiceImpl;

@Controller
public class BoardStoryController {
	@Autowired
	private BoardStoryServiceImpl boardStoryService;

	@Autowired
	private FileServiceImpl fileService;

	/**
	 * board_delete_check.do : 게시판 삭제 처리
	 */
	@RequestMapping(value = "/boardstory_delete_check.do", method = RequestMethod.POST)
	public ModelAndView boardstory_delete_check(String sid, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		MangoBoardStoryVO vo = boardStoryService.getContent(sid);
		int result = boardStoryService.getDelete(sid);

		if (result == 1) {
			fileService.fileDelete(vo, request);
			mv.setViewName("redirect:/boardstory_list.do");
		} else {
			mv.setViewName("error_page");
		}

		return mv;
	}

	/**
	 * board_update_check.do : 게시판 수정 처리
	 */
	@RequestMapping(value = "/boardstory_update_check.do", method = RequestMethod.POST)
	public ModelAndView boardstory_update_check(MangoBoardStoryVO vo, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		String old_filename = vo.getSsimage();

		vo = fileService.update_fileCheck(vo);
		int result = boardStoryService.getUpdate(vo);

		if (result == 1) {
			fileService.update_filesave(vo, request, old_filename);
			mv.setViewName("redirect:/boardstory_list.do");
		} else {
			mv.setViewName("error_page");
		}

		return mv;
	}

	/**
	 * boardstory_write_check.do 호출
	 */
	@RequestMapping(value = "/boardstory_write_check.do", method = RequestMethod.POST)
	public ModelAndView boardstory_write_check(MangoBoardStoryVO vo, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		// MangoBoardStoryDAO dao = new MangoBoardStoryDAO();
		vo = fileService.fileCheck(vo);
		int result = boardStoryService.getWriteResult(vo);

		if (result == 1) {
			fileService.fileSave(vo, request);
			mv.setViewName("redirect:/boardstory_list.do"); // DB연동을 Controller에서 진행하므로, 새로운 연결을 수행!!
		} else {
			mv.setViewName("error_page");
		}
		return mv;
	}

	/**
	 * boardstory_write.do 호출
	 */
	@RequestMapping(value = "/boardstory_write.do", method = RequestMethod.GET)
	public String boardstory_write() {
		return "/boardstory/boardstory_write";
	}

	/**
	 * board_delete.do : 게시판 삭제 화면
	 */
	@RequestMapping(value = "/boardstory_delete.do", method = RequestMethod.GET)
	public ModelAndView board_delete(String sid) {
		ModelAndView mv = new ModelAndView();

		mv.addObject("sid", sid);
		mv.setViewName("/boardstory/boardstory_delete");

		return mv;
	}

	/**
	 * board_update.do : 게시판 수정 화면
	 */
	@RequestMapping(value = "/boardstory_update.do", method = RequestMethod.GET)
	public ModelAndView boardstory_update(String sid) {
		ModelAndView mv = new ModelAndView();

		MangoBoardStoryVO vo = boardStoryService.getContent(sid);

		mv.addObject("vo", vo);
		mv.setViewName("/boardstory/boardstory_update");

		return mv;
	}

	/**
	 * boardstory_content.do 호출
	 */
	@RequestMapping(value = "/boardstory_content.do", method = RequestMethod.GET)
	public ModelAndView boardstory_content(String sid) {
		ModelAndView mv = new ModelAndView();

		MangoBoardStoryVO vo = boardStoryService.getContent(sid);
		if (vo != null) {
			boardStoryService.getUpdateHits(sid);
		}
		mv.addObject("vo", vo);
		mv.setViewName("/boardstory/boardstory_content");

		return mv;
	}

	/**
	 * boardstory_list.do 호출
	 */
	@RequestMapping(value = "/boardstory_list.do", method = RequestMethod.GET)
	public ModelAndView boardstory_list() {
		ModelAndView mv = new ModelAndView();
		ArrayList<MangoBoardStoryVO> list = boardStoryService.getList();
		mv.addObject("list", list);
		mv.setViewName("/boardstory/boardstory_list");
		return mv;
	}

}
