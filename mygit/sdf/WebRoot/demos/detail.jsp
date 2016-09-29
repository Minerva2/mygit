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
		<title>查看问题</title>
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
			<s:property value="que.title" />
		</h1>
		</header>
		<!--头部 结束 -->
		
		<%-- 表单 开始--%>
		<form action="" id="form" method="post" >
		<div class="bd">
			<div class="weui_cells">
				<div class="weui_cell">
					<div class="weui_cell_bd weui_cell_primary">
						<p>
							编号:
						</p>
					</div>
					<div class="weui_cell_ft">
						<s:property value="que.num" />
					</div>
				</div>
				<div class="weui_cell">
					<div class="weui_cell_bd weui_cell_primary">
						<p>
							项目名称:
						</p>
					</div>
					<div class="weui_cell_ft">
						<s:property value="que.project" />
					</div>
				</div>
				<div class="weui_cell">
					<div class="weui_cell_bd weui_cell_primary">
						<p>
							问题类型:
						</p>
					</div>
					<div class="weui_cell_ft">
						<s:property value="que.type" />
					</div>
				</div>
			</div>
			<div class="weui_panel">
				<div class="weui_panel_bd">
					<div class="weui_media_box weui_media_text">
						<h4 class="weui_media_title">
							描述
						</h4>
						<p class="weui_media_desc">
							<s:property value="que.content" />
						</p>
						<ul class="weui_media_info">
							<li class="weui_media_info_meta">
								填报人
							</li>
							<li class="weui_media_info_meta weui_media_info_meta_extra">
								<s:property value="que.written" />	<s:property value="que.tel" />
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		</form>
		<%-- 表单 结束--%>

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
</html>
