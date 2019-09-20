package com.neusoft.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.neusoft.model.bean.User;
import com.neusoft.util.DBUtil;

public class UserDaoImpl implements UserDao {
	//登录
	@Override
	public User login(Connection conn,User user) {
		User user1 = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from tab_bbs_userinfo where email = ? and password = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getEmail());
			pstmt.setString(2, user.getPassword());
			rs = pstmt.executeQuery();
			if(rs.next()){	
				user1 = new User();
				DBUtil.setUser(rs, user1);
			}
		} catch (SQLException e) {
			
			e.printStackTrace(); 
		}finally{
			DBUtil.close(rs, pstmt, null);
		}
		return user1;
	}
	//注册
	@Override
	public void regist(Connection conn,User user) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "insert into tab_bbs_userinfo (email,nickname,password) values(?,?,?)";//id,email,nickname,city,sex,head_url,password,sign_name,kiss_num
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getEmail());
			pstmt.setString(2, user.getNickname());
			pstmt.setString(3, user.getPassword());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			DBUtil.close(rs, pstmt, null);
		}
		
	}
	//个人信息
	@Override
	public User getUser(Connection conn ,String email) {
		User user = null ;
		String sql = "select * from tab_bbs_userinfo where email = ? ";
		ResultSet rs = null ;
		PreparedStatement pstmt = null ;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()){
				user = new User();
				DBUtil.setUser(rs, user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(rs, pstmt, null);
		}
		return user;
	}

}
