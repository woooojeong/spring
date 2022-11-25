package com.team.service;

import java.util.ArrayList;

import com.mangoplate.dao.MangoEatdealDAO;
import com.mangoplate.vo.MangoEatdealVO;

public class EatdealServiceImpl implements EatdealService {
	/**
	 * �������� ��ü �ο��
	 */
	public int getTotalCount() {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		int dbCount = dao.totalCount();
		
		return dbCount;
	}
	
	/**
	 * ��ü ����Ʈ
	 */
	public ArrayList<MangoEatdealVO> getList(){
		MangoEatdealDAO dao = new MangoEatdealDAO();
		ArrayList<MangoEatdealVO> list = dao.select();
		
		return list;
	}
	
	
	/**
	 * �󼼺���
	 */
	public MangoEatdealVO getContent(String eid) {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		MangoEatdealVO vo = dao.select(eid);
		
		return vo;
	}
	
	/**
	 * �۾���
	 */
	public int getWriteResult(MangoEatdealVO vo) {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		int result = dao.insert(vo);
		
		return result;
	}
	
	
	/**
	 * �����ϱ�
	 */
	public int getUpdateResult(MangoEatdealVO vo) {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		int result = dao.update(vo);
		
		return result;
	}
	
	
	/**
	 * �����ϱ�
	 */
	public int getDeleteResult(String eid) {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		int result = dao.delete(eid);
		
		return  result;
	}
	
	
	/**
	 * �����ϱ�
	 */
	public int getPurchaseResult(String eid) {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		int result = dao.purchase(eid);
		return result;
	}
}
