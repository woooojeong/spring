package com.team.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.mangoplate.vo.MangoNoticeVO;

@Service
public interface NoticeService {
	
	int getTotalCount(); //1. �������� ��ü �ο��(0906)
	ArrayList<MangoNoticeVO> getList(); //1. �������� ��ü ����Ʈ
	
	MangoNoticeVO getContent(String nid);//2. �������� �� ����
	void getUpdateHits(String nid);//2. �������� ��ȸ�� ������Ʈ
	
	int getWriteResult(MangoNoticeVO vo); //3. �������� �۾��� ó��
	int getUpdateResult(MangoNoticeVO vo); //3. �������� ���� ó��
	int getDeleteResult(String nid); //3. �������� ���� ó��
	
}
