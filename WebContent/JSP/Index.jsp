<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>原创作品 | 豆瓣阅读</title>
<script type="text/javascript" src="../JS/jquery.js"></script>
<script type="text/javascript" src="../JS/index.js"></script>
<link rel="stylesheet" href="../CSS/amazeui.min.css" />
<link rel="stylesheet" href="../CSS/styles.css" />
</head>
<body>

	<div class="index-body">
		<jsp:include page="Header.jsp"></jsp:include>

		<div class="index-main">
			<jsp:include page="Sidebar.jsp"></jsp:include>

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