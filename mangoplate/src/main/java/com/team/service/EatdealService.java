package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.MangoEatdealVO;

public interface EatdealService {
	int getTotalCount(); //1. 게시글 전체 로우수(0906)
	ArrayList<MangoEatdealVO> getList(); //1. 게시글 전체 리스트
	
	MangoEatdealVO getContent(String nid);//2. 게시글 상세 보기
	
	int getWriteResult(MangoEatdealVO vo); //3. 게시글 글쓰기 처리
	int getUpdateResult(MangoEatdealVO vo); //3. 게시글 수정 처리
	int getDeleteResult(String nid); //3. 게시글 삭제 처리
	int getPurchaseResult(String eid);
}
