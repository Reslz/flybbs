package com.neusoft.flybbs.service;

import java.util.List;
import java.util.Map;

import com.neusoft.flybbs.bean.TabBbsCategory;
import com.neusoft.flybbs.bean.TabBbsTopicinfo;

public interface JieService {

	
	List<TabBbsCategory> findTabBbsCategories();
	
	void add(TabBbsTopicinfo tabBbsTopicinfo);
	
	List<Map<String,Object>> findTabBbsTopicinfos();
	
	Map<String,Object> detail(int id);
}
