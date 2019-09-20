<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
 
<div class="header">
  <div class="main">
    <a class="logo" href="/" title="Fly">Fly社区</a>
    <div class="nav">
      <a class="nav-this" href="jie/index.html">
        <i class="iconfont icon-wenda"></i>问答
      </a>
      <a href="http://www.layui.com/" target="_blank">
        <i class="iconfont icon-ui"></i>框架
      </a>
    </div>
    
    <div class="nav-user">
      <!-- 未登入状态 -->
      <s:if test="${user == null }">
	      <a class="unlogin" href="${pageContext.request.contextPath }/user/loginjsp"><i class="iconfont icon-touxiang"></i></a>
	      <span><a href="${pageContext.request.contextPath }/user/loginjsp">登入</a><a href="${pageContext.request.contextPath }/user/regjsp">注册</a></span>
	      <p class="out-login">
	        <a href="" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
	        <a href="" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
	      </p>   
      </s:if>
      
      <!-- 登入后的状态 -->
      <s:if test="${user != null }">
	      <a class="avatar" href="${pageContext.request.contextPath }/user/indexjsp">
	        <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0">
	        <cite>${user.nickname }</cite>
	        <i>VIP2</i>
	      </a>
	      <div class="nav">
	        <a href="/user/set/"><i class="iconfont icon-shezhi"></i>设置</a>
	        <a href="${pageContext.request.contextPath }/user/logout/"><i class="iconfont icon-tuichu" style="top: 0; font-size: 22px;"></i>退了</a>
	      </div>
      </s:if>
    </div>
  </div>
</div>
