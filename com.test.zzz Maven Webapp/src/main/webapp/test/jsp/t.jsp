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
        <script type="text/javascript" src="<%=basePath %>test/js/laydate/laydate.js"></script>
  </head>
  <body>
<input type="text" id="test1">
<button type="button" onclick="t()" >按钮</button>
</body>
<script>
function t(){
var te=$("#test1").val();
alert(te);
}
//执行一个laydate实例
laydate.render({
  elem: '#test1',//指定元素
  value: '1989-10-14'
});
</script>
</html>