<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">
	<title>首页</title>
	<!-- CDN镜像，加快访问速度 -->
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<!-- 使用rem相对像素适配代码，1rem=100px -->
	<script>
	(function(doc, win) {
		var docEl = doc.documentElement,
			resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
			recalc = function() {
				var clientWidth = docEl.clientWidth;
				if (!clientWidth) return;
				if (clientWidth >= 640) {
					docEl.style.fontSize = '100px';
				} else {
					docEl.style.fontSize = 100 * (clientWidth / 640) + 'px';
				}
			};

		if (!doc.addEventListener) return;
		win.addEventListener(resizeEvt, recalc, false);
		doc.addEventListener('DOMContentLoaded', recalc, false);
	})(document, window);
	</script>
	<style type="text/css">
		。navbar-brand {
			font-size: 1rem;
		}
		.btn-default {
			font-size: 0.3rem;
		}
	</style>
</head>

<body>
	<nav class="nav navbar-default">
		<div class="container-fluid">
			<div class="navbar-brand">HOME</div>
		</div>
	</nav>

	<nav class="navbar-fixed-bottom">
		<div class="container">
			<div class="btn-group btn-group-justified" role="group">
				<div class="btn-group" role="group">
					<a href="/index"><button type="button" class="btn btn-default">首页</button></a>
				</div>
				<div class="btn-group" role="group">
					<a href="/analysis"><button type="button" class="btn btn-default">营养分析</button></a>
				</div>
				<div class="btn-group" role="group">
					<a href="login.jsp"><button type="button" class="btn btn-default">帐号</button></a>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>
