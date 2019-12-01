<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  request.setCharacterEncoding("UTF-8");
  response.setCharacterEncoding("UTF-8");

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
	<s:form action="dd/dd_selectHabit" method="post">
  		<input title="关键词" name="hname" placeholder="输入关键词...">  
  		<button type="submit">搜  索</button>
   	 </s:form>
  	<s:form>
  		<table>
			<tr>
  				<td>习惯名称</td>
  				<td>激励语</td>
  				<td>已完成次数</td>
  				<td>目标次数</td>
  			</tr>
  			<c:forEach var="habit" items="${habitList}" varStatus="status">
  				<tr>
  					<td><c:out value="${habit.hname}"></c:out></td>
  					<td><c:out value="${habit.htext}"></c:out></td>
  					<td><c:out value="${habit.finishedNum}" ></c:out></td>
  					<td><c:out value="${habit.totalNum}" ></c:out></td>
  				
					<td><a href="dd/dd_daka?habit.hid=${habit.hid}">打卡</a></td>
					<td><a href="dd/dd_showEdit?habit.hid=${habit.hid}">编辑</a></td>
					
  					<td><a href="dd/dd_deleteHabit?habit.hid=${habit.hid}">删除</a></td>
  					
  					
  				</tr>
  			</c:forEach>
  		</table>
  	</s:form>
	<s:a href="index.jsp">添加习惯</s:a>
  </body>
</html>
