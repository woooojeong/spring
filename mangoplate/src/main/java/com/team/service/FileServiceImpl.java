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
	 * 리뷰: 파일 체크 후, vfile, vsfile 생성(메소드 오버로딩)
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
	 * 리뷰: 파일 upload 폴더에 저장(메소드 오버로딩)
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
	 * 식당등록 : 게시글 삭세 시 파일이 존재하면 삭제하기
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
	 * 식당등록 : 파일이 있는 경우 update시 파일저장
	 */
	public void update_filesave(MangoRestVO vo, HttpServletRequest request, String old_filename) 
														throws Exception {
		//새로운 파일을 upload 폴더에 저장
		if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일선택 O
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			System.out.println(path);
			
			File file = new File(path+vo.getRsimage());
			vo.getFile1().transferTo(file);
		
			//기존파일이 있는 경우에는 파일 삭제
			File ofile = new File(path+old_filename);
			if(ofile.exists()) {
				ofile.delete();
			}
		}
	}
	
	/**
	 * 식당등록 : 파일이 있는 경우 update시 파일체크
	 */
	public MangoRestVO update_fileCheck(MangoRestVO vo) {
		if(vo.getFile1() != null) { //새로운 파일객체가 있는지 여부체크하는 경우에는 null을 사용
			if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일선택 O
				
				UUID uuid = UUID.randomUUID();
				
				vo.setRimage(vo.getFile1().getOriginalFilename());
				vo.setRsimage(uuid+"_"+vo.getFile1().getOriginalFilename());
			}
		}
		return vo;
	}
	
	/**
	 * 식당등록 : 파일 체크 후 rimage, rsimage 생성
	 */
	public MangoRestVO fileCheck(MangoRestVO vo) {
		//1. vo객체의 파일체크 후 rimage, rsimage에 저장되는 이름 생성
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
	 * 식당등록 : 파일 upload 폴더에 저장
	 */
	public void fileSave(MangoRestVO vo, HttpServletRequest request) throws Exception {
		//2. upload 폴더에 rsfile 명으로 실제 파일 업로드 처리
		if(!vo.getFile1().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File file = new File(path+vo.getRsimage());
			vo.getFile1().transferTo(file);
		}
	}

	/**
	 * 망고스토리 게시판 : 망고스토리 게시글 삭세 시 파일이 존재하면 삭제하기
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
	 * 망고 스토라 게시판 : 파일이 있는 경우 update시 파일저장
	 */
	public void update_filesave(MangoBoardStoryVO vo, HttpServletRequest request, String old_filename)
			throws Exception {
		// 새로운 파일을 upload 폴더에 저장
		if (!vo.getFile1().getOriginalFilename().equals("")) { // 새로운 파일선택 O
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			System.out.println(path);

			File file = new File(path + vo.getSsimage());
			vo.getFile1().transferTo(file);

			// 기존파일이 있는 경우에는 파일 삭제
			File ofile = new File(path + old_filename);
			if (ofile.exists()) {
				ofile.delete();
			}
		}
	}

	/**
	 * 망고스토리 게시판 : 파일이 있는 경우 update시 파일체크
	 */
	public MangoBoardStoryVO update_fileCheck(MangoBoardStoryVO vo) {
		if (vo.getFile1() != null) {
			if (!vo.getFile1().getOriginalFilename().equals("")) { // 새로운 파일선택 O

				UUID uuid = UUID.randomUUID();

				vo.setSimage(vo.getFile1().getOriginalFilename());
				vo.setSsimage(uuid + "_" + vo.getFile1().getOriginalFilename());
			}
		}
		return vo;
	}

	/**
	 * 망고 스토리 게시판 : 파일 upload 폴더에 저장
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
	 * 망고스토리 게시판 : 파일 체크 후 simage, ssimage 생성
	 */
	public MangoBoardStoryVO fileCheck(MangoBoardStoryVO vo) {
		// 1. vo객체의 파일체크 후 simage, ssimage에 저장되는 이름 생성
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
	 * 공지사항: 파일 체크 후, nfile, nsfile 생성(메소드 오버로딩)
	 */
	public MangoNoticeVO fileCheck(MangoNoticeVO vo) {

		// 1. vo객체의 파일체크 후 nfile, nsfile에 저장되는 이름 생성
		if (vo.getFile1().getOriginalFilename().equals("")) {
			vo.setNfile("");
			vo.setNsfile(""); // 파일 업로드 안했으면 이름 데이터도 공란
		} else {
			UUID uuid = UUID.randomUUID();

			vo.setNfile(vo.getFile1().getOriginalFilename());
			vo.setNsfile(uuid + "_" + vo.getFile1().getOriginalFilename()); // 파일 업로드 했으면 데이터 저장
		}
		return vo;
	}

	/**
	 * 공지사항: 파일 upload 폴더에 저장(메소드 오버로딩)
	 */
	public void fileSave(MangoNoticeVO vo, HttpServletRequest request) throws Exception {
		// 파일이 있는 경우 upload 폴더에 파일 저장
		if (!vo.getFile1().getOriginalFilename().equals("")) {// DB의 nfile에 데이터가 null이 아닌 경우를 말한다
			// 그래서 !vo.getNfile().equals("")도 가능하다

			// upload 폴더의 경로를 가져오기 위해, HttpServletRequest 객체를 파라미터로 가져온다
			// (이클립스는 /resources/upload에서 파일 바로 찾지 못한다)
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File file = new File(path + vo.getNsfile()); // 여기까지 작업하면 이름이 nsfile인 0kb짜리 비어있는 파일이 생성된다
			vo.getFile1().transferTo(file); // 여기까지 작업해야 비로소 업로드한 파일이 온전하게 채워져서 생성된다
		}
	}

	/**
	 * 공지사항: 파일이 있는 경우 update시 파일 체크(오버로딩)
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
	 * 공지사항: 파일이 있는 경우 update시 파일 저장(오버로딩)
	 */
	public void update_filesave(MangoNoticeVO vo, HttpServletRequest request, String old_filename) throws Exception {

		// 새로운 파일을 upload 폴더에 저장
		if (!vo.getFile1().getOriginalFilename().equals("")) {// 새로운 파일을 선택했을 경우
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File file = new File(path + vo.getNsfile());
			vo.getFile1().transferTo(file);

			// 저장 후 기존파일이 있는 경우에는 파일 삭제
			File ofile = new File(path + old_filename);// 아까 미리 만들어둔 old_filename을 여기서 활용한다
			if (ofile.exists()) {
				ofile.delete();
			}
		}
	}

	/**
	 * 공지사항: 게시글 삭제시 파일이 존재하면 삭제하기(오버로딩)
	 */
	public void fileDelete(MangoNoticeVO vo, HttpServletRequest request) throws Exception {
		// 게시글 삭제시 upload 폴더에 존재하는 파일이 있다면 삭제하기
		if (vo.getNsfile() != null) {// 만약 dao.select(bid)를 통해 확인 결과 업로드했던 파일이 었었다면 (null인지를 판단해야함)
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";

			File old_file = new File(path + vo.getNsfile());
			if (old_file.exists()) {
				old_file.delete();// 파일 삭제
			}
		}
	}

	//////////////////////////////////////

	/**
	 * Eatdeal : 멀티파일 저장
	 */
	public void multiFileSave(MangoEatdealVO vo, HttpServletRequest request) throws Exception {
		// 파일을 upload에 저장
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
	 * Eatdeal : 멀티파일 체크
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
	 * Eatdeal : 게시글 삭세 시 파일이 존재하면 삭제하기
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
//	 * Eatdeal : 파일이 있는 경우 update시 파일저장
//	 */
//	public void update_filesave(MangoEatdealVO vo, HttpServletRequest request, String old_filename) 
//														throws Exception {
//		//새로운 파일을 upload 폴더에 저장
//		if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일선택 O
//			String path = request.getSession().getServletContext().getRealPath("/");
//			path += "\\resources\\upload\\";
//			System.out.println(path);
//			
//			File file = new File(path+vo.getBsfile());
//			vo.getFile1().transferTo(file);
//		
//			//기존파일이 있는 경우에는 파일 삭제
//			File ofile = new File(path+old_filename);
//			if(ofile.exists()) {
//				ofile.delete();
//			}
//		}
//	}
//	
//	/**
//	 * Eatdeal : 파일이 있는 경우 update시 파일체크
//	 */
//	public MangoEatdealVO update_fileCheck(MangoEatdealVO vo) {
//		if(vo.getFile1() != null) {
//			if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일선택 O
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
