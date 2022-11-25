package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.MangoMemberVO;
import com.mangoplate.vo.SessionVO;

public interface MemberService {	
	SessionVO getLoginResult(MangoMemberVO vo);  //�α��� ó�� �޼ҵ�
	int getJoinResult(MangoMemberVO vo);	 //ȸ������ ó�� �޼ҵ�
	int getTotalCount();	//��ü ȸ���� 
	ArrayList<MangoMemberVO> getMemberList(int startCount, int endCount);  //ȸ�� ��ü ����Ʈ
	MangoMemberVO getMemberContent(String id);	//ȸ�� ������
	MangoMemberVO getMemberMypage(String id);
	int getUpdate(MangoMemberVO vo); //ȸ������ ����
	
}
