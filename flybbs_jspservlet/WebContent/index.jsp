<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>基于 layui 的极简社区页面模版</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/global.css">
</head>
<body>


<%@include file="/common/header.jsp/" %>

<div class="main layui-clear">
  <div class="wrap">
    <div class="content">
      <div class="fly-tab fly-tab-index">
        <span>
          <a href="jie/index.jsp">全部</a>
          <a href="jie/index.jsp">未结帖</a>
          <a href="jie/index.jsp">已采纳</a>
          <a href="jie/index.jsp">精帖</a>
          <a href="user/index.jsp">我的帖</a>
        </span>
        <form action="http://cn.bing.com/search" class="fly-search">
          <i class="iconfont icon-sousuo"></i>
          <input class="layui-input" autocomplete="off" placeholder="搜索内容，回车跳转" type="text" name="q">
        </form>
        <a href="jie/add.jsp" class="layui-btn jie-add">发布问题</a>
      </div>
      
      
      <ul class="fly-list fly-list-top">
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="http://tp4.sinaimg.cn/1345566427/180/5730976522/0" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">基于 layui的轻量级问答社区页面模版 V2版本</a>
            <span class="fly-tip-stick">置顶</span>
            <span class="fly-tip-jing">精帖</span>
          </h2>
          <p>
            <span><a href="user/home.jsp">贤心</a></span>
            <span>刚刚</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 317
              <i class="iconfont" title="人气">&#xe60b;</i> 6830
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/00.jpg" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">基于 layui的轻量级问答社区页面模版 V2版本</a>
            <span class="fly-tip-stick">置顶</span>
          </h2>
          <p>
            <span><a href="user/home.jsp">纸飞机</a></span>
            <span>30分钟前</span>
            <span>技术闲谈</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 502
              <i class="iconfont" title="人气">&#xe60b;</i> 81689
            </span>
          </p>
        </li>
      </ul>
      
      <ul class="fly-list">
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
        <li class="fly-list-li">
          <a href="user/home.jsp" class="fly-list-avatar">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png" alt="">
          </a>
          <h2 class="fly-tip">
            <a href="jie/detail.jsp">关于layui 引用其他插件，扩展模块 的用法</a>
          </h2>
          <p>
            <span><a href="user/home.jsp">用户昵称</a></span>
            <span>1小时前</span>
            <span>layui框架综合</span>
            <span class="fly-list-hint"> 
              <i class="iconfont" title="回答">&#xe60c;</i> 8
              <i class="iconfont" title="人气">&#xe60b;</i> 106
            </span>
          </p>
        </li>
      </ul>
      
      <div style="text-align: center">
        <div class="laypage-main">
          <a href="jie/index.jsp" class="laypage-next">更多求解</a>
        </div>
      </div>
      
    </div>
  </div>
  
  <div class="edge">
    <div class="fly-panel leifeng-rank"> 
      <h3 class="fly-panel-title">近一月回答榜 - TOP 12</h3>
      <dl>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
        <dd>
          <a href="user/home.jsp">
            <img src="${pageContext.request.contextPath}/res/images/avatar/default.png">
            <cite>纸飞机</cite>
            <i>159次回答</i>
          </a>
        </dd>
      </dl>
    </div>
    
    <dl class="fly-panel fly-list-one"> 
      <dt class="fly-panel-title">最近热帖</dt>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局（基本结构）</a>
        <span><i class="iconfont">&#xe60b;</i> 6087</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">Java实现LayIM后端的核心代码</a>
        <span><i class="iconfont">&#xe60b;</i> 767</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局（基本结构）</a>
        <span><i class="iconfont">&#xe60b;</i> 6087</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">Java实现LayIM后端的核心代码</a>
        <span><i class="iconfont">&#xe60b;</i> 767</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局（基本结构）</a>
        <span><i class="iconfont">&#xe60b;</i> 6087</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">Java实现LayIM后端的核心代码</a>
        <span><i class="iconfont">&#xe60b;</i> 767</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局（基本结构）</a>
        <span><i class="iconfont">&#xe60b;</i> 6087</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">Java实现LayIM后端的核心代码</a>
        <span><i class="iconfont">&#xe60b;</i> 767</span>
      </dd>
    </dl>
    
    <dl class="fly-panel fly-list-one"> 
      <dt class="fly-panel-title">近期热议</dt>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
      <dd>
        <a href="jie/detail.jsp">使用 layui 秒搭后台大布局之基本结构</a>
        <span><i class="iconfont">&#xe60c;</i> 96</span>
      </dd>
    </dl>
    
    <div class="fly-panel fly-link"> 
      <h3 class="fly-panel-title">友情链接</h3>
      <dl>
        <dd>
          <a href="http://www.layui.com/" target="_blank">layui</a>
        </dd>
        <dd>
          <a href="http://layim.layui.com/" target="_blank">LayIM</a>
        </dd>
        <dd>
          <a href="http://layer.layui.com/" target="_blank">layer</a>
        </dd>
      </dl>
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
layui.cache.page = '';
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