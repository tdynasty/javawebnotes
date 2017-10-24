<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="t" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regstartResult0213.jsp' starting page</title>
    
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
    <form style="text-align: centen">
    会员账号：<t:property value="r.username" /> <br/>
    真实姓名：<t:property value="r.name" /> <br/>
    登录密码：<t:property value="r.password" /> <br/>
    重复密码：<t:property value="r.repassword" /> <br/>
    手机号码：<t:property value="r.phone" /> <br/>
  QQ号码：<t:property value="r.qq" /> <br/>
    邮箱地址：<t:property value="r.email" />
    </form>
  </body>
</html>
