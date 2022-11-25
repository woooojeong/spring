package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.MangoRestVO;

public interface RestaurantService {
	int getTotalCount();				//식당 전체 로우수
	ArrayList<MangoRestVO> getList(int startCount, int endCount);  	//식당 전체 리스트
	int getWriteResult(MangoRestVO vo);		//식당 등록하기
	MangoRestVO getContent(String rid);  //식당 상세보기
	void getUpdateHits(String rid);			//식당 조회수 업데이트
	int getUpdate(MangoRestVO vo);		//식당 수정 처리
	int getDelete(String rid);			//식당 삭제 처리
}
