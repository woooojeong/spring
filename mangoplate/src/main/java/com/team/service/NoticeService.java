package com.team.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.mangoplate.vo.MangoNoticeVO;

@Service
public interface NoticeService {
	
	int getTotalCount(); //1. 공지사항 전체 로우수(0906)
	ArrayList<MangoNoticeVO> getList(); //1. 공지사항 전체 리스트
	
	MangoNoticeVO getContent(String nid);//2. 공지사항 상세 보기
	void getUpdateHits(String nid);//2. 공지사항 조회수 업데이트
	
	int getWriteResult(MangoNoticeVO vo); //3. 공지사항 글쓰기 처리
	int getUpdateResult(MangoNoticeVO vo); //3. 공지사항 수정 처리
	int getDeleteResult(String nid); //3. 공지사항 삭제 처리
	
}
