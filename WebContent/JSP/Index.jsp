<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<script type="text/javascript" src="../JS/jquery.js"></script>
<script type="text/javascript" src="../JS/index.js"></script>
<link rel="stylesheet" href="../CSS/amazeui.min.css" />
<style>
#gray{width:100%;height:100%;background:rgba(0,0,0,0.3);position:fixed;top:0px;display:none;z-index:99;}
#sign-in-page{width:1200px;height:500px;position:absolute;z-index:100;left:400px;top:96px;}
#sign-up-page{width:1200px;height:500px;position:absolute;z-index:100;left:400px;top:96px;}
</style>
</head>
<body>
<button id="login">登录</button>
<button id="register" >注册</button>
<div id="gray"></div>
<div id="sign-in-page" style="display:none;"><jsp:include page="Sign.jsp" ></jsp:include></div>
<div id="sign-up-page" style="display:none;"><jsp:include page="SignUp.jsp"></jsp:include></div>
</body>
</html>