<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>注册</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="../res/layui/css/layui.css">
  <link rel="stylesheet" href="../res/css/global.css">
 	<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/jquery-3.4.1.min.js"></script> --%>
  <script type="text/javascript">
	/* 	$(function(){
			$("#regist").click(function(){
				var email =$("#L_email").val();
				var password =$("#L_pass").val();
				var repassword =$("#L_repass").val();
				var username =$("#L_username").val();//昵称
				var vercode =$("#L_vercode").val();//验证码
				$.ajax({
					url:"",
					type:"post",
					data:{
						flag:"regist",
						email:email,
						password:password,
						username:username,
						vercode:vercode
					},
					dataType:"text",
					success:function(msg){
						alert(msg);
					},
					error:function(msg){
						alert(msg);
					}
				});
			});
		}); */
		
		var a = false ;
		var b = false ;
		//判断邮箱是否存在
		function v_email(){
			var email = document.getElementById("L_email").value;
			var xml = new XMLHttpRequest();
			var inner = document.getElementById("email_1");
			xml.open("post","../regServlet",true);
			xml.setRequestHeader("Content-Type","application/x-www-form-urlencoded;");
			xml.send("email="+email);
			xml.onload = function(){
				var n = xml.responseText;
				if(email.trim() != ""){			
					if(n == 1){ //不重复，可以注册
						inner.innerHTML = "邮箱可用".fontcolor("green");
						a = true ;
					}
					if(n == -1){ // 邮箱已存在
						inner.innerHTML = "邮箱不可用".fontcolor("red");
					}
				}else{
					inner.innerHTML = "邮箱不正确".fontcolor("red");
				}
			}
		}
		//判断两次密码输入是否相同
		function password(){
			var pass1 = document.getElementById("L_pass");
			var pass2 = document.getElementById("L_repass");
			var span1 = document.getElementById("span1");
			if(pass1.value.trim() != "" && pass2.value.trim() != ""){
				if(pass1.value == pass2.value){
					span1.innerHTML="密码一致".fontcolor("green");
					b = true ;
				}else{
					span1.innerHTML="密码不一致".fontcolor("red");
				}
			}
			
		}
		//判断信息合法提交
		function submit1(){
			var form1 = document.getElementById("form1");
			if(a && b){
				form1.submit();
			}else{
				alert("信息错误，请重新输入");
				window.location.href = "reg.jsp";
			}
		}
  </script>
</head>
<body>
<%@ include file="../common/header.jsp/" %>

<div class="main layui-clear">

  <div class="fly-panel fly-panel-user" pad20>
    <div class="layui-tab layui-tab-brief">
      <ul class="layui-tab-title">
        <li><a href="login.html">登入</a></li>
        <li class="layui-this">注册</li>
      </ul>
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <div class="layui-form layui-form-pane">
            <form method="post" action="" enctype="multipart/form-data" id="form1">
              <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_email" name="email" required ="email" autocomplete="off" class="layui-input" onblur="v_email()">
                </div>
                <div class="layui-form-mid layui-word-aux" id="email_1">将会成为您唯一的登入名</div>
              </div>
              <div class="layui-form-item">
                <label for="L_username" class="layui-form-label">昵称</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_username" name="username" required ="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_pass" name="pass" required ="required" autocomplete="off" class="layui-input" onblur="password()"/>
                </div>
                <div class="layui-form-mid layui-word-aux">6到16个字符</div>
              </div>
              <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">确认密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="L_repass" name="repass" required ="required" autocomplete="off" class="layui-input" onblur="password()"/>         
                </div>
                <span id="span1"></span>
              </div>
              <div class="layui-form-item">
                <label for="L_vercode" class="layui-form-label">人类验证</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_vercode" name="vercode" required ="required" placeholder="请回答后面的问题" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid">
                  <span style="color: #c00;">{{d.vercode}}</span>
                </div>
              </div>
              <div class="layui-form-item">
                <input type="submit" class="layui-btn" lay-filter="*" lay-submit id="regist" onclick="submit1()" value="立即注册">
              </div>
              <div class="layui-form-item fly-form-app">
                <span>或者直接使用社交账号快捷注册</span>
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
  <p><a href="http://fly.layui.com/">Fly社区</a> 2017 &copy; <a href="http://www.layui.com/">layui.com</a></p>
  <p>
    <a href="http://fly.layui.com/auth/get" target="_blank">产品授权</a>
    <a href="http://fly.layui.com/jie/8157.html" target="_blank">获取Fly社区模版</a>
    <a href="http://fly.layui.com/jie/2461.html" target="_blank">微信公众号</a>
  </p>
</div>
<script src="../res/layui/layui.js"></script>
<script>
layui.cache.page = 'user';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: '../res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "2.0.0"
  ,base: '../res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>

</body>
</html>