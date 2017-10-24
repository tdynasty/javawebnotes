<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>登录成功</title>
    
  </head>
  
  <body>
    欢迎${uname},密码${upwd}
    OGNL表达式：
    <s:property value="uname"/>
    <s:property value="upwd"/><br />
    <s:property value="hello()"/><br />
    <s:property value="uname.length()"/>
    <s:debug/>
  </body>
</html>
