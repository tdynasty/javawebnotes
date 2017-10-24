<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>登录</title>
    
  </head>
  
  <body>
  	<!-- form中的action值填的是struts.xml文件中的action 的name值 -->
    <form action="loginAction" method="post">
    	用户名：<input type="text" name="uname"><br/>
    	密码：<input type="password" name="upwd"><br/>
    	<!-- 此时的表单name对应Javabean -->
    	
    	<input type="submit" value="登录">
    	<input type="reset" value="取消">
    </form>
    
    <!-- 用于辅助调试 -->
    <s:debug/>
  </body>
</html>
