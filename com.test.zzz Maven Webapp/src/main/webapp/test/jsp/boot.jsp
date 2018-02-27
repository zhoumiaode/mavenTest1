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
		<script type="text/javascript" src="<%=basePath %>test/js/boot.js"></script>
		<style type="text/css">
		 #plantDiv {
		 margin:30px;
		width:1300px;
		height:300px;
		/* background-color:red */
		} 
		.add-btn{
		position: relative;
    left: 19px;
    top: 96px;
    width: 50%;
		}
		.del-btn{
	    position: relative;
    left: 85px;
    top: 62px;
    width: 142%;
		}
		</style>
  </head>
  <body>
  <input type="hidden"  id="basePath" value="<%= basePath%>">
		<div  id="plantDiv">
		<div class="add-btn">
			<input type="button" value="添加" class="btn btn-success" onclick="modal()">
		</div>
		<div class="del-btn">
			<input type="button" value="删除" class="btn btn-danger" onclick="del()">
		</div>
			<table id="plantTable"></table>		
		</div>
  </body>
</html>
