package com.team.service;

import java.util.ArrayList;

import com.mangoplate.dao.MangoNoticeDAO;
import com.mangoplate.vo.MangoNoticeVO;

public class NoticeServiceImpl implements NoticeService {
	/**
	 * 공지사항 전체 로우수
	 */
	public int getTotalCount() {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		int dbCount = dao.totalCount();
		
		return dbCount;
	}
	
	/**
	 * 공지사항 전체 리스트
	 */
	public ArrayList<MangoNoticeVO> getList(){
		MangoNoticeDAO dao = new MangoNoticeDAO();
		ArrayList<MangoNoticeVO> list = dao.select();
		
		return list;
	}
	
	
	/**
	 * 공지사항 상세보기
	 */
	public MangoNoticeVO getContent(String nid) {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		MangoNoticeVO vo = dao.select(nid);
		
		return vo;
	}
	
	/**
	 * 공지사항 조회수 업데이트
	 */
	public void getUpdateHits(String nid) {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		dao.updateHits(nid);
	}
	
	
	/**
	 * 공지사항 글쓰기
	 */
	public int getWriteResult(MangoNoticeVO vo) {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		int result = dao.insert(vo);
		
		return result;
	}
	
	
	/**
	 * 공지사항 수정하기
	 */
	public int getUpdateResult(MangoNoticeVO vo) {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		int result = dao.update(vo);
		
		return result;
	}
	
	
	/**
	 * 공지사항 삭제하기
	 */
	public int getDeleteResult(String nid) {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		int result = dao.delete(nid);
		
		return  result;
	}
}
