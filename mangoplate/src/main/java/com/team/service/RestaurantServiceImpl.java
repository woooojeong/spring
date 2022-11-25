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
	 * 삭제 처리
	 */
	@Override
	public int getDelete(String rid) {
		return restaurantDao.delete(rid);
	}
	
	/**
	 * 수정처리
	 */
	@Override
	public int getUpdate(MangoRestVO vo) {
		return restaurantDao.update(vo);
	}
	
	/**
	 * 조회수 업데이트
	 */
	@Override
	public void getUpdateHits(String rid) {
		restaurantDao.updateHits(rid);
	}
	
	/**
	 * 게시글 쓰기
	 */
	@Override
	public int getWriteResult(MangoRestVO vo) {
		return restaurantDao.insert(vo);
	}
	
	/**
	 * 식당 상세보기
	 */
	@Override
	public MangoRestVO getContent(String rid) {
		return restaurantDao.select(rid);
	}		
	
	/**
	 * 식당 전체 로우
	 */
	@Override
	public int getTotalCount() {
		return restaurantDao.totalCount();
	}
	
	/**
	 * 식당 전체 리스트
	 */
	@Override
	public ArrayList<MangoRestVO> getList(int startCount, int endCount){
		
		//ArrayList<MangoRestVO> list = restaurantDao.select(startCount, endCount);
		
		return restaurantDao.select(startCount, endCount);
	}

}









