package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.dao.MangoMemberDAO;
import com.mangoplate.vo.MangoMemberVO;
import com.mangoplate.vo.SessionVO;

public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MangoMemberDAO memberDao;
	
	/**
	 * 마이페이지 - 회원정보 수정
	 */
	
	  @Override 
	  public int getUpdate(MangoMemberVO vo) { 
		  return memberDao.mypage_update(vo); 
	  }
	 
	
	/**
	 * 마이페이지 - 회원 정보
	 */
	
	  @Override 
	  public MangoMemberVO getMemberMypage(String id) { 
		  return memberDao.selectMypage(id); }
	 
	
	/**
	 * 아이디 중복 체크
	 */
	public int getIdCheck(String id) {
		return memberDao.idCheck(id);
	}
	
	/**
	 * 회원 상세 정보
	 */
	@Override
	public MangoMemberVO getMemberContent(String id) {
		return memberDao.select(id);
	}
	
	
	/**
	 * 회원 전체수
	 */
	@Override
	public int getTotalCount() {
		return memberDao.totalCount();
	}
	
	/**
	 * 회원 전체 리스트
	 */
	@Override
	public ArrayList<MangoMemberVO> getMemberList(int startCount, int endCount){	
		ArrayList<MangoMemberVO> list = memberDao.selectAll(startCount, endCount);
		return list;
	}
	
	/** 
	 * 회원가입 처리
	 */
	@Override
	public int getJoinResult(MangoMemberVO vo) {	
		return memberDao.insert(vo);
	}
	
	/**
	 * 로그인 처리
	 */
	@Override
	public SessionVO getLoginResult(MangoMemberVO vo) {	
		return memberDao.select(vo);
	}
	
	/**
	 * 마이페이지
	 */
	public ArrayList<MangoMemberVO> getList() {
		ArrayList<MangoMemberVO> list = memberDao.select();
		return list;
	}
	
}
