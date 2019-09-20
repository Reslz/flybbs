package com.neusoft.flybbs.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.flybbs.bean.TabBbsCategory;
import com.neusoft.flybbs.bean.TabBbsTopicinfo;
import com.neusoft.flybbs.dao.JieMapper;

@Service("jieService")
public class JieServiceImpl implements JieService {
	
	@Autowired
	private JieMapper jieMapper;

	@Override
	public List<TabBbsCategory> findTabBbsCategories() {
		// TODO Auto-generated method stub
		return jieMapper.findTabBbsCategories();
	}

	@Override
	public void add(TabBbsTopicinfo tabBbsTopicinfo) {
		// TODO Auto-generated method stub
		jieMapper.add(tabBbsTopicinfo);
	}

	@Override
	public List<Map<String,Object>> findTabBbsTopicinfos() {
		// TODO Auto-generated method stub
		return jieMapper.findTabBbsTopicinfos();
	}

	@Override
	public Map<String, Object> detail(int id) {
		// TODO Auto-generated method stub
		return jieMapper.detail(id);
	}

	
	
}
