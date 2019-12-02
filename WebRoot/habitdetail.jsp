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
    
    <title>My JSP 'habitdetail.jsp' starting page</title>
    
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
    <p>习惯名称:<c:out value="${habit.hname}"></c:out></p>
    <p>打卡次数:<c:out value="${habit.finishedNum}" ></c:out></p>
    <p>目标天数:<c:out value="${habit.totalNum}" ></c:out></p>
    <p>积分值:<c:out value="${habit.hvalue}"></c:out></p>
    <p>激励语:<c:out value="${habit.htext}"></c:out></p>
    <s:a href="dd/dd_showHabit">返回</s:a>
  </body>
</html>
