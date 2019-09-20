package com.neusoft.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.neusoft.model.bean.User;


public class DBUtil {

	private static Connection conn = null;
	private static String driver = null;
	private static String mysqlUrl = null ;
	private static String user = null;
	private static String password = null;
	
	static{
		
		try {
			Properties p = new Properties();
			p.load(DBUtil.class.getResourceAsStream("db.properties"));
			driver = p.getProperty("driver");
			mysqlUrl = p.getProperty("mysqlUrl");
			user = p.getProperty("user");
			password = p.getProperty("password");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private DBUtil(){
		
	}
	public static Connection getConnection(){
		try{
			if(conn==null || conn.isClosed()){
				Class.forName(driver);
				conn = DriverManager.getConnection(mysqlUrl, user, password);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
	//by后加的
	public static void setUser(ResultSet rs,User user) throws SQLException{
		user.setId(rs.getInt("id"));
		user.setPassword(rs.getString("password"));
		user.setEmail(rs.getString("email"));
		user.setCity(rs.getString("city"));
		user.setHead_url(rs.getString("head_url"));
		user.setNickname(rs.getString("nickname"));
		user.setKiss_num(rs.getInt("kiss_num"));
		user.setSex(rs.getInt("sex"));
		user.setSign_name(rs.getString("sign_name"));
	}

}
