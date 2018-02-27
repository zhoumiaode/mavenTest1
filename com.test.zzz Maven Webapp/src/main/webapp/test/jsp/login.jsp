<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
      <jsp:include page="/Head.jsp" />
		<%-- <script type="text/javascript" src="<%=basePath %>test/js/login.js"></script> --%>
  </head>
  
  <body>
  <h3> 登录页面</h3>
  <input type="hidden" value="隐藏框"  id="pu">
  <div id="tt">
   <form id="fo" action="user/insert">
		名称：<input type="text" name="name">
		性别：<input type="text" name="sex">	
		年龄：<input type="text" name="age">		
		<input type="submit" >提交</input>
		<!-- <button   onclick="conss()">按钮</button> -->
	</form>
	</div>
	<p id="ttt">fff</p>
  </body>
</html>
