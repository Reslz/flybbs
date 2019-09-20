package com.neusoft.model.service;


import com.neusoft.model.bean.User;

public interface UserService {
	User login(User user);
	User getUser(String email);
}
