package com.mangoplate.vo;

import java.util.ArrayList;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MangoEatdealVO {
	String eid, ename, region, packaging, menu, price, scontent, common, eimage1, esimage1, eimage2, esimage2;
	int stock;
	CommonsMultipartFile[] images;
	ArrayList<String> eimages = new ArrayList<String>();  //DB에 저장할 eimage 목록
	ArrayList<String> esimages = new ArrayList<String>();  //DB에 저장할 esimage 목록
	
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getPackaging() {
		return packaging;
	}
	public void setPackaging(String packaging) {
		this.packaging = packaging;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getScontent() {
		return scontent;
	}
	public void setScontent(String scontent) {
		this.scontent = scontent;
	}
	public String getCommon() {
		return common;
	}
	public void setCommon(String common) {
		this.common = common;
	}
	public String getEimage1() {
		return eimage1;
	}
	public void setEimage1(String eimage1) {
		this.eimage1 = eimage1;
	}
	public String getEsimage1() {
		return esimage1;
	}
	public void setEsimage1(String esimage1) {
		this.esimage1 = esimage1;
	}
	public String getEimage2() {
		return eimage2;
	}
	public void setEimage2(String eimage2) {
		this.eimage2 = eimage2;
	}
	public String getEsimage2() {
		return esimage2;
	}
	public void setEsimage2(String esimage2) {
		this.esimage2 = esimage2;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public CommonsMultipartFile[] getImages() {
		return images;
	}
	public void setImages(CommonsMultipartFile[] images) {
		this.images = images;
	}
	public ArrayList<String> getEimages() {
		return eimages;
	}
	public void setEimages(ArrayList<String> eimages) {
		this.eimages = eimages;
	}
	public ArrayList<String> getEsimages() {
		return esimages;
	}
	public void setEsimages(ArrayList<String> esimages) {
		this.esimages = esimages;
	}
}
