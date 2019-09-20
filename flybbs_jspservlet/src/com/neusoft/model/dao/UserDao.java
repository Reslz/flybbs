package com.neusoft.model.dao;

import java.sql.Connection;

import com.neusoft.model.bean.User;

public interface UserDao {
	User login(Connection conn ,User user);//登录
	void regist(Connection conn,User user);//注册
	User getUser(Connection conn ,String email);
}
