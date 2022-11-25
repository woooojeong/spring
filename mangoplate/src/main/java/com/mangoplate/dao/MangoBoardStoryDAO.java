package com.mangoplate.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mangoplate.vo.MangoBoardStoryVO;

@Repository
public class MangoBoardStoryDAO{
	@Autowired
	private SqlSessionTemplate sqlSession;
	/**
	 * update : �Խñ� ���� - mapper.board.update
	 */
	public int update(MangoBoardStoryVO vo) {
		return sqlSession.update("mapper.boardstory.update", vo);
	}
	
	/**
	 * delete : �Խñ� ���� - mapper.board.delete
	 */
	public int delete(String sid) {
		return sqlSession.delete("mapper.boardstory.delete", sid);
	}
	
	/**
	 * totalCount : ��ü �ο�� ��� - mapper.board.totalcount
	 */
	public int totalCount() {
		return sqlSession.selectOne("mapper.boardstory.totalcount");
	}

	/**
	 * updateHits : ��ȸ�� ������Ʈ - mapper.board.updatehits
	 */
	public int updateHits(String sid) {
		return sqlSession.update("mapper.boardstory.updatehits", sid);
	}
	
	/**
	 * insert : �Խñ� ��� - mapper.boardstory.insert
	 */
	public int insert(MangoBoardStoryVO vo) {
		return sqlSession.insert("mapper.boardstory.insert", vo);
	}

	/**
	 * select : �Խñ� �� ���� - mapper.board.content
	 */
	public MangoBoardStoryVO select(String sid) {
		return sqlSession.selectOne("mapper.boardstory.content" ,sid);
	}
	
	/**
	 * select : �����丮 ��ü ����Ʈ(����¡ó��)
	 */
	public ArrayList<MangoBoardStoryVO> select(){
		//�Ķ���͸� Map���� �����ϱ�
		//Map<String, Integer> param = new HashMap<String, Integer>();
		//param.put("start", startCount);
		//param.put("end", endCount);

		List<MangoBoardStoryVO> list = sqlSession.selectList("mapper.boardstory.list");
		return (ArrayList<MangoBoardStoryVO>)list;
	}
}
