<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Head.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%--  <script type="text/javascript" src="<%=basePath %>test/js/jquery.min.js"></script>  --%>
    <script type="text/javascript" src="<%=basePath %>source/js/jquery-1.11.1.min.js"></script>
    <link href="<%=basePath %>Font-Awesome-3.2.1/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css">
	<link href="<%=basePath %>source/css/bootstrap.min.css" rel="stylesheet" type="text/css" >
	<link href="<%=basePath %>source/css/common.css" rel="stylesheet" type="text/css" >
	<link href="<%=basePath %>source/css/page.css" rel="stylesheet" type="text/css" >
	<link href="<%=basePath %>source/css/menu.css" rel="stylesheet" type="text/css" >
	<link href="<%=basePath %>source/css/uploadify.css" rel="stylesheet" type="text/css" >
		<link href="<%=basePath %>source/css/bootstrap-table.css" rel="stylesheet" type="text/css" >
		<link href="<%=basePath %>source/css/bootstrap-dialog.css" rel="stylesheet" type="text/css" >
		<link href="<%=basePath %>source/Font-Awesome-3.2.1/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css">
      <link rel="stylesheet" href="<%=basePath%>source/css/jquery.mloading.css">
         <!--  bootstrap的插件 -->
	  <script type="text/javascript" src="<%=basePath %>source/js/bootstrap.js"></script>	
	     <!--  bootstrap.table的插件 -->
	 <script type="text/javascript" src="<%=basePath %>source/js/bootstrap-table.js"></script>
	    <!--  bootstrap.table中的export的插件 -->
	 <script type="text/javascript" src="<%=basePath %>source/js/bootstrap-table-export.js"></script>
     <script type="text/javascript" src="<%=basePath %>source/js/tableExport.js"></script>
        <!--  Jquery的插件 -->
     <script src="<%=basePath%>source/js/jquery.mloading.js"></script>
        <!--  bootstrap弹出框的插件 -->
     <script type="text/javascript" src="<%=basePath %>source/js/bootbox.min.js"></script>
     <script type="text/javascript" src="<%=basePath %>source/js/bootstrap-dialog.js"></script>
     <script type="text/javascript" src="<%=basePath %>test/js/json2.js"></script>
     <!-- 文件上传 --> 
<script type="text/javascript" src="<%=basePath %>source/js/jquery.uploadify.min.js"></script>

  </head>
</html>
