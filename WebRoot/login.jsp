<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--  
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
	-->
  </head>
  
  <body>
    <s:form action="dd/user_login" method="post">
         <input type="text" name="user.uname" placeholder="请输入用户名">        
         <s:fielderror fieldName="user.uname" cssClass="fielderror"/>
         <input type="password" name="user.passwd" placeholder="请输入密码">
         <s:fielderror fieldName="user.passwd" cssClass="fielderror"/>
	      <button type="submit">登 录 </button>
	    </s:form>
   
  </body>
</html>
