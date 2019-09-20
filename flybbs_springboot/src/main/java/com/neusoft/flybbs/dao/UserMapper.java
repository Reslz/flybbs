package com.neusoft.flybbs.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.neusoft.flybbs.bean.TabBbsUserinfo;

public interface UserMapper {

	@Insert("insert into tab_bbs_userinfo (email,nickname,password) values (#{email},#{nickname},#{password})")
	void registUser(TabBbsUserinfo userInfo);
	
	@Select("select * from tab_bbs_userinfo where email = #{email} and password = #{password}")
	TabBbsUserinfo login(TabBbsUserinfo userInfo);
	
	
	@Select("select title,createtime,view_count,count(b.id) num "
			+ "from tab_bbs_topicinfo a "
			+ "left join tab_bbs_comment b "
			+ "on a.id = b.topic_id "
			+ "where a.userid = #{value} "
			+ "group by title ,createtime,view_count ")
	List<Map<String,Object>> findSelfTopics(int id);
	
	@Update("update tab_bbs_userinfo set email=#{email},nickname=#{nickname},sex=#{sex},city=#{city},sign_name=#{signName} "
			+ "where id = #{id}")
	void setmsg(TabBbsUserinfo userInfo);
	
	@Update("update tab_bbs_userinfo set password = #{newpass} "
			+ "where id = #{id}")
	void setpass(@Param("newpass") String newpass ,@Param("id") int id);
}