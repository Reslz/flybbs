package com.neusoft.model.service;

import java.sql.Connection;

import com.neusoft.model.bean.User;
import com.neusoft.model.dao.UserDao;
import com.neusoft.model.dao.UserDaoImpl;
import com.neusoft.util.DBUtil;

public class UserServiceImpl implements UserService {
	private UserDao userDao = new UserDaoImpl();
	private Connection conn ;

	@Override
	public User login(User user) {
		conn = DBUtil.getConnection();
		User user1 = userDao.login(conn,user);
		return user1 ;
	}

	@Override
	public User getUser(String email) {
		conn = DBUtil.getConnection();
		User user = userDao.getUser(conn,email);
		return user ;
	}

}
