package com.neusoft.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class OracleDBUtil {
	private static Connection conn = null;
	static{
		
		try {
			Properties p = new Properties();
			p.load(OracleDBUtil.class.getResourceAsStream("oracledb.properties"));
			String driver = p.getProperty("driver");
			String oracleUrl = p.getProperty("oracleUrl");
			String user = p.getProperty("user");
			String password = p.getProperty("password");
			Class.forName(driver);
			conn = DriverManager.getConnection(oracleUrl, user, password);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private OracleDBUtil(){
		
	}
	public static Connection getConnection(){
		return conn;
	}
	public static void close(ResultSet rs,PreparedStatement pstmt,Connection conn){
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pstmt != null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
