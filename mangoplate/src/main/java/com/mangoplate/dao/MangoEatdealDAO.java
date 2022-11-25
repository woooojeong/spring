package com.mangoplate.dao;

import java.util.ArrayList;

import com.mangoplate.vo.MangoEatdealVO;

public class MangoEatdealDAO extends DBConn{
	/**
	 * totalCount : 전체 로우수 출력
	 */
	public int totalCount() {
		int result = 0;
		String sql = "select count(*) from mg_eatdeal";
		
		try {
			getPreparedStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				result = rs.getInt(1);
			}
			//close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * delete : 게시글 삭제 
	 */
	public int delete(String eid) {
		int result = 0;
		String sql = "delete from mg_eatdeal where eid=?";
						
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, eid);		
			
			result = pstmt.executeUpdate();
			
			close();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	/**
	 * update : 게시글 업데이트 
	 */
	public int update(MangoEatdealVO vo) {
		int result = 0;
		String sql = "update mg_eatdeal set packaging=?, stock=?, menu=?, price=?, scontent=?, common=? "
				+ " where eid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getPackaging());
			pstmt.setInt(2, vo.getStock());
			pstmt.setString(3, vo.getMenu());
			pstmt.setString(4, vo.getPrice());
			pstmt.setString(5, vo.getScontent());
			pstmt.setString(6, vo.getCommon());
			pstmt.setString(7, vo.getEid());
			
			result = pstmt.executeUpdate();
			
			close();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	/**
	 * select : 게시글 상세보기
	 */
	public MangoEatdealVO select(String eid) {
		MangoEatdealVO vo = new MangoEatdealVO();
		String sql = "select eid, ename, region, packaging, stock, menu, price, scontent, common, esimage1, esimage2 "
				+ " from mg_eatdeal where eid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, eid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setEid(rs.getString(1));
				vo.setEname(rs.getString(2));
				vo.setRegion(rs.getString(3));
				vo.setPackaging(rs.getString(4));
				vo.setStock(rs.getInt(5));
				vo.setMenu(rs.getString(6));
				vo.setPrice(rs.getString(7));
				vo.setScontent(rs.getString(8));
				vo.setCommon(rs.getString(9));
				vo.setEsimage1(rs.getString(10));
				vo.setEsimage2(rs.getString(11));
			}
			
			close();  //조회수 처리시 커넥션 종료를 막기위해 주석처리함!!!			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	/**
	 * select : 전체 게시글 리스트
	 */
	public ArrayList<MangoEatdealVO> select(){
		ArrayList<MangoEatdealVO> list = new ArrayList<MangoEatdealVO>();
		String sql = "select eid, ename, region, packaging, stock, menu, price, scontent, common, eimage1, esimage1, "
				+ " eimage2, esimage2"
				+ " from mg_eatdeal "
				+ " order by eid desc";
		
//		eid varchar2(20) constraint pk_mg_eatdeal_id primary key, 
//		ename varchar2(30) not null,
//		region varchar2(30) not null,
//		packaging varchar2(30) not null,
//		stock number(30) not null,
//		menu varchar2(200) not null,
//		price varchar2(30) not null,
//		scontent varchar2(500) not null,
//		common varchar2(500) not null,
//		eimage1 varchar2(200),
//		esimage1 varchar2(200),
//		eimage2 varchar2(200),
//		esimage2 varchar2(200)
		
		
		try {
			getPreparedStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MangoEatdealVO vo = new MangoEatdealVO();
				vo.setEid(rs.getString(1));
				vo.setEname(rs.getString(2));
				vo.setRegion(rs.getString(3));
				vo.setPackaging(rs.getString(4));
				vo.setStock(rs.getInt(5));
				vo.setMenu(rs.getString(6));
				vo.setPrice(rs.getString(7));
				vo.setScontent(rs.getString(8));
				vo.setCommon(rs.getString(9));
				vo.setEimage1(rs.getString(10));
				vo.setEsimage1(rs.getString(11));
				vo.setEimage2(rs.getString(12));
				vo.setEsimage2(rs.getString(13));
				
				list.add(vo);
			}
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	/**
	 * insert : 게시글 등록
	 */
	public int insert(MangoEatdealVO vo) {
		int result = 0;
		String sql = "insert into mg_eatdeal "
				+ " values('e_'||sequ_mg_eatdeal.nextval,?,?,?,?,?,?,?,?,?,?,?,?)";
		
//	1	ename varchar2(30) not null,             
//	2	region varchar2(30) not null,            
//	3	packaging varchar2(30) not null,         
//	4	stock number(30) not null,               
//	5	menu varchar2(200) not null,
//	6	price varchar2(30) not null,
//	7	scontent varchar2(500) not null,
//	8	common varchar2(500) not null,
//	9	eimage1 varchar2(200),
//	10	esimage1 varchar2(200),
//	11	eimage2 varchar2(200),
//	12	esimage2
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getEname());
			pstmt.setString(2, vo.getRegion());
			pstmt.setString(3, vo.getPackaging());
			pstmt.setInt(4, vo.getStock());
			pstmt.setString(5, vo.getMenu());
			pstmt.setString(6, vo.getPrice());
			pstmt.setString(7, vo.getScontent());
			pstmt.setString(8, vo.getCommon());
			pstmt.setString(9, vo.getEimage1());
			pstmt.setString(10, vo.getEsimage1());
			pstmt.setString(11, vo.getEimage2());
			pstmt.setString(12, vo.getEsimage2());
			
			result = pstmt.executeUpdate();
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	/**
	 * 구매하기
	 */
	public int purchase(String eid) {
	//	System.out.println(eid);
		int result = 0;
		String sql = " update mg_eatdeal set stock=stock-1 where eid=? ";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, eid);
			
			result = pstmt.executeUpdate();
			
			close();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
}
	
	
	

