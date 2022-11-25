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
	 * select(String rcategory) : 상세리스트 출력
	 */
	public ArrayList<MangoRestVO> select(String rcategory) {
		List<MangoRestVO> list = sqlSession.selectList("mapper.list.listAll", rcategory);
		return (ArrayList<MangoRestVO>)list;
	}
	
	/**
	 * select(String rid) : 식당 상세페이지 출력
	 */
	public MangoRestVO selectDetail(String rid) {
		return sqlSession.selectOne("mapper.list.content", rid);
	}
	
}
