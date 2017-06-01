<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作者专区</title>
<script type="text/javascript" src="../JS/jquery.js"></script>
<script type="text/javascript" src="../JS/index.js"></script>
<link rel="stylesheet" href="../CSS/amazeui.min.css" />
<link rel="stylesheet" href="../CSS/styles.css" />
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="index-main am-g">
		<jsp:include page="Sidebar.jsp"></jsp:include>
		<div class="index-book">
			<div class="am-panel-group">
				<section class="am-panel am-panel-default">
				<div class="am-panel-hd">推荐作者</div>
				<div class="am-panel-bd">
					<ul class="am-avg-sm-2 ">
						<%
							for (int i = 0; i < 6; i++) {
						%>
						<li><div class="am-thumbnail" style="height: 150px;">
								<div class="author-pic">
									<img alt="" src="../images/author_example.jpg" width="80px"
										height="85px">
								</div>
								<div class="author-info">
									<h4>
										<a href="">朱一叶</a>
									</h4>
									<div class="author-intro">朱一叶，女，1984年生，摆过地摊，拍过短片。目前暂住海边小县城，卖果酱和肥皂。我的名字不是笔名。</div>
									<div class="magnum-opus" style="margin-top: 15px;">
										<a href="">《亲爱的，你不知道我是哪种人》</a><a
											href="">《时间被轻松地打发了》</a><a
											href="">《哈扎尔之匙》</a>
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
				<div class="am-panel-hd">作者排行Top10</div>
				<div class="am-panel-bd">
					<ul class="am-avg-sm-2">
						<%
							for (int i = 0; i < 10; i++) {
						%>
						<li><div class="am-thumbnail" style="height: 130px;">
								<div class="author-pic">
									<img alt="" src="../images/author_example.jpg" width="80px"
										height="85px">
								</div>
								<div class="author-info">
									<h4>
										<a href="">朱一叶</a>
									</h4>
									<div class="author-intro">排名：第<%= i+1 %>名<br>销量：34523本</div>
									<div class="magnum-opus" style="margin-top: 5px;">
										<a href="">《亲爱的，你不知道我是哪种人》等5部作品</a>
									</div>
								</div>
							</div></li>
						<%
							}
						%>
					</ul>
				</div>
				</section>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../JS/footer.js"></script>
	<script type="text/javascript">
		$("#author").addClass("am-active");
		$("#article").removeClass("am-active");
		$("#sidebar-classify").hide();
		$("#sidebar-range").hide();
	</script>
</body>
</html>