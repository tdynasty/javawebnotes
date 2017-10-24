<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'logoResult.jsp' starting page</title>
    
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
  <!-- 从会话中取 -->
    ${sessionScope.uname }
    ${sessionScope.upwd }
    <!-- 从Bean中取 -->
    ${lg.uname }${lg.upwd }<br/>
    OGNL:<br/>
    ValueStack的值:
    <s:property value="lg.uname"/>
    <s:property value="lg.upwd"/><br/>
    StackContext中的值：
   	 是Map类型的session中值的名字
    <s:property value="#session.uname"/><br/><br/><br/>
    <s:property value="#application.color"/>
    <s:debug/>
  </body>
   
</html>
