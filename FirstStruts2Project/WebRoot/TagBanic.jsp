<%@ page language="java" import="java.util.*" pageEncoding="gb18030"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'TagBanic.jsp' starting page</title>
    
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
    <h1 style="text-align:center">set property bean使用方式</h1>
    <s:set var="uname" value="'Tom'"/>
     输出：<s:property value="#uname"/>
     
     <s:set var="num" value="111.5555"/>
     输出：<s:property value="#num"/>
     
     <s:set var="ls1" value="{1,2,3,4}"/>
     输出：<s:property value="#ls1"/>
     
     <s:set var="m1" value="#{1:'王赛',2:'李屹勃',3:'王威人',4:'突然想' }"/>
     输出：<s:property value="#m1"/>
     
     <s:set var="gender" value="#{'male':'男','female':'女' }"/>
     输出：<s:property value="gender"/>
     输出：<s:property value="#ls1[1]"/>
     <s:iterator value="#m1">
     <s:property value="key"/>
     <s:property value="value"/>
     </s:iterator>
     gender:<s:property value="#gender['female']"/>
     <br/>
     <s:iterator var="a1" value="ls1">
     <s:property value="#a1"/>
     </s:iterator>
     <br />
     <s:iterator value="m1">
     <s:property/>
     </s:iterator>
     <br/>
     <s:bean var="u" name="pojo.LoginBean">
     <s:param name="uname" value="'Tiger'"/>
     <s:param name="upwd" value="1234"/>
     </s:bean>
     
     用户信息：<s:property value="#u.uname"/>
     <s:property value="#u.upwd"/>
     
     <s:push value="u">
     <s:property value="uname"/>
     <s:property value="upwd"/> 
     </s:push>
     
     <br />
     <h1 style="text-align:center">if语句的使用</h1>
     
     <s:set var="name" value="'张三'"/>
     <s:set var="salary" value="12000"/>
     
     <s:if test="#salary>=0&&#salary<=2000">
     <s:property value="#name"/>的工资是<s:property value="salary"/>低于平均工资
     </s:if>
     <s:elseif test="#salary>=2000&&#salary<=8000">
     <s:property value="#name"/>的工资是<s:property value="salary"/>处于平均工资
     </s:elseif>
     <s:elseif test="#salary>=8000&&#salary<=15000">
     <s:property value="#name"/>的工资是<s:property value="salary"/>高于平均工资
     </s:elseif>
     <br/>
     
     <s:if test="#u.upwd.length<6">
     密码太简单
     </s:if>
  </body>
</html>
