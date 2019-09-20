<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>帐号设置</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/layui/css/layui.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/global.css">
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/mods/layer.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/res/mods/jquery-3.4.1.min.js"></script>
  
  <script type="text/javascript">
	 	 $(function(){
			$("#btn_msg").click(function(){
				var email = $("#email").val();
				var nickname = $("#nickname").val();
				var sex = $("#sex").val();
				var city = $("#city").val();
				var signName = $("#signName").val();
	          $.ajax({
	              type:"post",
	              url:"${pageContext.request.contextPath }/user/setmsg",
	              data:{
	              	email:email,
	              	nickname:nickname,
	              	sex:sex,
	              	city:city,
	              	signName:signName
	              },
	              success:function(msg){
	                  if(msg == 1){
	                  	layer.msg("修改成功");
	                  	window.location.href="${pageContext.request.contextPath }/user/loginjsp";
	                  }
	              },
	              error:function(msg){
	              	alert("请求异常");
	              }
	          	});
	     	 });
			
			
			$("#nowpass").blur(function(){
				var nowpass = $("#nowpass").val();
				var password = $("#hidden_pass").val();
				var inspect = document.getElementById("inspect");
				if(nowpass != password){
					inspect.innerHTML = "密码输入错误";
					/* inspect.css("color","red"); */
				}else{
					inspect.innerHTML = "密码输入正确";
					/* inspect.css("color","green"); */
				}
			})
			
			$("#repass").blur(function(){
				var password = $("#hidden_pass").val();
				var newpass = $("#newpass").val();
				var repass = $("#repass").val();
				var repass_inspect = document.getElementById("repass_inspect");
				if(password == newpass){
					newpassword.innerHTML = "新密码不能与旧密码相同 " ;
				}else{
					if(newpass != repass){
						repass_inspect.innerHTML = "两次密码不相同，请确认后重新输入 ";
						/* inspect.css("color","red"); */
					}else{
						repass_inspect.innerHTML = "密码输入相同 ";
						/* inspect.css("color","green"); */
					}
				}
			})
			
			$("#btn_pass").click(function(){
				var nowpass = $("#nowpass").val();
				var newpass = $("#newpass").val();
				var repass = $("#repass").val();
				var repass_inspect = document.getElementById("repass_inspect");
				var newpassword = document.getElementById("newpassword");
				var password = $("#hidden_pass").val();
				var inspect = document.getElementById("inspect");
				if(nowpass == password && nowpass != newpass && newpass == repass){
		          $.ajax({
		              type:"post",
		              url:"${pageContext.request.contextPath }/user/setpass/"+newpass,
		              data:{
		            	  newpass:newpass
		              },
		              success:function(msg){
		                  if(msg == 1){
		                  	layer.msg("修改成功");
		                  	window.location.href="${pageContext.request.contextPath }/user/loginjsp";
		                  }
		              },
		              error:function(msg){
		              	alert("请求异常");
		              }
		          });
				}else{
					confirm("请确保输入数据正确");
				}
	    	});
	  	});
  </script>
</head>
<body>

<%@include file="../common/header.jsp" %>

<div class="main fly-user-main layui-clear">
  
  <%@ include file="../common/menu.jsp"%>
  
  <div class="site-tree-mobile layui-hide">
    <i class="layui-icon">&#xe602;</i>
  </div>
  <div class="site-mobile-shade"></div>
  
  <div class="fly-panel fly-panel-user" pad20>
    <div class="layui-tab layui-tab-brief" lay-filter="user">
      <ul class="layui-tab-title" id="LAY_mine">
        <li class="layui-this" lay-id="info">我的资料</li>
        <li lay-id="avatar">头像</li>
        <li lay-id="pass">密码</li>
        <li lay-id="bind">帐号绑定</li>
      </ul>
      <div class="layui-tab-content" style="padding: 20px 0;">
        <div class="layui-form layui-form-pane layui-tab-item layui-show">
          <form>
            <div class="layui-form-item">
              <label for="email" class="layui-form-label">邮箱</label>
              <div class="layui-input-inline">
                <input type="text" id="email" name="email" required lay-verify="email" autocomplete="off" value="" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">如果您在邮箱已激活的情况下，变更了邮箱，需<a href="activate.html" style="font-size: 12px; color: #4f99cf;">重新验证邮箱</a>。
              </div>
            </div>
            <div class="layui-form-item">
              <label for="nickname" class="layui-form-label">昵称</label>
              <div class="layui-input-inline">
                <input type="text" id="nickname" name="nickname" required lay-verify="required" autocomplete="off" value="" class="layui-input">
              </div>
              <div class="layui-inline" >
                <div class="layui-input-inline">
                  <input type="radio" name="sex" value="0" checked title="男">
                  <input type="radio" name="sex" value="1" title="女">
                </div>
              </div>
            </div>
            <div class="layui-form-item">
              <label for="city" class="layui-form-label">城市</label>
              <div class="layui-input-inline">
                <input type="text" id="city" name="city" autocomplete="off" value="" class="layui-input">
              </div>
            </div>
            <div class="layui-form-item layui-form-text">
              <label for="signName" class="layui-form-label">签名</label>
              <div class="layui-input-block">
                <textarea placeholder="随便写些什么刷下存在感" id="signName"  name="signName" autocomplete="off" class="layui-textarea" style="height: 80px;"></textarea>
              </div>
            </div>
            <div class="layui-form-item">
             <!--  <button class="layui-btn" key="set-mine" id="btn_msg">确认修改</button> -->
              <input type="button" class="layui-btn" value="确认修改" id="btn_msg">
            </div>
           </form>
          </div>
          
          <div class="layui-form layui-form-pane layui-tab-item">
            <div class="layui-form-item">
              <div class="avatar-add">
                <p>建议尺寸168*168，支持jpg、png、gif，最大不能超过30KB</p>
                <div class="upload-img">
                  <input type="file" name="file" id="LAY-file" lay-title="上传头像">
                </div>
                <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0">
                <span class="loading"></span>
              </div>
            </div>
          </div>
          
          <div class="layui-form layui-form-pane layui-tab-item">
            <form action="/user/repass" method="post">
              <div class="layui-form-item">
                <label for="nowpass" class="layui-form-label">当前密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="nowpass" name="nowpass" required lay-verify="required" autocomplete="off" class="layui-input">
                  <input type="hidden" id="hidden_pass" value="${sessionScope.user.password }"/>
                </div>
                <div class="layui-form-mid layui-word-aux" id="inspect"></div>
              </div>
              <div class="layui-form-item">
                <label for="newpass" class="layui-form-label">新密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="newpass" name="newpass" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux" id = "newpassword">6到16个字符</div>
              </div>
              <div class="layui-form-item">
                <label for="repass" class="layui-form-label">确认密码</label>
                <div class="layui-input-inline">
                  <input type="password" id="repass" name="repass" required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux" id="repass_inspect"></div>
              </div>
              <div class="layui-form-item">
               <!--  <button class="layui-btn" key="set-mine" lay-filter="*" lay-submit>确认修改</button> -->
                <input type="button" class="layui-btn" value="确认修改" id="btn_pass">
              </div>
            </form>
          </div>
          
          <div class="layui-form layui-form-pane layui-tab-item">
            <ul class="app-bind">
              <li class="fly-msg app-havebind">
                <i class="iconfont icon-qq"></i>
                <span>已成功绑定，您可以使用QQ帐号直接登录Fly社区，当然，您也可以</span>
                <a href="javascript:;" class="acc-unbind" type="qq_id">解除绑定</a>
                
                <!-- <a href="" onclick="layer.msg('正在绑定微博QQ', {icon:16, shade: 0.1, time:0})" class="acc-bind" type="qq_id">立即绑定</a>
                <span>，即可使用QQ帐号登录Fly社区</span> -->
              </li>
              <li class="fly-msg">
                <i class="iconfont icon-weibo"></i>
                <!-- <span>已成功绑定，您可以使用微博直接登录Fly社区，当然，您也可以</span>
                <a href="javascript:;" class="acc-unbind" type="weibo_id">解除绑定</a> -->
                
                <a href="" class="acc-weibo" type="weibo_id"  onclick="layer.msg('正在绑定微博', {icon:16, shade: 0.1, time:0})" >立即绑定</a>
                <span>，即可使用微博帐号登录Fly社区</span>
              </li>
            </ul>
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