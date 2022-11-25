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
	 * ���������� - ȸ������ ����
	 */
	
	  @Override 
	  public int getUpdate(MangoMemberVO vo) { 
		  return memberDao.mypage_update(vo); 
	  }
	 
	
	/**
	 * ���������� - ȸ�� ����
	 */
	
	  @Override 
	  public MangoMemberVO getMemberMypage(String id) { 
		  return memberDao.selectMypage(id); }
	 
	
	/**
	 * ���̵� �ߺ� üũ
	 */
	public int getIdCheck(String id) {
		return memberDao.idCheck(id);
	}
	
	/**
	 * ȸ�� �� ����
	 */
	@Override
	public MangoMemberVO getMemberContent(String id) {
		return memberDao.select(id);
	}
	
	
	/**
	 * ȸ�� ��ü��
	 */
	@Override
	public int getTotalCount() {
		return memberDao.totalCount();
	}
	
	/**
	 * ȸ�� ��ü ����Ʈ
	 */
	@Override
	public ArrayList<MangoMemberVO> getMemberList(int startCount, int endCount){	
		ArrayList<MangoMemberVO> list = memberDao.selectAll(startCount, endCount);
		return list;
	}
	
	/** 
	 * ȸ������ ó��
	 */
	@Override
	public int getJoinResult(MangoMemberVO vo) {	
		return memberDao.insert(vo);
	}
	
	/**
	 * �α��� ó��
	 */
	@Override
	public SessionVO getLoginResult(MangoMemberVO vo) {	
		return memberDao.select(vo);
	}
	
	/**
	 * ����������
	 */
	public ArrayList<MangoMemberVO> getList() {
		ArrayList<MangoMemberVO> list = memberDao.select();
		return list;
	}
	
}
