package com.neusoft.flybbs.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.flybbs.bean.TabBbsCategory;
import com.neusoft.flybbs.bean.TabBbsTopicinfo;
import com.neusoft.flybbs.bean.TabBbsUserinfo;
import com.neusoft.flybbs.service.JieService;

@Controller
@RequestMapping("jie")
public class JieController {
	
	@Autowired
	private JieService jieService ;

	@RequestMapping("addjsp")
	public ModelAndView add(HttpSession session) {
		TabBbsUserinfo userInfo = (TabBbsUserinfo) session.getAttribute("user");
		ModelAndView mv = new ModelAndView();
		if(userInfo == null) {
			mv.setViewName("redirect:/user/loginjsp");
			return mv;
		}else {
			List<TabBbsCategory> list = jieService.findTabBbsCategories();
			mv.setViewName("jie/add");
			mv.addObject("list", list);
			return mv ;
		}
	}
	
	
	@RequestMapping("add")
	public String add(TabBbsTopicinfo tabBbsTopicinfo,HttpSession session) {
		tabBbsTopicinfo.setCreatetime(new java.sql.Date(new Date().getTime()));
		tabBbsTopicinfo.setUserid(((TabBbsUserinfo)session.getAttribute("user")).getId());
		jieService.add(tabBbsTopicinfo);
		return "redirect:../user/indexjsp";
	}
	
	
	@RequestMapping("detail/{id}")
	public ModelAndView detail(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("jie/detail");
		Map<String ,Object> map = jieService.detail(id);
		mv.addObject("map", map);
		return mv;
	}
	
}
