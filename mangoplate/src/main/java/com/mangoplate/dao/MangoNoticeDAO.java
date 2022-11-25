package com.mangoplate.dao;

import java.util.ArrayList;

import com.mangoplate.vo.MangoNoticeVO;

public class MangoNoticeDAO extends DBConn{
	/**
	 * totalCount : 전체 로우수 출력
	 */
	public int totalCount() {
		int result = 0;
		String sql = "select count(*) from mg_notice";
		
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
	 * delete : 공지사항 삭제 
	 */
	public int delete(String nid) {
		int result = 0;
		String sql = "delete from mg_notice where nid=?";
						
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, nid);		
			
			result = pstmt.executeUpdate();
			
			close();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	/**
	 * update : 공지사항 업데이트 
	 */
	public int update(MangoNoticeVO vo) {
		int result = 0;
		String sql = "update mg_notice set ntitle=?,ncontent=?, nfile=?, nsfile=? "
				+ " where nid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNfile());
			pstmt.setString(4, vo.getNsfile());
			pstmt.setString(5, vo.getNid());
			
			result = pstmt.executeUpdate();
			
			close();			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	/**
	 * updateHits : 조회수 업데이트 
	 */
	public void updateHits(String nid) {
		String sql = "update cgv_notice set nhits=nhits+1 "
				+ " where nid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			pstmt.executeUpdate();
			
			close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * select : 공지사항 상세보기
	 */
	public MangoNoticeVO select(String nid) {
		MangoNoticeVO vo = new MangoNoticeVO();
		String sql = "select nid,ntitle,ncontent,ndate, nfile, nsfile "
				+ " from mg_notice where nid=?";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setNid(rs.getString(1));
				vo.setNtitle(rs.getString(2));
				vo.setNcontent(rs.getString(3));
				vo.setNdate(rs.getString(4));
				vo.setNfile(rs.getString(5));
				vo.setNsfile(rs.getString(6));
			}
			
			//close();  //조회수 처리시 커넥션 종료를 막기위해 주석처리함!!!			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	/**
	 * select : 전체 공지사항 리스트
	 */
	public ArrayList<MangoNoticeVO> select(){
		ArrayList<MangoNoticeVO> list = new ArrayList<MangoNoticeVO>();
		String sql = "select nid, ntitle, ncontent, to_char(ndate, 'yyyy-mm-dd') ndate, nfile, nsfile "
				+ " from (select nid, ntitle, ncontent, ndate, nfile, nsfile from mg_notice order by ndate desc)";
		
		try {
			getPreparedStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MangoNoticeVO vo = new MangoNoticeVO();
				vo.setNid(rs.getString(1));
				vo.setNtitle(rs.getString(2));
				vo.setNcontent(rs.getString(3));
				vo.setNdate(rs.getString(4));
				vo.setNfile(rs.getString(5));
				vo.setNsfile(rs.getString(6));
				
				list.add(vo);
			}
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	/**
	 * insert : 공지사항 등록
	 */
	public int insert(MangoNoticeVO vo) {
		int result = 0;
		String sql = "insert into mg_notice "
				+ " values('n_'||sequ_mg_notice.nextval,?,sysdate,?,?,?)";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNfile());
			pstmt.setString(4, vo.getNsfile());
			
			result = pstmt.executeUpdate();
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
