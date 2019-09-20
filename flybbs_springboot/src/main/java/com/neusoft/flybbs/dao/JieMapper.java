package com.neusoft.flybbs.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.neusoft.flybbs.bean.TabBbsCategory;
import com.neusoft.flybbs.bean.TabBbsTopicinfo;

public interface JieMapper {

	@Select("select * from tab_bbs_category ")
	List<TabBbsCategory> findTabBbsCategories();
	
	
	@Insert("insert into tab_bbs_topicinfo (title,content,createtime,category_id,view_count,userid,is_good,is_end) "
			+ "values (#{title},#{content},#{createtime},#{categoryId},0,#{userid},0,0) ")
	void add(TabBbsTopicinfo tabBbsTopicinfo);
	
	@Select("select t1.id, t1.title ,t1.createtime ,t1.view_count, t2.nickname name,t3.nickname ,count(t4.id) num "
			+ "from tab_bbs_topicinfo t1 "
			+ "join tab_bbs_category t2 "
			+ "on t1.category_id = t2.id "
			+ "join tab_bbs_userinfo t3 "
			+ "on t1.userid = t3.id "
			+ "left join tab_bbs_comment t4 "
			+ "on t1.id = t4.topic_id "
			+ "group by t1.id, t1.title ,t1.createtime ,t1.view_count, name,t3.nickname "
			+ "limit 0 , 30 ")
	List<Map<String,Object>> findTabBbsTopicinfos();
	
	@Select("select t1.id, t1.title ,t1.createtime ,t1.view_count, t2.nickname name,t3.nickname ,count(t4.id) num "
			+ "from tab_bbs_topicinfo t1 "
			+ "join tab_bbs_category t2 "
			+ "on t1.category_id = t2.id "
			+ "join tab_bbs_userinfo t3 "
			+ "on t1.userid = t3.id "
			+ "left join tab_bbs_comment t4 "
			+ "on t1.id = t4.topic_id "
			+ "where t1.id = #{value} "
			+ "group by t1.id, t1.title ,t1.createtime ,t1.view_count, name,t3.nickname ")
	Map<String,Object> detail(int id);
}
