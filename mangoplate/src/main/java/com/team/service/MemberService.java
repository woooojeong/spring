package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.MangoMemberVO;
import com.mangoplate.vo.SessionVO;

public interface MemberService {	
	SessionVO getLoginResult(MangoMemberVO vo);  //로그인 처리 메소드
	int getJoinResult(MangoMemberVO vo);	 //회원가입 처리 메소드
	int getTotalCount();	//전체 회원수 
	ArrayList<MangoMemberVO> getMemberList(int startCount, int endCount);  //회원 전체 리스트
	MangoMemberVO getMemberContent(String id);	//회원 상세정보
	MangoMemberVO getMemberMypage(String id);
	int getUpdate(MangoMemberVO vo); //회원정보 수정
	
}
