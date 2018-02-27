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
 <script type="text/javascript" src="<%=basePath %>test/js/upload.js"></script>
  </head>
  <body>
  <input type="hidden"  id="basePath" value="<%= basePath%>">
  <form action="" id="f1">
  <table>
 <tr>
 <td>姓名:</td>
 <td><input type="text"  name="username" id="username"></td>
 </tr>
   	<img  style="width:200px;height:200px" src="source/img/none.png" id="img1" />
  	<input type="hidden"  name="imgname"  id="imgname" />
  	<input type="file" name="attach" id="attach" />
  	
  	<video src="source/img/none.png" controls="controls" loop="loop" id="guanggaoImg1" style="margin-top: 11px; width: 370px;height:200px;"></video>
  	<input type="file" name="guanggao" id="guanggao" ></input>  
  	<button type="button"  onclick="ff()" >按钮</button>
 </table>
  </form>
  </body>
</html>
