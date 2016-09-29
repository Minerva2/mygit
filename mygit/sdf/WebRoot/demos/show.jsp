<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@	taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>草稿箱</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
			content="width=device-width, initial-scale=1, user-scalable=no">
	<meta name="description" content="">

	<link rel="stylesheet" href="<%=path%>/lib/weui.min.css">
	<link rel="stylesheet" href="<%=path%>/css/jquery-weui.css">
	<link rel="stylesheet" href="<%=path%>/css/style.css">
	<link rel="stylesheet" href="<%=path%>/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=path%>/demos/css/demos.css">

	<script src="<%=path%>/lib/jquery-2.1.4.js"></script>
	<script src="<%=path%>/js/jquery-weui.js"></script>
	<script src='<%=path%>/js/swiper.js'></script>
	<script src="<%=path%>/js/city-picker.js"></script>
	<script src="<%=path%>/lib/fastclick.js"></script>

	</head>
  
  <body ontouchstart>
  		<!--头部 开始 -->
		<header class="bar bar-nav">
		<!--<i class="fa fa-arrow-left" style="font-size: 18px;float: left;"></i>-->
		<h1 class="title">
			草稿箱
		</h1>
		</header>
		<!--头部 结束 -->
  		
  		<!--列表 开始 -->
		<div class="bd" style="margin-top: 50px;">
			<%
				List<Map> ques = (List<Map>) request.getAttribute("questions");
				for (int i = 0; i < ques.size(); i++) {
			%>
			<div class="weui_cells weui_cells_access">
				<a class="weui_cell" href="<%=path%>/detail.action?method=detail&num=<%=ques.get(i).get("num")%>">
					<div class="weui_cell_bd weui_cell_primary">
						<p>
							<% 
							String title = (String)ques.get(i).get("title");
							if(title.length()>5){
								title = title.substring(0,5);
								title = title + "..";
							}
						%>
						<%=title %>
						</p>
					</div>
					<div class="weui_cell_ft">
						<% 
							title = (String)ques.get(i).get("content");
							if(title.length()>15){
								title = title.substring(0,15);
								title = title + "..";
							}
						%>
						<%=title %>
					</div> </a>
			</div>
			<%
				}
			%>
		</div>
		<!--列表 结束 -->
		
		<%-- 底部菜单 开始--%>
		<div class="weui_tabbar">
			<a href="javascript:;" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<img src="<%=path%>/demos/images/icon_nav_cell.png" alt="">
				</div>
				<p class="weui_tabbar_label">
					问题列表
				</p> </a>
			<a href="javascript:;" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<img src="<%=path%>/demos/images/icon_nav_cell.png" alt="">
				</div>
				<p class="weui_tabbar_label">
					草稿箱
				</p> </a>
			<a href="javascript:;" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<img src="<%=path%>/demos/images/icon_nav_cell.png" alt="">
				</div>
				<p class="weui_tabbar_label">
					统计
				</p> </a>
		</div>
		<%-- 底部菜单 结束--%>
	</body>
	<script>
		$(function() {
			FastClick.attach(document.body);
		});
	</script>
</html>
