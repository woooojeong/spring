package com.team.service;

import java.util.ArrayList;

import com.mangoplate.dao.MangoNoticeDAO;
import com.mangoplate.vo.MangoNoticeVO;

public class NoticeServiceImpl implements NoticeService {
	/**
	 * �������� ��ü �ο��
	 */
	public int getTotalCount() {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		int dbCount = dao.totalCount();
		
		return dbCount;
	}
	
	/**
	 * �������� ��ü ����Ʈ
	 */
	public ArrayList<MangoNoticeVO> getList(){
		MangoNoticeDAO dao = new MangoNoticeDAO();
		ArrayList<MangoNoticeVO> list = dao.select();
		
		return list;
	}
	
	
	/**
	 * �������� �󼼺���
	 */
	public MangoNoticeVO getContent(String nid) {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		MangoNoticeVO vo = dao.select(nid);
		
		return vo;
	}
	
	/**
	 * �������� ��ȸ�� ������Ʈ
	 */
	public void getUpdateHits(String nid) {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		dao.updateHits(nid);
	}
	
	
	/**
	 * �������� �۾���
	 */
	public int getWriteResult(MangoNoticeVO vo) {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		int result = dao.insert(vo);
		
		return result;
	}
	
	
	/**
	 * �������� �����ϱ�
	 */
	public int getUpdateResult(MangoNoticeVO vo) {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		int result = dao.update(vo);
		
		return result;
	}
	
	
	/**
	 * �������� �����ϱ�
	 */
	public int getDeleteResult(String nid) {
		MangoNoticeDAO dao = new MangoNoticeDAO();
		int result = dao.delete(nid);
		
		return  result;
	}
}
