package com.team.service;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mangoplate.vo.MangoBoardStoryVO;
import com.mangoplate.vo.MangoEatdealVO;
import com.mangoplate.vo.MangoNoticeVO;
import com.mangoplate.vo.MangoRestVO;
import com.mangoplate.vo.MangoReviewVO;

@Service
public class FileServiceImpl {

	
	/**
	 * ����: ���� üũ ��, vfile, vsfile ����(�޼ҵ� �����ε�)
	 */
	public MangoReviewVO fileCheck(MangoReviewVO vo) {

		if (vo.getFile1().getOriginalFilename().equals("")) {
			vo.setVfile("");
			vo.setVsfile(""); 
		} else {
			UUID uuid = UUID.randomUUID();

			vo.setVfile(vo.getFile1().getOriginalFilename());
			vo.setVsfile(uuid + "_" + vo.getFile1().getOriginalFilename()); 
		}
		return vo;
	}

	/**
	 * ����: ���� upload ������ ����(�޼ҵ� �����ε�)
	 */
	public void fileSave(MangoReviewVO vo, HttpServletRequest request) throws Exception {
		if (!vo.getFile1().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File file = new File(path + vo.getVsfile()); 
			vo.getFile1().transferTo(file); 
		}
	}
	
	/**
	 * �Ĵ��� : �Խñ� �輼 �� ������ �����ϸ� �����ϱ�
	 */
	public void fileDelete(MangoRestVO vo, HttpServletRequest request) throws Exception{
		if(vo.getRsimage() != null) {
			String path=request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File old_file = new File(path+vo.getRsimage());
			if(old_file.exists()) {
				old_file.delete();
			}
		}
	}
	
	/**
	 * �Ĵ��� : ������ �ִ� ��� update�� ��������
	 */
	public void update_filesave(MangoRestVO vo, HttpServletRequest request, String old_filename) 
														throws Exception {
		//���ο� ������ upload ������ ����
		if(!vo.getFile1().getOriginalFilename().equals("")) { //���ο� ���ϼ��� O
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			System.out.println(path);
			
			File file = new File(path+vo.getRsimage());
			vo.getFile1().transferTo(file);
		
			//���������� �ִ� ��쿡�� ���� ����
			File ofile = new File(path+old_filename);
			if(ofile.exists()) {
				ofile.delete();
			}
		}
	}
	
	/**
	 * �Ĵ��� : ������ �ִ� ��� update�� ����üũ
	 */
	public MangoRestVO update_fileCheck(MangoRestVO vo) {
		if(vo.getFile1() != null) { //���ο� ���ϰ�ü�� �ִ��� ����üũ�ϴ� ��쿡�� null�� ���
			if(!vo.getFile1().getOriginalFilename().equals("")) { //���ο� ���ϼ��� O
				
				UUID uuid = UUID.randomUUID();
				
				vo.setRimage(vo.getFile1().getOriginalFilename());
				vo.setRsimage(uuid+"_"+vo.getFile1().getOriginalFilename());
			}
		}
		return vo;
	}
	
	/**
	 * �Ĵ��� : ���� üũ �� rimage, rsimage ����
	 */
	public MangoRestVO fileCheck(MangoRestVO vo) {
		//1. vo��ü�� ����üũ �� rimage, rsimage�� ����Ǵ� �̸� ����
		if(vo.getFile1().getOriginalFilename().equals("")) {
			vo.setRimage("");
			vo.setRsimage("");
		}else {
			UUID uuid = UUID.randomUUID();
			vo.setRimage(vo.getFile1().getOriginalFilename());
			vo.setRsimage(uuid + "_" + vo.getFile1().getOriginalFilename());
		}
		
		return  vo;
	}//fileCheck
	
	/**
	 * �Ĵ��� : ���� upload ������ ����
	 */
	public void fileSave(MangoRestVO vo, HttpServletRequest request) throws Exception {
		//2. upload ������ rsfile ������ ���� ���� ���ε� ó��
		if(!vo.getFile1().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File file = new File(path+vo.getRsimage());
			vo.getFile1().transferTo(file);
		}
	}

	/**
	 * �����丮 �Խ��� : �����丮 �Խñ� �輼 �� ������ �����ϸ� �����ϱ�
	 */
	public void fileDelete(MangoBoardStoryVO vo, HttpServletRequest request) throws Exception {
		if (vo.getSsimage() != null) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File old_file = new File(path + vo.getSsimage());
			if (old_file.exists()) {
				old_file.delete();
			}
		}
	}

	/**
	 * ���� ����� �Խ��� : ������ �ִ� ��� update�� ��������
	 */
	public void update_filesave(MangoBoardStoryVO vo, HttpServletRequest request, String old_filename)
			throws Exception {
		// ���ο� ������ upload ������ ����
		if (!vo.getFile1().getOriginalFilename().equals("")) { // ���ο� ���ϼ��� O
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			System.out.println(path);

			File file = new File(path + vo.getSsimage());
			vo.getFile1().transferTo(file);

			// ���������� �ִ� ��쿡�� ���� ����
			File ofile = new File(path + old_filename);
			if (ofile.exists()) {
				ofile.delete();
			}
		}
	}

	/**
	 * �����丮 �Խ��� : ������ �ִ� ��� update�� ����üũ
	 */
	public MangoBoardStoryVO update_fileCheck(MangoBoardStoryVO vo) {
		if (vo.getFile1() != null) {
			if (!vo.getFile1().getOriginalFilename().equals("")) { // ���ο� ���ϼ��� O

				UUID uuid = UUID.randomUUID();

				vo.setSimage(vo.getFile1().getOriginalFilename());
				vo.setSsimage(uuid + "_" + vo.getFile1().getOriginalFilename());
			}
		}
		return vo;
	}

	/**
	 * ���� ���丮 �Խ��� : ���� upload ������ ����
	 */
	public void fileSave(MangoBoardStoryVO vo, HttpServletRequest request) throws Exception {
		if (!vo.getFile1().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File file = new File(path + vo.getSsimage());
			vo.getFile1().transferTo(file);
		}
	}

	/**
	 * �����丮 �Խ��� : ���� üũ �� simage, ssimage ����
	 */
	public MangoBoardStoryVO fileCheck(MangoBoardStoryVO vo) {
		// 1. vo��ü�� ����üũ �� simage, ssimage�� ����Ǵ� �̸� ����
		if (vo.getFile1().getOriginalFilename().equals("")) {
			vo.setSimage("");
			vo.setSsimage("");
		} else {
			UUID uuid = UUID.randomUUID();
			vo.setSimage(vo.getFile1().getOriginalFilename());
			vo.setSsimage(uuid + "_" + vo.getFile1().getOriginalFilename());
		}

		return vo;
	}// fileCheck

	/**
	 * ��������: ���� üũ ��, nfile, nsfile ����(�޼ҵ� �����ε�)
	 */
	public MangoNoticeVO fileCheck(MangoNoticeVO vo) {

		// 1. vo��ü�� ����üũ �� nfile, nsfile�� ����Ǵ� �̸� ����
		if (vo.getFile1().getOriginalFilename().equals("")) {
			vo.setNfile("");
			vo.setNsfile(""); // ���� ���ε� �������� �̸� �����͵� ����
		} else {
			UUID uuid = UUID.randomUUID();

			vo.setNfile(vo.getFile1().getOriginalFilename());
			vo.setNsfile(uuid + "_" + vo.getFile1().getOriginalFilename()); // ���� ���ε� ������ ������ ����
		}
		return vo;
	}

	/**
	 * ��������: ���� upload ������ ����(�޼ҵ� �����ε�)
	 */
	public void fileSave(MangoNoticeVO vo, HttpServletRequest request) throws Exception {
		// ������ �ִ� ��� upload ������ ���� ����
		if (!vo.getFile1().getOriginalFilename().equals("")) {// DB�� nfile�� �����Ͱ� null�� �ƴ� ��츦 ���Ѵ�
			// �׷��� !vo.getNfile().equals("")�� �����ϴ�

			// upload ������ ��θ� �������� ����, HttpServletRequest ��ü�� �Ķ���ͷ� �����´�
			// (��Ŭ������ /resources/upload���� ���� �ٷ� ã�� ���Ѵ�)
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File file = new File(path + vo.getNsfile()); // ������� �۾��ϸ� �̸��� nsfile�� 0kb¥�� ����ִ� ������ �����ȴ�
			vo.getFile1().transferTo(file); // ������� �۾��ؾ� ��μ� ���ε��� ������ �����ϰ� ä������ �����ȴ�
		}
	}

	/**
	 * ��������: ������ �ִ� ��� update�� ���� üũ(�����ε�)
	 */
	public MangoNoticeVO update_fileCheck(MangoNoticeVO vo) {

		if (!vo.getFile1().getOriginalFilename().equals("")) {
			UUID uuid = UUID.randomUUID();

			vo.setNfile(vo.getFile1().getOriginalFilename());
			vo.setNsfile(uuid + "_" + vo.getFile1().getOriginalFilename());
		}
		return vo;
	}

	/**
	 * ��������: ������ �ִ� ��� update�� ���� ����(�����ε�)
	 */
	public void update_filesave(MangoNoticeVO vo, HttpServletRequest request, String old_filename) throws Exception {

		// ���ο� ������ upload ������ ����
		if (!vo.getFile1().getOriginalFilename().equals("")) {// ���ο� ������ �������� ���
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File file = new File(path + vo.getNsfile());
			vo.getFile1().transferTo(file);

			// ���� �� ���������� �ִ� ��쿡�� ���� ����
			File ofile = new File(path + old_filename);// �Ʊ� �̸� ������ old_filename�� ���⼭ Ȱ���Ѵ�
			if (ofile.exists()) {
				ofile.delete();
			}
		}
	}

	/**
	 * ��������: �Խñ� ������ ������ �����ϸ� �����ϱ�(�����ε�)
	 */
	public void fileDelete(MangoNoticeVO vo, HttpServletRequest request) throws Exception {
		// �Խñ� ������ upload ������ �����ϴ� ������ �ִٸ� �����ϱ�
		if (vo.getNsfile() != null) {// ���� dao.select(bid)�� ���� Ȯ�� ��� ���ε��ߴ� ������ �����ٸ� (null������ �Ǵ��ؾ���)
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File old_file = new File(path + vo.getNsfile());
			if (old_file.exists()) {
				old_file.delete();// ���� ����
			}
		}
	}

	//////////////////////////////////////

	/**
	 * Eatdeal : ��Ƽ���� ����
	 */
	public void multiFileSave(MangoEatdealVO vo, HttpServletRequest request) throws Exception {
		// ������ upload�� ����
		for (int i = 0; i < vo.getImages().length; i++) {
			CommonsMultipartFile file = vo.getImages()[i];

			if (!file.getOriginalFilename().equals("")) {
				String path = request.getSession().getServletContext().getRealPath("/");
				path += "\\resources\\upload\\";

				File upload_file = new File(path + vo.getEsimages().get(i));
				file.transferTo(upload_file);
			}
		} // for
	}

	/**
	 * Eatdeal : ��Ƽ���� üũ
	 */
	public MangoEatdealVO multiFileCheck(MangoEatdealVO vo) {
		for (CommonsMultipartFile file : vo.getImages()) {
			if (!file.getOriginalFilename().equals("")) {
				UUID uuid = UUID.randomUUID();

				vo.getEimages().add(file.getOriginalFilename());
				vo.getEsimages().add(uuid + "_" + file.getOriginalFilename());
			} else {
				vo.getEimages().add("");
				vo.getEsimages().add("");
			}
		}
		vo.setEimage1(vo.getEimages().get(0));
		vo.setEimage2(vo.getEimages().get(1));
		vo.setEsimage1(vo.getEsimages().get(0));
		vo.setEsimage2(vo.getEsimages().get(1));

		return vo;
	}

	/**
	 * Eatdeal : �Խñ� �輼 �� ������ �����ϸ� �����ϱ�
	 */
	public void fileDelete(MangoEatdealVO vo, HttpServletRequest request) throws Exception {
		if (vo.getEsimages() != null) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File old_file = new File(path + vo.getEsimages());
			if (old_file.exists()) {
				old_file.delete();
			}
		}
	}

//	/**
//	 * Eatdeal : ������ �ִ� ��� update�� ��������
//	 */
//	public void update_filesave(MangoEatdealVO vo, HttpServletRequest request, String old_filename) 
//														throws Exception {
//		//���ο� ������ upload ������ ����
//		if(!vo.getFile1().getOriginalFilename().equals("")) { //���ο� ���ϼ��� O
//			String path = request.getSession().getServletContext().getRealPath("/");
//			path += "\\resources\\upload\\";
//			System.out.println(path);
//			
//			File file = new File(path+vo.getBsfile());
//			vo.getFile1().transferTo(file);
//		
//			//���������� �ִ� ��쿡�� ���� ����
//			File ofile = new File(path+old_filename);
//			if(ofile.exists()) {
//				ofile.delete();
//			}
//		}
//	}
//	
//	/**
//	 * Eatdeal : ������ �ִ� ��� update�� ����üũ
//	 */
//	public MangoEatdealVO update_fileCheck(MangoEatdealVO vo) {
//		if(vo.getFile1() != null) {
//			if(!vo.getFile1().getOriginalFilename().equals("")) { //���ο� ���ϼ��� O
//				
//				UUID uuid = UUID.randomUUID();
//				
//				vo.setBfile(vo.getFile1().getOriginalFilename());
//				vo.setBsfile(uuid+"_"+vo.getFile1().getOriginalFilename());
//			}
//		}
//		return vo;
//	}

}
