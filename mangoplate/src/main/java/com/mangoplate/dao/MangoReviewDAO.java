package com.mangoplate.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoRestVO;
import com.mangoplate.vo.MangoReviewVO;

public class MangoReviewDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * insert : 게시글 등록
	 */
	public int insert(MangoReviewVO vo) {
	
		return sqlSession.insert("mapper.review.regist", vo);
	}
	
	/**
	 * select : 리뷰 출력
	 */
	public ArrayList<MangoReviewVO> select(String vname) {
		List<MangoReviewVO> list = sqlSession.selectList("mapper.review.reviewAll", vname);
		return (ArrayList<MangoReviewVO>)list;
	}
}
