<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<title>登录</title>
	<!-- CDN镜像，加快访问速度 -->
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<!-- AMAZE UI -->
	<link href="http://cdn.amazeui.org/amazeui/2.7.2/css/amazeui.min.css" rel="stylesheet">
	<link href="assets/css/app.css" rel="stylesheet">
	<script src="http://cdn.amazeui.org/amazeui/2.7.2/js/amazeui.min.js"></script>
	<!--<script src="http://cdn.amazeui.org/amazeui/2.7.2/js/amazeui.widgets.helper.min.js"></script> -->

	<!-- 手机端控制尺寸 为手机适配 -->
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
</head>

<body>
<!-- 导航栏  -->
	<header data-am-widget="header" class="am-header am-header-default am-header-fixed">
	<div class="am-header-left am-header-nav">
		<a href="index.jsp" class="">
		<i class="am-header-icon am-icon-home">&nbsp;</i>
		</a>
	</div>

	<h1 class="am-header-title">营养订餐</h1>

	<% if (session.getAttribute("username") != null ) { %>
	<div class="am-header-right am-header-nav">
		<a href="/logout">
		<i class="am-header-icon am-icon-bars">&nbsp;</i>
		</a>
	</div>
	<% } %>
	</header>
<!-- 内容  -->
	<form class="am-form">
		<fieldset>
			<legend>登录</legend>

			<div class="am-form-group">
				<label for="doc-ipt-email-1">邮箱</label> 
				<input type="email" class="" id="doc-ipt-email-1" placeholder="请输入邮箱账号">
			</div>

			<div class="am-form-group">
				<label for="doc-ipt-pwd-1">密码</label>
				<input type="password" class="" id="doc-ipt-pwd-1" placeholder="请输入密码">
			</div>
			<center>
				<button type="submit" class="am-btn am-btn-default btn-login">登录</button>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<a class="a-create">没有账号？注册一个吧！</a>
			</center>

		</fieldset>
	</form>
	<!-- 底部栏  -->
	<footer class="am-topbar am-topbar-inverse am-topbar-fixed-bottom">
	<ul class="am-avg-sm-3">
		<li><a class="footer-a" href="index"><div>首页</div></a></li>
		<li><a class="footer-a" href="analysis"><div>营养分析</div></a></li>
		<% if (session.getAttribute("username") == null ) { %>
		<li><a class="footer-a" href="login"><div>登录</div></a></li>
		<% } else { %>
		<li><a class="footer-a" href="account"><div>我的</div></a></li>
		<% } %>
	</ul>
	</footer>
</body>
</html>