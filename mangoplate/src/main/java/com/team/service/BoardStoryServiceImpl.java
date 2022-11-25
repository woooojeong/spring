package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mangoplate.dao.MangoBoardStoryDAO;
import com.mangoplate.vo.MangoBoardStoryVO;

@Service
public class BoardStoryServiceImpl implements BoardStoryService {
	@Autowired
	private MangoBoardStoryDAO boardStoryDao;

	/**
	 * 게시글 전체 로우
	 */
	@Override
	public int getTotalCount() {
		return boardStoryDao.totalCount();
	}

	/**
	 * 수정처리
	 */
	@Override
	public int getUpdate(MangoBoardStoryVO vo) {
		return boardStoryDao.update(vo);
	}

	/**
	 * 삭제 처리
	 */
	@Override
	public int getDelete(String sid) {
		return boardStoryDao.delete(sid);
	}

	/**
	 * 조회수 업데이트
	 */
	@Override
	public void getUpdateHits(String sid) {
		boardStoryDao.updateHits(sid);
	}

	/**
	 * 게시글 상세보기
	 */
	@Override
	public MangoBoardStoryVO getContent(String sid) {
		return boardStoryDao.select(sid);
	}

	/**
	 * 게시글 전체 리스트
	 */
	@Override
	public ArrayList<MangoBoardStoryVO> getList() {
		ArrayList<MangoBoardStoryVO> list = boardStoryDao.select();
		return list;
	}

	/**
	 * 게시글 쓰기
	 */
	@Override
	public int getWriteResult(MangoBoardStoryVO vo) {
		return boardStoryDao.insert(vo);
	}
}
