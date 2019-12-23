<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加奖励</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <header>
        <div class="account">
          <c:choose>
 	       <c:when test="${user.uname ==null}">
 	         <a href="reg.jsp">注册</a>
 	         <a href="login.jsp">登录</a>
 	       </c:when>
 	       <c:otherwise>
 	         <c:out value="${user.uname}"></c:out>, 欢迎您!
 	       </c:otherwise>
 	     </c:choose>
        </div>
        <div class="logo"></div>		    	    
  </header> 
     <main>
		<s:form action="dd/reward_addReward" method="post" >
		 <table>
     <tr></tr>
     <tr></tr>
     <tr></tr>
     <tr></tr>
     <tr>
		<td><label >奖励名称</label><input type="text" name="reward.rcontent"></td>
	</tr>
	<tr>
		<td><label >所值积分</label> <input type="text" name="reward.rvalue"></td>
	</tr>
	<tr><td>内容：</td></tr>
	<tr>
		<td><label ></label> <textarea cols="50" rows="5" name="reward.rpic">奖励内容</textarea></td>
	</tr>
	<tr>
		<td><button type="submit" class="login-go">提  交 </button></td>
		<td><s:a href="dd/reward_showReward">返回</s:a></td>
	</tr>
	</table>
	</s:form>
	</main>
  </body>
</html>
