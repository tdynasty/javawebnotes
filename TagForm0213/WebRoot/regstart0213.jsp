<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regstart0213.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript">
  function check(){
  	var username=document.getElementById("r.username").value;
  	var name=document.getElementById("r.name").value;
  	var password=document.getElementById("r.password").value;
  	var repassword=document.getElementById("r.repassword").value;
  	var phone=document.getElementById("r.phone").value;
  	var qq=document.getElementById("r.qq").value;
  	var email=document.getElementById("r.email").value;
  	
  	var eusername=new RegExp(/^[a-zA-Z]{3,}$/);
  	var ename=new RegExp(/^[\u4e00-\u9fa5]{2,4}$/);
  	var epassword=new RegExp(/^[a-zA-Z0-9]{6}$/);
  	var ephone=new RegExp(/^1[3|4|5|8][0-9]\d{4,8}$/);
  	var eqq=new RegExp(/^[1-9]{1}[0-9]{7,}$/);
  	var eemail=new RegExp(/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+$/);
  	if(!eusername.test(username)){
  		alert("账户名不符合规则");
  		document.getElementById("r.username").focus();
  		return false;
  	}if(!ename.test(name)){
  		alert("真实姓名不符合规则");
  		document.getElementById("r.name").focus();
  		return false;
  	}if(!epassword.test(password)){
  		alert("密码不符合规则");
  		document.getElementById("r.password").focus();
  		return false;
  	}if(document.getElementById("r.password").value!=document.getElementById("r.repassword").value){
  		alert("两次密码不一致");
  		document.getElementById("r.repassword").focus();
  		return false;
  	}if(!ephone.test(phone)){
  		alert("手机号不符合规则");
  		document.getElementById("r.phone").focus();
  		return false;
  	}if(!eqq.test(qq)){
  		alert("QQ号不符合规则");
  		document.getElementById("r.qq").focus();
  		return false;
  	}if(!eemail.test(email)){
  		alert("Email不符合规则");
  		document.getElementById("r.email").focus();
  		return false;
  	}
  }
  </script>
  
  <body>
    <form name="myform" action="RegstartAction0213" onsubmit="return check()" style="text-align: centen">
    会员账号：<input name="r.username"/><br />
    真实姓名：<input name="r.name" /><br />
    登录密码：<input name="r.password" type="password" /><br />
    重复密码：<input name="r.repassword" type="password" /><br />
    手机号码：<input name="r.phone"/><br />
  QQ号码：<input name="r.qq" /><br />
    邮箱地址：<input name="r.email"/> <br />
  <input type="submit" value="提交"><input type="reset" value="重置">
    </form>
  </body>
</html>
