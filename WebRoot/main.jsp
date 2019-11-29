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
    
    <title>My JSP 'main.jsp' starting page</title>
    
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
  	<s:form>
  		<table>
			<tr>
  				<td>习惯名称</td>
  				<td>激励语</td>
  			</tr>
  			<c:forEach var="habit" items="${habitList}">
  				<tr>
  					<td><c:out value="${habit.hname}"></c:out></td>
  					<td><c:out value="${habit.htext}"></c:out></td>
  				</tr>
  			</c:forEach>
  		</table>
  	</s:form>
	<s:a href="index.jsp">添加习惯</s:a>
  </body>
</html>
