package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.MangoReviewVO;

public interface ReviewService {

	int getReview(MangoReviewVO vo);
	ArrayList<MangoReviewVO> getReviewList(String vname);
}
