<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>问题处理</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <meta name="description" content="">

    <link rel="stylesheet" href="<%=path %>/lib/weui.min.css">
    <link rel="stylesheet" href="<%=path %>/css/jquery-weui.css">
    <link rel="stylesheet" href="<%=path %>/css/style.css">
    <link rel="stylesheet" href="<%=path %>/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=path %>/demos/css/demos.css">

    <script src="<%=path %>/lib/jquery-2.1.4.js"></script>
    <script src="<%=path %>/js/jquery-weui.js"></script>
    <script src='<%=path %>/js/swiper.js'></script>
    <script src="<%=path %>/js/city-picker.js"></script>
    <script src="<%=path %>/lib/fastclick.js"></script>
  </head>
  
  <body ontouchstart>
    <!--头部 开始 -->
    <header class="bar bar-nav">
    	<!--<i class="fa fa-arrow-left" style="font-size: 18px;float: left;"></i>-->
      <h1 class="title">问题标题1</h1>
      <div class="button_sp_area">
        <a href="javascript:;" class="weui_btn weui_btn_mini weui_btn_primary" 
        	style="float: right;margin-top:5px;">新增</a>
      </div>
    </header>
    <!--头部 结束 -->
  </body>
</html>
