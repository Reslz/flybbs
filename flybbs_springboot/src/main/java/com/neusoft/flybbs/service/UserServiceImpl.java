package com.neusoft.flybbs.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.flybbs.bean.TabBbsUserinfo;
import com.neusoft.flybbs.dao.UserMapper;


@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper ;

	@Override
	public void registUser(TabBbsUserinfo userInfo) {
		// TODO Auto-generated method stub
		userMapper.registUser(userInfo);
	}

	@Override
	public TabBbsUserinfo login(TabBbsUserinfo userInfo) {
		// TODO Auto-generated method stub
		TabBbsUserinfo userInfo1 = userMapper.login(userInfo);
		return userInfo1;
	}

	@Override
	public List<Map<String, Object>> findSelfTopics(int id) {
		// TODO Auto-generated method stub
		List<Map<String, Object>> list = userMapper.findSelfTopics(id);
		return list;
	}

	@Override
	public void setmsg(TabBbsUserinfo userInfo) {
		// TODO Auto-generated method stub
		userMapper.setmsg(userInfo);
	}

	@Override
	public void setpass(String newpass, int id) {
		// TODO Auto-generated method stub
		userMapper.setpass(newpass, id);
	}

}
