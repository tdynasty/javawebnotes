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
    <h1 style="text-align:center">merge\append��ǵ��÷�</h1>
    <h6>������list�������ݽ�ϵ�һ��</h6>
    <s:set var="tra" value="{'����','���ٲ�','������','١����'}" />
    <s:merge var="mlist">
    <s:param value="tra"/>
    <s:param value="{'A','B','C','D'}" />
    </s:merge>
    ���merge���Ӻ��mlist
    <s:iterator value="mlist">
    <s:property/>
    </s:iterator>
    <br>
    
    <s:append var="mlist">
    <s:param value="tra"/>
    <s:param value="{'A','B','C','D'}" />
    </s:append>
    ���append���Ӻ��mlist
    <s:iterator value="mlist">
    <s:property/>
    </s:iterator>
    <br>
    
    <h1 style="text-align:center">sort��ǵ��÷�</h1>
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
    ��ǰ������ʱ�䣺
    <s:date name="date"/>
    <br>
    ��������JSP����
    <br/><br/>
    ��ȡlist����
    <s:subset source="tra" start="2" count="3">
    <s:iterator>
    <s:property/>
    </s:iterator>
    </s:subset>
    <br/><br/>
    <h1 style="text-align:center">a/url���</h1>
    <a href="<s:url value='http://www.baidu.com'/>">�ٶ�</a><br>
    <a href="<s:url namespace="/" action="f3" var="sc1"/>">action</a>
    <br/>
    <s:url namespace="/" action="f3" var="sc2">
    <s:param name="id" value="111"/>
    </s:url>
    
    <s:a href="%{sc1}"/>
    <s:a href="%{sc2}"/>
    
  </body>
</html>
