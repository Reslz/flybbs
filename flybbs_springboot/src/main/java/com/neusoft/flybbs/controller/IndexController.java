package com.neusoft.flybbs.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.flybbs.service.JieService;
import com.neusoft.flybbs.util.TimeUtil;

@Controller
public class IndexController {
	
	@Autowired
	private JieService jieService ;

	
	@RequestMapping("/")
	public ModelAndView index() {
		List<Map<String,Object>> list = jieService.findTabBbsTopicinfos();
		String time = null ;
		for (Map<String, Object> map : list) {
			Date date = (Date)map.get("createtime");
			time = TimeUtil.changeTime(date);
		}
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("string", time);
		mv.addObject("list", list);
		return mv;
	}
	
}
