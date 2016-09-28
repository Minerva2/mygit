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
    <base href="<%=basePath%>">
    
    <title>草稿箱</title>
    <meta charset="UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

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
  
  <body>
  	<s:property value="msg"></s:property>
  </body>
</html>
