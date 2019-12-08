<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>奖励</title>
    
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
    <main>
    <s:form action="dd/reward_showReward"  method="post">
  			<table >
  				<tr></tr>
     			<tr></tr>
     			<tr></tr>
     			<tr><th>奖励名称</th>
   				<th>所值积分</th>
   				<th>领取</th>
   				<th><s:a href="addreward.jsp">添加奖励 </s:a></th>
     			</tr>
     			<c:forEach var="reward" items="${rewardList}">
     			<tr>
  					<td><c:out value="${reward.rcontent}"></c:out></td>
  					<td><c:out value="${reward.rvalue}"></c:out></td>
  					<td><input type="button" value="领取"></td>
  				</tr>
  				<tr></tr>
  				
  			</c:forEach>
  			</table>
  		
  	</s:form>
  	</main>
  </body>
</html>
