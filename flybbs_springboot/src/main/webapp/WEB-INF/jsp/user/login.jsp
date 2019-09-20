<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>登入</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/layui/css/layui.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/global.css">
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/mods/layer.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/mods/jquery-3.4.1.min.js"></script>
  
  <script type="text/javascript">
  	$(function(){
  		
  		$("#img").click(function(){
  			var img = $("#img");
  			img.attr("src","${pageContext.request.contextPath }/validateCode/getCode?"+new Date());
  		});
  		
  		$("#loginbtn").click(function(){
  			var email = $("#email").val();
  			var password = $("#password").val();
  			var validatecode = $("#validatecode").val();
  			var img = $("#img");
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath }/user/login/"+validatecode,
                data:{
                	email:email,
                	password:password,
                	validatecode:validatecode
                },
                success:function(msg){
                    if(msg == 1){
                    	layer.msg("登录成功");
                    	window.location.href="${pageContext.request.contextPath }/";
                    }else if(msg == 0){
                    	layer.msg("验证码错误");
                    	img.attr("src","${pageContext.request.contextPath }/validateCode/getCode?"+new Date());
                    }else{
                    	layer.msg("登录失败"); 
                    }
                },
                error:function(msg){
                	alert("请求异常");
                }
            });
        });
  	});
  </script>
</head>
<body>

<%@include file="../common/header.jsp" %>

<div class="main layui-clear">

  <div class="fly-panel fly-panel-user" pad20>
    <div class="layui-tab layui-tab-brief">
      <ul class="layui-tab-title">
        <li class="layui-this">登入</li>
        <li><a href="${pageContext.request.contextPath }/user/regjsp">注册</a></li>
      </ul>
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <div class="layui-form layui-form-pane">
            <form method="post">
              <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                  <input type="text" id="email" name="email" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="password" name="password" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_vercode" class="layui-form-label">人类验证</label>
                <div class="layui-input-inline">
                  <input type="text" id="validatecode" name="validatecode" required lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-input-inline">
                  <img src="${pageContext.request.contextPath }/validateCode/getCode" id="img" >
                </div>
              </div>
              <div class="layui-form-item">
               <!--  <button class="layui-btn">立即登录</button> -->
               <input type="button" class="layui-btn" value="立即登录" id="loginbtn">
                <span style="padding-left:20px;">
                  <a href="forget.html">忘记密码？</a>
                </span>
              </div>
              <div class="layui-form-item fly-form-app">
                <span>或者使用社交账号登入</span>
                <a href="http://fly.layui.com:8098/app/qq" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-qq" title="QQ登入"></a>
                <a href="http://fly.layui.com:8098/app/weibo/" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" class="iconfont icon-weibo" title="微博登入"></a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>

<div class="footer">
  <p><a href="http://fly.layui.com/">Fly社区</a> 2019 &copy; <a href="http://www.layui.com/">layui.com</a></p>
  <p>
    <a href="http://fly.layui.com/auth/get" target="_blank">产品授权</a>
    <a href="http://fly.layui.com/jie/8157.html" target="_blank">获取Fly社区模版</a>
    <a href="http://fly.layui.com/jie/2461.html" target="_blank">微信公众号</a>
  </p>
</div>
<script src="${pageContext.request.contextPath}/res/layui/layui.js"></script>
<script>
layui.cache.page = 'user';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: '${pageContext.request.contextPath}/res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "2.0.0"
  ,base: '${pageContext.request.contextPath}/res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>

</body>
</html>