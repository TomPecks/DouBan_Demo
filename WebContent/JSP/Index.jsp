<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<script type="text/javascript" src="../JS/jquery.js"></script>
<script type="text/javascript" src="../JS/index.js"></script>
<script type="text/javascript" src="../JS/amazeui.min.js"></script>
<link rel="stylesheet" href="../CSS/amazeui.min.css" />
<link rel="stylesheet" href="../CSS/styles.css" />
</head>
<body>
	<div id="gray"></div>
	<div id="sign-in-page" style="display: none;"><jsp:include
			page="Sign.jsp"></jsp:include></div>
	<div id="sign-up-page" style="display: none;"><jsp:include
			page="SignUp.jsp"></jsp:include></div>

	<div class="index-body">
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
						<li class="am-active"><a href="#">原创作品</a></li>
						<li><a href="#">作者专栏</a></li>
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
		
		<div class="index-main">
		<div class="index-sidebar">
			<div class="am-panel-group">
				<section class="am-panel am-panel-default">
				<div class="am-panel-hd">成为作者</div>
				<div class="am-panel-bd">
					<p>个人作者可以在豆瓣上直接发布作品。内容领域不限，唯一要求是质量优秀。开售后，作者可直接从作品销售中获得分成。</p>
					<a class="am-btn am-btn-success am-btn-sm" href="#">投稿 →</a>
				</div>
				</section>

				<section class="am-panel am-panel-default">
				<div class="am-panel-hd">分类</div>
				<ul class="am-nav">
					<li><a href="#">小说</a></li>
					<li><a href="#">文艺散文</a></li>
					<li><a href="#">评论随笔</a></li>
					<li><a href="#">历史纪实</a></li>
					<li><a href="#">科技科普</a></li>
					<li><a href="#">情感成长</a></li>
				</ul>
				</section>

				<section class="am-panel am-panel-default">
				<div class="am-panel-hd ">排行榜</div>
				<ul class="am-list">
					<li><a href="#"></a></li>
				</ul>
				</section>

				<section class="am-panel am-panel-default">
				<div class="am-panel-hd">关于我们</div>
				<div class="am-panel-bd">
					<ul class="am-avg-sm-2 ">
						<li><div>
								<img alt="" src="../images/lz.png" width="70px;" height="70px;"><br>
								<span style="font-size: small;">组长：刘泽</span>
							</div></li>
						<li><div>
								<img alt="" src="../images/zsz.png" width="70px;" height="70px;"><br>
								<span style="font-size: small;">组员：邹思仲</span>
							</div></li>
					</ul>
				</div>
				</section>
			</div>
		</div>

		<div class="index-book">
			<div class="am-panel-group">
				<section class="am-panel am-panel-default">
				<div class="am-panel-hd">编辑推荐</div>
				<div class="am-panel-bd">
					<ul class="am-avg-sm-2 ">
						<%
							for (int i = 0; i < 4; i++) {
						%>
						<li><div class="am-thumbnail" style="height: 170px;">
								<div class="book-pic">
									<img alt="" src="../images/book_example.jpg" width="110"
										height="164">
								</div>
								<div class="book-info">
									<h4 class="title">
										<a href="">雪人幻想</a>
									</h4>
									<div class="author">
										作者：<span class="orig-author">七弦弹</span>
									</div>
									<div class="rec-intro">风雪中飘散的寒梅，公园里哭泣的老妪，随着幻灭雪人的出现，揭开了二十多年前的一桩惊天秘密。</div>
									<div class="price-info">
										<span class="price-tag ">2.99元</span><a class="small-btn"
											href="" target="_blank">试读</a>
									</div>
								</div>
							</div></li>
						<%
							}
						%>
					</ul>
				</div>
				</section>

				<section class="am-panel am-panel-default">
				<div class="am-panel-hd">小说</div>
				<div class="am-panel-bd">
					<ul class="am-avg-sm-3 ">
						<%
							for (int i = 0; i < 6; i++) {
						%>
						<li><div class="am-thumbnail" style="height: 170px;">
								<div class="book-pic">
									<img alt="" src="../images/book_example_1.jpg" width="110"
										height="164">
								</div>
								<div class="book-info">
									<h4 class="title">
										<a href="">貔貅</a>
									</h4>
									<div class="author">
										作者：<span class="orig-author">石黑耀</span>
									</div>
									<div class="rec-intro">曲折而难忘的科研历程，简短而动人的科幻故事。</div>
									<div class="price-info">
										<span class="price-tag ">1.99元</span><a class="small-btn"
											href="" target="_blank">试读</a>
									</div>
								</div>
							</div></li>
						<%
							}
						%>
						<li><button id="book-left"
								class="am-btn am-btn-secondary am-btn-sm book-left">上一页</button></li>
						<li><span>&nbsp;</span></li>
						<li><button id="book-right"
								class="am-btn am-btn-secondary am-btn-sm book-right">下一页</button></li>
					</ul>
				</div>
				</section>
				
				<section class="am-panel am-panel-default">
				<div class="am-panel-hd">科技科普</div>
				<div class="am-panel-bd">
					<ul class="am-avg-sm-3 ">
						<%
							for (int i = 0; i < 6; i++) {
						%>
						<li><div class="am-thumbnail" style="height: 170px;">
								<div class="book-pic">
									<img alt="" src="../images/book_example_2.jpg" width="110"
										height="164">
								</div>
								<div class="book-info">
									<h4 class="title">
										<a href="">你的所有密码我都知道</a>
									</h4>
									<div class="author">
										作者：<span class="orig-author">Albert Shi</span>
									</div>
									<div class="rec-intro">2068年，一种新型的职业——真实记忆筛选师——诞生……</div>
									<div class="price-info">
										<span class="price-tag ">1.99元</span><a class="small-btn"
											href="" target="_blank">试读</a>
									</div>
								</div>
							</div></li>
						<%
							}
						%>
						<li><button id="book-left"
								class="am-btn am-btn-secondary am-btn-sm book-left">上一页</button></li>
						<li><span>&nbsp;</span></li>
						<li><button id="book-right"
								class="am-btn am-btn-secondary am-btn-sm book-right">下一页</button></li>
					</ul>
				</div>
				</section>
			</div>
		</div>
		</div>
	<script type="text/javascript" src="../JS/footer.js"></script>
	</div>
</body>
</html>