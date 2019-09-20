package com.neusoft.flybbs.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.neusoft.flybbs.bean.TabBbsUserinfo;

public interface UserService {

	
	void registUser(TabBbsUserinfo userInfo);
	
	TabBbsUserinfo login(TabBbsUserinfo userInfo);
	
	List<Map<String,Object>> findSelfTopics(int id);
	
	void setmsg(TabBbsUserinfo userInfo);
	
	void setpass(String newpass ,int id);
}
