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
    <h1 style="text-align:center">set property beanʹ�÷�ʽ</h1>
    <s:set var="uname" value="'Tom'"/>
     �����<s:property value="#uname"/>
     
     <s:set var="num" value="111.5555"/>
     �����<s:property value="#num"/>
     
     <s:set var="ls1" value="{1,2,3,4}"/>
     �����<s:property value="#ls1"/>
     
     <s:set var="m1" value="#{1:'����',2:'���ٲ�',3:'������',4:'ͻȻ��' }"/>
     �����<s:property value="#m1"/>
     
     <s:set var="gender" value="#{'male':'��','female':'Ů' }"/>
     �����<s:property value="gender"/>
     �����<s:property value="#ls1[1]"/>
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
     
     �û���Ϣ��<s:property value="#u.uname"/>
     <s:property value="#u.upwd"/>
     
     <s:push value="u">
     <s:property value="uname"/>
     <s:property value="upwd"/> 
     </s:push>
     
     <br />
     <h1 style="text-align:center">if����ʹ��</h1>
     
     <s:set var="name" value="'����'"/>
     <s:set var="salary" value="12000"/>
     
     <s:if test="#salary>=0&&#salary<=2000">
     <s:property value="#name"/>�Ĺ�����<s:property value="salary"/>����ƽ������
     </s:if>
     <s:elseif test="#salary>=2000&&#salary<=8000">
     <s:property value="#name"/>�Ĺ�����<s:property value="salary"/>����ƽ������
     </s:elseif>
     <s:elseif test="#salary>=8000&&#salary<=15000">
     <s:property value="#name"/>�Ĺ�����<s:property value="salary"/>����ƽ������
     </s:elseif>
     <br/>
     
     <s:if test="#u.upwd.length<6">
     ����̫��
     </s:if>
  </body>
</html>
