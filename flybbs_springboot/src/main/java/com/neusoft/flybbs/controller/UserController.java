package com.neusoft.flybbs.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.flybbs.bean.TabBbsUserinfo;
import com.neusoft.flybbs.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService ;

	@RequestMapping("loginjsp")
	public String loginjsp() {
		return "user/login";
	}
	
	@RequestMapping("regjsp")
	public String registjsp() {
		return "user/reg";
	}
	
	@RequestMapping("regist")
	public String regist(TabBbsUserinfo userInfo) {
		userService.registUser(userInfo);
		return "forward:/";
	}
	
	@RequestMapping("login/{validatecode}")
	@ResponseBody
	public String login(@Param("validatecode") String validatecode ,TabBbsUserinfo userInfo,HttpSession session) {
		TabBbsUserinfo userInfo1 = userService.login(userInfo);
		String validatecode1 = (String) session.getAttribute("validatecode");
		session.setMaxInactiveInterval(60*60);
		if(!validatecode1.equals(validatecode) ) {
			return "0";
		}else {
			if(userInfo1 != null) {
				session.setAttribute("user", userInfo1);
				return "1" ;
			}else {
				return "-1" ;
			}
		}
	}
	
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "forward:/";
	}
	
	
	@RequestMapping("indexjsp")
	public ModelAndView indexjsp(HttpSession session) {
		TabBbsUserinfo userInfo = (TabBbsUserinfo) session.getAttribute("user");
		int id = userInfo.getId();
		List<Map<String, Object>> list = userService.findSelfTopics(id);
		ModelAndView mv = new ModelAndView("user/index");
		mv.addObject("list", list);
		mv.addObject("flag", "indexjsp");
		return mv;
	}
	
	@RequestMapping("home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("user/home");
		mv.addObject("flag", "home");
		return mv;
	}
	
	
	@RequestMapping("set")
	public ModelAndView set() {
		ModelAndView mv = new ModelAndView("user/set");
		mv.addObject("flag", "set");
		return mv;
	}
	
	
	@RequestMapping("message")
	public ModelAndView message() {
		ModelAndView mv = new ModelAndView("user/message");
		mv.addObject("flag", "message");
		return mv;
	}
	
	@RequestMapping("setmsg")
	@ResponseBody
	public String setmsg(TabBbsUserinfo userInfo,HttpSession session) {
		TabBbsUserinfo userInfo1 = (TabBbsUserinfo) session.getAttribute("user");
		userInfo.setId(userInfo1.getId());
		userService.setmsg(userInfo);
		session.invalidate();
		return "1";
	}
	
	
	@RequestMapping("setpass/{newpass}")
	@ResponseBody
	public String setpass(@PathParam("newpass") String newpass,HttpSession session) {
		TabBbsUserinfo userInfo1 = (TabBbsUserinfo) session.getAttribute("user");
		int id = userInfo1.getId();
		userService.setpass(newpass, id);
		session.invalidate();
		return "1";
	}
	
}
