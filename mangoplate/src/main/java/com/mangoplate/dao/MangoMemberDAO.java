package com.mangoplate.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mangoplate.vo.MangoBoardStoryVO;
import com.mangoplate.vo.MangoMemberVO;
import com.mangoplate.vo.MangoRestVO;
import com.mangoplate.vo.SessionVO;

@Repository
public class MangoMemberDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * update :  ���������� ȸ������ ���� 
	 */
	public int mypage_update(MangoMemberVO vo) {
		return sqlSession.update("mapper.member.mypage_update",vo);
	}
	
	/**
	 * selectMypage : ���������� ȸ������ ���
	 */
	
	  public MangoMemberVO selectMypage(String id) { 
		  return sqlSession.selectOne("mapper.member.mypage", id); 
	  }
	 
	
	/**
	 * totalCount : ��ü �ο�� ���
	 */
	public int totalCount() {
		return sqlSession.selectOne("mapper.member.total_count");
	}
	
	/**
	 * idCheck : ���̵� �ߺ�üũ
	 */
	public int idCheck(String id) {
		return sqlSession.selectOne("mapper.member.idcheck", id);
	}
	
	/**
	 * selectContent : ȸ�� �� ����
	 */
	public MangoMemberVO select(String id) {
		return sqlSession.selectOne("mapper.member.content", id);
	}
	
	/**
	 * selectAll : ȸ�� ��ü ����Ʈ
	 */
	public ArrayList<MangoMemberVO> selectAll(int startCount, int endCount){
		
		//Map Ÿ���� ��ü�� �����ϰ� start, end��� Ű������ �Ķ���͸� �ѱ��.
		Map<String, String> param = new HashMap<String,String>();
		param.put("start", String.valueOf(startCount));
		param.put("end", String.valueOf(endCount));
		
		List<MangoMemberVO> list = sqlSession.selectList("mapper.member.listAll", param);
		
		return (ArrayList<MangoMemberVO>)list;
	}
	
	/**
	 * select : �α���
	 */
	public SessionVO select(MangoMemberVO vo) {
		return sqlSession.selectOne("mapper.member.login", vo);
	}
	
	/**
	 * ����������
	 */
	public ArrayList<MangoMemberVO> select(){
		//�Ķ���͸� Map���� �����ϱ�
		//Map<String, Integer> param = new HashMap<String, Integer>();
		//param.put("start", startCount);
		//param.put("end", endCount);

		List<MangoMemberVO> list = sqlSession.selectList("mapper.member.list");
		return (ArrayList<MangoMemberVO>)list;
	}
	
	
	/**
	 * insert : ȸ������ 
	 */
	public int insert(MangoMemberVO vo) {
		//sqlSession ��ü�� �޼ҵ带 ȣ���Ͽ� �������� ������
		return sqlSession.insert("mapper.member.join", vo);
	}

}
