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
		<title>其他问题新增</title>
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
			其他问题新增
		</h1>
		</header>
		<!--头部 结束 -->

		<%-- 表单 开始--%>
		<form action="<%=path%>/add.action" id="form" method="post" >
		<div class="bd" style="margin-top: 50px;">
			<div class="weui_cells">
				<div class="weui_cell">
					<div class="weui_cell_hd">
						<label class="weui_label">
							标题：
						</label>
					</div>
					<div class="weui_cell_bd weui_cell_primary">
						<input class="weui_input" name="que.title" placeholder="请输入标题">
					</div>
				</div>
				<div class="weui_cell weui_cell_select">
					<div class="weui_cell_bd weui_cell_primary">
						<select class="weui_select" name="project" id="project">
							<option selected="" value="0">
								项目：
							</option>
							<option value="1">
								职工医保系统
							</option>
							<option value="2">
								居民医保系统
							</option>
							<option value="3">
								居民养老系统
							</option>
						</select>
					</div>
				</div>
				<div class="weui_cell weui_cell_select">
					<div class="weui_cell_bd weui_cell_primary">
						<select class="weui_select" name="insurance" id="insurance">
							<option selected="" value="0">
								险种：
							</option>
							<option value="1">
								职工医保
							</option>
							<option value="2">
								居民医保
							</option>
							<option value="3">
								居民养老
							</option>
						</select>
					</div>
				</div>
				<div class="weui_cell weui_cell_select">
					<div class="weui_cell_bd weui_cell_primary">
						<select class="weui_select" name="type" id="type">
							<option selected="" value="0">
								问题类型：
							</option>
							<option value="1">
								修改身份证
							</option>
							<option value="2">
								参保人信息维护
							</option>
							<option value="3">
								其他问题
							</option>
						</select>
					</div>
				</div>
				<div class="weui_cells_title">
					描述
				</div>
				<div class="weui_cells weui_cells_form">
					<div class="weui_cell">
						<div class="weui_cell_bd weui_cell_primary">
							<textarea id="content" class="weui_textarea" placeholder="请输入描述" rows="3"></textarea>
							<div class="weui_textarea_counter">
								<span>0</span>/200
							</div>
						</div>
					</div>
				</div>
				<div class="weui_cell">
					<div class="weui_cell_hd">
						<label class="weui_label">
							填写人：
						</label>
					</div>
					<div class="weui_cell_bd weui_cell_primary">
						<input class="weui_input" id="wirtten" placeholder="请输入填写人">
					</div>
				</div>
				<div class="weui_cell">
					<div class="weui_cell_hd">
						<label class="weui_label">
							电话：
						</label>
					</div>
					<div class="weui_cell_bd weui_cell_primary">
						<input class="weui_input" id="tel" type="tel" placeholder="请输入电话">
					</div>
				</div>
				<div class="button_sp_area">
					<button type="button" style="margin-left: 55%;" class="weui_btn weui_btn_mini weui_btn_primary">上报</button>
					<button type="submit" class="weui_btn weui_btn_mini weui_btn_default">确定</button>
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
