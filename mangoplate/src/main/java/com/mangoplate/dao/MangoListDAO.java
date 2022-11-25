package com.mangoplate.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mangoplate.vo.MangoRestVO;

@Repository
public class MangoListDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * select(String rcategory) : �󼼸���Ʈ ���
	 */
	public ArrayList<MangoRestVO> select(String rcategory) {
		List<MangoRestVO> list = sqlSession.selectList("mapper.list.listAll", rcategory);
		return (ArrayList<MangoRestVO>)list;
	}
	
	/**
	 * select(String rid) : �Ĵ� �������� ���
	 */
	public MangoRestVO selectDetail(String rid) {
		return sqlSession.selectOne("mapper.list.content", rid);
	}
	
}
