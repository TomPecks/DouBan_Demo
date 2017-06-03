<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../JS/jquery.js"></script>
<script type="text/javascript" src="../JS/sign.js"></script>
<script type="text/javascript" src="../JS/index.js"></script>
<link rel="stylesheet" href="../CSS/amazeui.min.css" />
<link rel="stylesheet" href="../CSS/styles.css" />
</head>
<body>
	<div id="sign-up" class="sign-up">
		<div class="header">
			<div class="am-g">
				<h1>欢迎来到豆瓣，请注册</h1>
			</div>
		</div>
		<div class="am-g sign-form">
			<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
				<form id="up-form" action="St_register.action" method="post"
					class="am-form">
					<div id="txt-username"
						class="sign-text am-form-group am-form-icon am-form-feedback">
						<input type="text" name="up_userName" id="up-userName" value=""
							class="am-form-field" placeholder="请输入用户名"><span
							id="ico-username" class="reg-span"></span>
					</div>
					<div id="txt-password"
						class="sign-text am-form-group am-form-icon am-form-feedback">
						<input type="password" name="up_password" class="am-form-field"
							id="up-password" value="" placeholder="请输入密码"><span
							id="ico-password" class="reg-span"></span>
					</div>
					<div id="txt-phonenum"
						class="sign-text am-form-group am-form-icon am-form-feedback">
						<input type="text" name="up_phonenum" id="up-phonenum" value=""
							class="am-form-field" placeholder="请输入手机号"><span
							id="ico-phonenum" class="reg-span"></span>
					</div>
					<div class="am-cf">
						<input type="submit" name="" id="up-submit" value="注册豆瓣账号"
							class="am-btn am-btn-primary am-btn-sm am-fl sign-btn">
					</div>
					<div class="sign-rules-la">
						<label>注册即表示你同意遵守 <a>《使用协议》</a>
						</label>
					</div>
					<div class="sign-in-la">
						<a href="####" id="sign-in-la">返回登录</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>