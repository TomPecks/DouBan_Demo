<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sign-in</title>
<script type="text/javascript" src="../JS/jquery.js"></script>
<script type="text/javascript" src="../JS/sign.js"></script>
<script type="text/javascript" src="../JS/index.js"></script>
<link rel="stylesheet" href="../CSS/amazeui.min.css" />
<link rel="stylesheet" href="../CSS/styles.css" />
</head>
<body>
	<div id="sign-in" class="sign-in" >
	<div class="header">
		<div class="am-g">
			<h1>欢迎来到豆瓣，请登录</h1>
		</div>
	</div>
	<div class="am-g sign-form">
		<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
			<form id="in-form" action="../St_login" method="post" class="am-form">
				<div class="sign-text">
				<input type="text" name="in_userName" id="in-userName" value=""
					placeholder="请输入用户名">
				</div> 
				<div class="sign-text">
				<input type="password" name="in_password"
					id="in-password" value="" placeholder="请输入密码">
				</div>
				<div class="am-cf">
					<input type="submit" name="" value="登录豆瓣" id="in-submit"
						class="am-btn am-btn-primary am-btn-sm am-fl sign-btn">
				</div>
				<div class="remember-me">
				<label for="remember-me"> <input id="remember-me"
					type="checkbox"> 记住密码
				</label>
				</div>
				<div class="sign-up-la">
					<a href="####" id="sign-up-la">注册新账号</a>
				</div>
			</form>
		</div>
	</div>
	</div>
</body>
</html>