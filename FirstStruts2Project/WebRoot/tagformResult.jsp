<%@ page language="java"  contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tagformResult.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   	用户名：<s:property value="uname" />
   	密码：<s:property value="upwd" />
   	性别1：<s:property value="gender1"/>
   	性别2：<s:property value="gender2"/>
   	水果1：<s:property value="fruit1" />
   	水果2：<s:property value="fruit2"/>
   	水果3：<s:property value="fruit3" />
   	苹果：<s:property value="apple" />
   	地址：<s:property value="addres"/>
  </body>
</html>
