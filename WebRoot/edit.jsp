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

     <title>编辑习惯</title>
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
   <s:form action="dd/dd_editHabit" method="post">
   <table>
   	<s:hidden name="habit.hid"></s:hidden> 
      <s:textfield name="habit.hname" label="习惯名称"></s:textfield>
      <s:textfield name="habit.finishedNum" label="打卡次数"></s:textfield>
      <s:textfield name="habit.totalNum" label="目标次数"></s:textfield>
      <s:textfield name="habit.hvalue" label="积分值"></s:textfield>
      <s:textfield name="habit.htext" label="激励语"></s:textfield>  
      <tr><td><input type="hidden" name="user.uname" value="${user.uname }"></td></tr>
      <tr>
      <td colspan="2"><button type="submit" class="login-go">保存 </button></td>
      <td colspan="3"><a href="dd/dd_showHabit?user.uname=${user.uname }">返回</a></td>
      </tr>
      </table>
     </s:form>
  </main>
   </body>
 </html>
