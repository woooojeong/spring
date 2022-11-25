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
	 * totalCount() : 페이징처리 전체 로우수 가져오기
	 */
	public int totalCount() {
		return sqlSession.selectOne("mapper.restaurant.totalcount");
	}
	
	/**
	 * delete : 게시글 삭제
	 */
	public int delete(String rid) {
		return sqlSession.delete("mapper.restaurant.delete",rid);
	}
	
	/**
	 * update : 게시글 수정 
	 */
	public int update(MangoRestVO vo) {
		return sqlSession.update("mapper.restaurant.update",vo);
	}
	
	/**
	 * updateHits : 조회수 업데이트
	 */
	public int updateHits(String rid) {
		return sqlSession.update("mapper.restaurant.updatehits",rid);
	}
	
	/**
	 * select() : 게시글 상세 보기
	 */
	public MangoRestVO select(String rid) {
		return sqlSession.selectOne("mapper.restaurant.content",rid);
	}
	
	/**
	 * select : 게시글 전체 리스트
	 */
	public ArrayList<MangoRestVO> select(int startCount, int endCount){
		Map<String,String> param = new HashMap<String,String>();
		param.put("start", String.valueOf(startCount));
		param.put("end",String.valueOf(endCount));
		
		List<MangoRestVO> list = sqlSession.selectList("mapper.restaurant.list", param);
		
		return (ArrayList<MangoRestVO>)list;
	}
	
	
	/**
	 * insert : 게시글 등록
	 */
	public int insert(MangoRestVO vo) {
		return sqlSession.insert("mapper.restaurant.insert",vo);
	}
}
