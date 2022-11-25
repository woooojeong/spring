package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mangoplate.dao.MangoReviewDAO;
import com.mangoplate.vo.MangoReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService{
	
	@Autowired
	private MangoReviewDAO reviewDao;
	
	@Override
	public int getReview(MangoReviewVO vo) {
		
		return reviewDao.insert(vo);
	}
	
	@Override
	public ArrayList<MangoReviewVO> getReviewList(String vname) {
		
		return reviewDao.select(vname);
	}
	
}
