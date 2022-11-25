package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.MangoRestVO;

public interface RestaurantService {
	int getTotalCount();				//�Ĵ� ��ü �ο��
	ArrayList<MangoRestVO> getList(int startCount, int endCount);  	//�Ĵ� ��ü ����Ʈ
	int getWriteResult(MangoRestVO vo);		//�Ĵ� ����ϱ�
	MangoRestVO getContent(String rid);  //�Ĵ� �󼼺���
	void getUpdateHits(String rid);			//�Ĵ� ��ȸ�� ������Ʈ
	int getUpdate(MangoRestVO vo);		//�Ĵ� ���� ó��
	int getDelete(String rid);			//�Ĵ� ���� ó��
}
