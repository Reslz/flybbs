package com.neusoft.flybbs.util;

import java.util.Date;

public class TimeUtil {

	private static long time ;
	
	@SuppressWarnings("deprecation")
	public static String changeTime(Date date) {
		Date date1 = new Date();
		time = date1.getTime()-date.getTime()/1000;
		if(time < 60) {
			return "刚刚";
		}else if(time/60 < 60){
			return time/60+"分前";
		}else if(time/60/60 < 24){
			return time/60/60 +"小时前";
		}else if(time/60/60/24 < 365){
			return time/60/60/24+"天前";
		}else {
			return (date.getYear()+1900)+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日";
		}
	}
}
