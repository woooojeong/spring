package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.MangoEatdealVO;

public interface EatdealService {
	int getTotalCount(); //1. �Խñ� ��ü �ο��(0906)
	ArrayList<MangoEatdealVO> getList(); //1. �Խñ� ��ü ����Ʈ
	
	MangoEatdealVO getContent(String nid);//2. �Խñ� �� ����
	
	int getWriteResult(MangoEatdealVO vo); //3. �Խñ� �۾��� ó��
	int getUpdateResult(MangoEatdealVO vo); //3. �Խñ� ���� ó��
	int getDeleteResult(String nid); //3. �Խñ� ���� ó��
	int getPurchaseResult(String eid);
}
