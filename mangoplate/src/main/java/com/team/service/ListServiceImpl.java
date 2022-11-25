package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.dao.MangoListDAO;
import com.mangoplate.vo.MangoRestVO;

public class ListServiceImpl implements ListService{
	
	@Autowired
	private MangoListDAO listDao;
	
	public ArrayList<MangoRestVO> getList(String rcategory){
		ArrayList<MangoRestVO> list = listDao.select(rcategory);
		
		return list;
	}
	
	public MangoRestVO getContent(String rid) {
		return listDao.selectDetail(rid);
	}
	
}//ListServiceImpl-end
