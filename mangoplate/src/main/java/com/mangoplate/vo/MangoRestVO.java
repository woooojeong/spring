package com.mangoplate.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MangoRestVO {
	int rno, rhits;
	String rid, rname, raddr, rcontact, rprice, rcategory, rdate, rimage, rsimage;
	CommonsMultipartFile file1;
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getRhits() {
		return rhits;
	}
	public void setRhits(int rhits) {
		this.rhits = rhits;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRaddr() {
		return raddr;
	}
	public void setRaddr(String raddr) {
		this.raddr = raddr;
	}
	public String getRcontact() {
		return rcontact;
	}
	public void setRcontact(String rcontact) {
		this.rcontact = rcontact;
	}
	public String getRprice() {
		return rprice;
	}
	public void setRprice(String rprice) {
		this.rprice = rprice;
	}
	public String getRcategory() {
		return rcategory;
	}
	public void setRcategory(String rcategory) {
		this.rcategory = rcategory;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRimage() {
		return rimage;
	}
	public void setRimage(String rimage) {
		this.rimage = rimage;
	}
	public String getRsimage() {
		return rsimage;
	}
	public void setRsimage(String rsimage) {
		this.rsimage = rsimage;
	}
	public CommonsMultipartFile getFile1() {
		return file1;
	}
	public void setFile1(CommonsMultipartFile file1) {
		this.file1 = file1;
	}

}
