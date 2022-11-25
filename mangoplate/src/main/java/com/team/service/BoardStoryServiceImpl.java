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
	 * �Խñ� ��ü �ο�
	 */
	@Override
	public int getTotalCount() {
		return boardStoryDao.totalCount();
	}

	/**
	 * ����ó��
	 */
	@Override
	public int getUpdate(MangoBoardStoryVO vo) {
		return boardStoryDao.update(vo);
	}

	/**
	 * ���� ó��
	 */
	@Override
	public int getDelete(String sid) {
		return boardStoryDao.delete(sid);
	}

	/**
	 * ��ȸ�� ������Ʈ
	 */
	@Override
	public void getUpdateHits(String sid) {
		boardStoryDao.updateHits(sid);
	}

	/**
	 * �Խñ� �󼼺���
	 */
	@Override
	public MangoBoardStoryVO getContent(String sid) {
		return boardStoryDao.select(sid);
	}

	/**
	 * �Խñ� ��ü ����Ʈ
	 */
	@Override
	public ArrayList<MangoBoardStoryVO> getList() {
		ArrayList<MangoBoardStoryVO> list = boardStoryDao.select();
		return list;
	}

	/**
	 * �Խñ� ����
	 */
	@Override
	public int getWriteResult(MangoBoardStoryVO vo) {
		return boardStoryDao.insert(vo);
	}
}
