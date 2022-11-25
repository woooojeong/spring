package com.mangoplate.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoRestVO;

public class MangoRestDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	/*
	 * totalCount() : ����¡ó�� ��ü �ο�� ��������
	 */
	public int totalCount() {
		return sqlSession.selectOne("mapper.restaurant.totalcount");
	}
	
	/**
	 * delete : �Խñ� ����
	 */
	public int delete(String rid) {
		return sqlSession.delete("mapper.restaurant.delete",rid);
	}
	
	/**
	 * update : �Խñ� ���� 
	 */
	public int update(MangoRestVO vo) {
		return sqlSession.update("mapper.restaurant.update",vo);
	}
	
	/**
	 * updateHits : ��ȸ�� ������Ʈ
	 */
	public int updateHits(String rid) {
		return sqlSession.update("mapper.restaurant.updatehits",rid);
	}
	
	/**
	 * select() : �Խñ� �� ����
	 */
	public MangoRestVO select(String rid) {
		return sqlSession.selectOne("mapper.restaurant.content",rid);
	}
	
	/**
	 * select : �Խñ� ��ü ����Ʈ
	 */
	public ArrayList<MangoRestVO> select(int startCount, int endCount){
		Map<String,String> param = new HashMap<String,String>();
		param.put("start", String.valueOf(startCount));
		param.put("end",String.valueOf(endCount));
		
		List<MangoRestVO> list = sqlSession.selectList("mapper.restaurant.list", param);
		
		return (ArrayList<MangoRestVO>)list;
	}
	
	
	/**
	 * insert : �Խñ� ���
	 */
	public int insert(MangoRestVO vo) {
		return sqlSession.insert("mapper.restaurant.insert",vo);
	}
}
