package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mangoplate.dao.MangoRestDAO;
import com.mangoplate.vo.MangoRestVO;


@Service
public class RestaurantServiceImpl implements RestaurantService{
	
	@Autowired
	private MangoRestDAO restaurantDao;
	
	/**
	 * ���� ó��
	 */
	@Override
	public int getDelete(String rid) {
		return restaurantDao.delete(rid);
	}
	
	/**
	 * ����ó��
	 */
	@Override
	public int getUpdate(MangoRestVO vo) {
		return restaurantDao.update(vo);
	}
	
	/**
	 * ��ȸ�� ������Ʈ
	 */
	@Override
	public void getUpdateHits(String rid) {
		restaurantDao.updateHits(rid);
	}
	
	/**
	 * �Խñ� ����
	 */
	@Override
	public int getWriteResult(MangoRestVO vo) {
		return restaurantDao.insert(vo);
	}
	
	/**
	 * �Ĵ� �󼼺���
	 */
	@Override
	public MangoRestVO getContent(String rid) {
		return restaurantDao.select(rid);
	}		
	
	/**
	 * �Ĵ� ��ü �ο�
	 */
	@Override
	public int getTotalCount() {
		return restaurantDao.totalCount();
	}
	
	/**
	 * �Ĵ� ��ü ����Ʈ
	 */
	@Override
	public ArrayList<MangoRestVO> getList(int startCount, int endCount){
		
		//ArrayList<MangoRestVO> list = restaurantDao.select(startCount, endCount);
		
		return restaurantDao.select(startCount, endCount);
	}

}









