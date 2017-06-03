<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../JS/jquery.js"></script>
<script type="text/javascript" src="../JS/index.js"></script>
<link rel="stylesheet" href="../CSS/amazeui.min.css" />
<link rel="stylesheet" href="../CSS/styles.css" />
</head>
<body>

	<div id="gray"></div>
	<div id="sign-in-page" style="display: none;"><jsp:include
			page="Sign.jsp"></jsp:include></div>
	<div id="sign-up-page" style="display: none;"><jsp:include
			page="SignUp.jsp"></jsp:include></div>

	<div class="index-nav">
		<header class="am-topbar am-topbar-fixed-top">
		<div class="am-container">
			<h1 class="am-topbar-brand">
				<a href="#">豆瓣阅读</a>
			</h1>

			<button
				class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-secondary am-show-sm-only"
				data-am-collapse="{target: '#collapse-head'}">
				<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
			</button>

			<div class="am-collapse am-topbar-collapse" id="collapse-head">
				<ul class="am-nav am-nav-pills am-topbar-nav">
					<li id="article" class="am-active"><a href="Index.jsp">原创作品</a></li>
					<li id="author" class=""><a href="Author.jsp">作者专栏</a></li>
				</ul>

				<form class="am-topbar-form am-form-inline am-topbar-left"
					role="search">
					<div class="am-form-group">
						<input class="am-form-field am-input-sm" type="text"
							placeholder="搜索书籍/作者/用户">
					</div>
					<button class="am-btn am-btn-default am-btn-sm" type="submit">搜索</button>
				</form>
				
				<div class="am-topbar-right">
					<button id="register"
						class="am-btn am-btn-secondary am-topbar-btn am-btn-sm">
						<span class="am-icon-pencil"></span> 注册
					</button>
				</div>

				<div class="am-topbar-right">
					<button id="login"
						class="am-btn am-btn-primary am-topbar-btn am-btn-sm">
						<span class="am-icon-user"></span> 登录
					</button>
				</div>
			</div>
		</div>
		</header>
	</div>
</body>
</html>