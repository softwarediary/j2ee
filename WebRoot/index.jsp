<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  <header>
       <div><i ></i>添加习惯</div>	    
   </header> 
  <s:form action="dd/dd_addHabit" method="post">
     <s:textfield name="habit.hname" label="习惯名称"></s:textfield>
     <!-- <s:textfield name="habit.htype" label="习惯类型"></s:textfield>
     <s:textfield name="habit.fre" label="习惯频率"></s:textfield> -->
     <s:textfield name="habit.totalNum" label="打卡次数"></s:textfield>
     <s:textfield name="habit.aimdays" label="目标天数"></s:textfield>
     <s:textfield name="habit.hvalue" label="积分值"></s:textfield>
     <s:textfield name="habit.htext" label="激励语"></s:textfield>  
     <s:submit value="保存"></s:submit>
    </s:form>
  </body>
</html>
