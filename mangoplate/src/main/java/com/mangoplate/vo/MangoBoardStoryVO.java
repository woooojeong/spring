package com.mangoplate.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MangoBoardStoryVO {
	int rno, shits;
	String sid, editer, stitle, sstitle, sdate, scontent, simage, ssimage;
	CommonsMultipartFile file1;
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getShits() {
		return shits;
	}
	public void setShits(int shits) {
		this.shits = shits;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getEditer() {
		return editer;
	}
	public void setEditer(String editer) {
		this.editer = editer;
	}
	public String getStitle() {
		return stitle;
	}
	public void setStitle(String stitle) {
		this.stitle = stitle;
	}
	public String getSstitle() {
		return sstitle;
	}
	public void setSstitle(String sstitle) {
		this.sstitle = sstitle;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getScontent() {
		return scontent;
	}
	public void setScontent(String scontent) {
		this.scontent = scontent;
	}
	public String getSimage() {
		return simage;
	}
	public void setSimage(String simage) {
		this.simage = simage;
	}
	public String getSsimage() {
		return ssimage;
	}
	public void setSsimage(String ssimage) {
		this.ssimage = ssimage;
	}
	public CommonsMultipartFile getFile1() {
		return file1;
	}
	public void setFile1(CommonsMultipartFile file1) {
		this.file1 = file1;
	}
	
	
}
