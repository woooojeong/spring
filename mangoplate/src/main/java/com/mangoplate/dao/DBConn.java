package com.mangoplate.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBConn {
	//Field
	private String url = "jdbc:oracle:thin:@localhost:1521";
	private String user = "scott";
	private String pass = "tiger";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	//Constructor
	public DBConn() {
		try {
			//0. JDBC ����̹� �غ� - ��Ĺ�� lib ������ �־��ش�!!
			//1. ����̹� �ε�
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//System.out.println("1. ����̹� �ε� ����!");

			//2. Connection ��ü ����
			conn = DriverManager.getConnection(url, user, pass);
			//System.out.println("2. Connection ��ü ����!");
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	//Method
	public void getPreparedStatement(String sql) {
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}


	public void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
}
