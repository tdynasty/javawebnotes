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
    
    <title>My JSP 'TagBanic3.jsp' starting page</title>
    
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
    <h1 style="text-align:center">merge\append标记的用法</h1>
    <h6>将两个list类型数据结合到一起</h6>
    <s:set var="tra" value="{'王赛','李屹勃','王威人','佟荣欣'}" />
    <s:merge var="mlist">
    <s:param value="tra"/>
    <s:param value="{'A','B','C','D'}" />
    </s:merge>
    输出merge连接后的mlist
    <s:iterator value="mlist">
    <s:property/>
    </s:iterator>
    <br>
    
    <s:append var="mlist">
    <s:param value="tra"/>
    <s:param value="{'A','B','C','D'}" />
    </s:append>
    输出append连接后的mlist
    <s:iterator value="mlist">
    <s:property/>
    </s:iterator>
    <br>
    
    <h1 style="text-align:center">sort标记的用法</h1>
    <br>
    <s:set var="nums" value="{'a','d','c','b'}"/>
    <s:bean name="cn.sort.SortTag" var="sort"/>
    <s:sort source="nums" comparator="#sort">
    <s:iterator>
    <s:property/>
    </s:iterator>
    </s:sort>
    <br><br>
    <s:bean name="java.util.Date" var="date"></s:bean>
    当前的日期时间：
    <s:date name="date"/>
    <br>
    加入其他JSP界面
    <br/><br/>
    截取list集合
    <s:subset source="tra" start="2" count="3">
    <s:iterator>
    <s:property/>
    </s:iterator>
    </s:subset>
    <br/><br/>
    <h1 style="text-align:center">a/url标记</h1>
    <a href="<s:url value='http://www.baidu.com'/>">百度</a><br>
    <a href="<s:url namespace="/" action="f3" var="sc1"/>">action</a>
    <br/>
    <s:url namespace="/" action="f3" var="sc2">
    <s:param name="id" value="111"/>
    </s:url>
    
    <s:a href="%{sc1}"/>
    <s:a href="%{sc2}"/>
    
  </body>
</html>
