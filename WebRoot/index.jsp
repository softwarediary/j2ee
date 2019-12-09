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
    
    <title>欢迎使用叮咚</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/main.css">

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
  <s:form action="dd/dd_addHabit" method="post">
  <table>
  	<tr><td>习惯名称：<input type="text" name="habit.hname" ></td></tr>
  	 <!-- <s:textfield name="habit.htype" label="习惯类型"></s:textfield>
     <s:textfield name="habit.fre" label="习惯频率"></s:textfield> -->
  	<tr><td>打卡次数：<input type="text" name="habit.totalNum" ></td></tr>
  	<tr><td>目标天数：<input type="text" name="habit.aimdays" ></td></tr>
  	<tr><td>积分值 ：<input type="text" name="habit.hvalue" ></td></tr>
  	<tr><td>激励语 ：<input type="text" name="habit.htext" ></td></tr>

     <tr><td><button type="submit" class="login-go">保存 </button></td>
	  <td><s:a href="dd/dd_showHabit">返回</s:a></td></tr>
     
     </table>
    </s:form>
    </main>
  </body>
</html>
