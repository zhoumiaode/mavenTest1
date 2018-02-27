<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<script type="text/javascript" src="<%=basePath %>test/js/test.js"></script>
    <script type="text/javascript" src="<%=basePath %>test/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>test/js/json2.js"></script>
  </head>
  <body>
    <button  onclick="test()">按钮</button>
    <p id="p1"></p>
  </body>
</html>
