<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>问题处理</title>
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
			问题标题1
		</h1>
		<div class="button_sp_area">
			<a href="<%=path%>/demos/add.jsp"
				class="weui_btn weui_btn_mini weui_btn_primary"
				style="float: right; margin-top: 5px;">新增</a>
		</div>
		</header>
		<!--头部 结束 -->

		<%-- 表单 开始--%>
		<div class="bd" style="margin-top: 50px;">
			<div class="weui_cells">
				<div class="weui_cell">
					<div class="weui_cell_bd weui_cell_primary">
						<p>
							编号:
						</p>
					</div>
					<div class="weui_cell_ft">
						223201643212
					</div>
				</div>
				<div class="weui_cell">
					<div class="weui_cell_bd weui_cell_primary">
						<p>
							项目名称:
						</p>
					</div>
					<div class="weui_cell_ft">
						居民医保
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
							由各种物质组成的巨型球状天体，叫做星球。星球有一定的形状，有自己的运行轨道。
						</p>
						<ul class="weui_media_info">
							<li class="weui_media_info_meta">
								填报人
							</li>
							<li class="weui_media_info_meta weui_media_info_meta_extra">
								万盛区	某某人	74683333
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="weui_cell weui_cell_switch">
		        <div class="weui_cell_hd weui_cell_primary">是否审核通过</div>
		        <div class="weui_cell_ft">
		          <input class="weui_switch" type="checkbox">
		        </div>
		      </div>
		      <div class="weui_cell">
		        <div class="weui_cell_hd"><label class="weui_label">备注</label></div>
		        <div class="weui_cell_bd weui_cell_primary">
		          <input class="weui_input" placeholder="请输入备注">
		        </div>
		      </div>
		      <div class="weui_btn_area">
		        <a class="weui_btn weui_btn_primary" href="javascript:" id="showTooltips">确定</a>
		      </div>
		</div>
		<%-- 表单 结束--%>
		
		<%-- 底部菜单 开始--%>
		<div class="weui_tabbar">
        <a href="javascript:;" class="weui_tabbar_item">
          <div class="weui_tabbar_icon">
            <img src="<%=path%>/demos/images/icon_nav_cell.png" alt="">
          </div>
          <p class="weui_tabbar_label">问题列表</p>
        </a>
        <a href="javascript:;" class="weui_tabbar_item">
          <div class="weui_tabbar_icon">
            <img src="<%=path%>/demos/images/icon_nav_cell.png" alt="">
          </div>
          <p class="weui_tabbar_label">草稿箱</p>
        </a>
        <a href="javascript:;" class="weui_tabbar_item">
          <div class="weui_tabbar_icon">
            <img src="<%=path%>/demos/images/icon_nav_cell.png" alt="">
          </div>
          <p class="weui_tabbar_label">统计</p>
        </a>
      </div>
      <%-- 底部菜单 结束--%>
	</body>
</html>
