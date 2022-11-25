package com.mangoplate.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MangoReviewVO {
	String vid, vname, vcontent, vfile, vsfile, vdate;
	int vrate, vhits;
	CommonsMultipartFile file1;
	public String getVid() {
		return vid;
	}
	public void setVid(String vid) {
		this.vid = vid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getVcontent() {
		return vcontent;
	}
	public void setVcontent(String vcontent) {
		this.vcontent = vcontent;
	}
	public String getVfile() {
		return vfile;
	}
	public void setVfile(String vfile) {
		this.vfile = vfile;
	}
	public String getVsfile() {
		return vsfile;
	}
	public void setVsfile(String vsfile) {
		this.vsfile = vsfile;
	}
	public String getVdate() {
		return vdate;
	}
	public void setVdate(String vdate) {
		this.vdate = vdate;
	}
	public int getVrate() {
		return vrate;
	}
	public void setVrate(int vrate) {
		this.vrate = vrate;
	}
	public int getVhits() {
		return vhits;
	}
	public void setVhits(int vhits) {
		this.vhits = vhits;
	}
	public CommonsMultipartFile getFile1() {
		return file1;
	}
	public void setFile1(CommonsMultipartFile file1) {
		this.file1 = file1;
	}
	
}
