package com.neusoft.flybbs.bean;

import java.util.*;

public class TabBbsComment {

	private int id;
	private int topicId;
	private String content;
	private int userid;
	private Date commentTime;
	private int agreeNum;
	private int isAccept;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTopicId() {
		return topicId;
	}

	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public Date getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	public int getAgreeNum() {
		return agreeNum;
	}

	public void setAgreeNum(int agreeNum) {
		this.agreeNum = agreeNum;
	}

	public int getIsAccept() {
		return isAccept;
	}

	public void setIsAccept(int isAccept) {
		this.isAccept = isAccept;
	}
}
