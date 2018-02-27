<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>bootstrap</title>
    <jsp:include page="/Head.jsp" />
    	<!-- 模态框引入 -->
	<jsp:include page="Modal.jsp" />
	<script type="text/javascript" src="<%=basePath %>test/js/bootbox.js"></script>
  </head>
  <body>
  <input type="hidden"  id="basePath" value="<%= basePath%>">
  	<button  id="box" onclick="chec()">按钮</button> 
  	<input type="button" class="btn btn-primary" value="查询" style="width: 70px;height: 33px"  onclick="chec()">
  	<button  id="box" onclick="modal()">modal按钮</button> 
  	<button  id="box1"  type="button" onclick="ff()">数据库查询按钮</button> 
  </body>
</html>
