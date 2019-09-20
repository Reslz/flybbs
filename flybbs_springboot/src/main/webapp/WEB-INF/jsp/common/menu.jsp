<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
    <li class="${flag == 'home' ? 'layui-nav-item layui-this':'layui-nav-item'}">
      <a href="${pageContext.request.contextPath}/user/home">
        <i class="layui-icon">&#xe609;</i>
        我的主页
      </a>
    </li>
    <li class="${flag == 'indexjsp' ? 'layui-nav-item layui-this':'layui-nav-item'}">
      <a href="${pageContext.request.contextPath}/user/indexjsp">
        <i class="layui-icon">&#xe612;</i>
        用户中心
      </a>
    </li>
    <li class="${flag == 'set' ? 'layui-nav-item layui-this':'layui-nav-item'}">
      <a href="${pageContext.request.contextPath}/user/set">
        <i class="layui-icon">&#xe620;</i>
        基本设置
      </a>
    </li>
    <li class="${flag == 'message' ? 'layui-nav-item layui-this':'layui-nav-item'}">
      <a href="${pageContext.request.contextPath}/user/message">
        <i class="layui-icon">&#xe611;</i>
        我的消息
      </a>
    </li>
  </ul>
</body>
</html>