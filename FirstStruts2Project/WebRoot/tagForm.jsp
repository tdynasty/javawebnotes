<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function validate(){
		var uname=document.myform.uname.value;
		var upwd=document.myform.upwd.value;
		var exp=new RegExp(/^[a-zA-Z][a-zA-Z0-9]{2,9}$/);
		var exp2=new RegExp(/^[a-z][a-zA-Z0-9]{5,}$/)
		if(!exp.test(uname))
		{
			window.alert("用户名不符合规则，请重新输入");
			document.myform.uname.focus();
			return false;//点击alert之后防止往下执行
		}
		else
		{
			if(!exp2.test(upwd)){
				window.alert("密码不符合规则，请重新输入");
				document.myform.upwd.focus();
				return false;
			}
		}
		
		
	}
</script>
<body>
<h1>表单标记的用法</h1>
<s:form id="myform" name="myform" action="TagFormAction" method="post" onsubmit="return validate()">
	<s:textfield label="用户名" name="uname"/>
	<s:password label="密码" name="upwd" />
	<s:textarea label="评论区" name="content" cols="30"/>
	<s:radio label="性别" name="gender1" list="{'男','女'}" value="'男'"/>
	<s:radio label="性别" name="gender2" list="#{1:'男',2:'女'}" value="1"/>
	<s:checkbox label="苹果" fieldValue="苹果" name="apple"/>
	<s:checkboxlist label="水果1" name="fruit" list="{'苹果','香蕉','梨' }"/>
	<s:checkboxlist label="水果2" name="fruit2" list="#{'西瓜':'西瓜','葡萄':'葡萄','哈密瓜':'哈密瓜' }" value="'西瓜'"/>
	<s:set var="fruites" value="#{'西瓜':'西瓜','葡萄':'葡萄','哈密瓜':'哈密瓜' }"/>
	<s:checkboxlist label="水果3" name="fruit3" list="fruites" value="'西瓜'"/>
	<s:select list="{'沈阳','大连','上海'}" name="addres" label="地址"/>
	<s:submit name="ok" value="提交" ></s:submit>
	<s:reset name="reset" value="重置"></s:reset>
	
</s:form>

</body>
</html>