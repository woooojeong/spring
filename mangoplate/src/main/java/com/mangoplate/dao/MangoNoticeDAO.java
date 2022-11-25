package com.mangoplate.dao;

import java.util.ArrayList;

import com.mangoplate.vo.MangoNoticeVO;

public class MangoNoticeDAO extends DBConn{
	/**
	 * totalCount : ��ü �ο�� ���
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
	 * delete : �������� ���� 
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
	 * update : �������� ������Ʈ 
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
	 * updateHits : ��ȸ�� ������Ʈ 
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
	 * select : �������� �󼼺���
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
			
			//close();  //��ȸ�� ó���� Ŀ�ؼ� ���Ḧ �������� �ּ�ó����!!!			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	
	/**
	 * select : ��ü �������� ����Ʈ
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
	 * insert : �������� ���
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
