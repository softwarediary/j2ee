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
    
    <title>注册页面</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<!-- ------------以下这个css是bootstrap Validator插件的css-------------- -->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrapValidator.css">
	
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
	
  </head>
  
  <body>
  
    <header>
       <div><i ></i> 用户注册</div>	    
    </header>  
	    <s:form action="dd/user_reg" method="post">
	        <s:textfield name="user.uname" label="用户名"></s:textfield>
     		<s:textfield name="user.passwd" label="密码"></s:textfield>
     		<s:textfield name="user.tele" label="手机号"></s:textfield>
     		<s:submit value="注册"></s:submit>
	    </s:form>
	    
<!--    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script> -->
    <!-- -------以下这个css是bootstrap Validator插件的css--------- -->
<!-- <script src="<%=basePath%>js/bootstrapValidator.js"></script>
    <script type="text/javascript">
		$(document).ready(function() {
		    $('#defaultForm')
		        .bootstrapValidator({
		            message: '请输入内容',
		            feedbackIcons: {
		                valid: 'fa fa-check',
		                invalid: 'fa fa-remove',
		                validating: 'fa fa-refresh'
		            },
		            fields: {
		                'user.uname': {
		                    message: '用户名无效',
		                    validators: {
		                        notEmpty: {
		                            message: '用户名不得为空'
		                        },
		                        stringLength: {
		                            min: 6,
		                            max: 20,
		                            message: '用户名必须在6-20个字符之间'
		                        },
		                        regexp: {
		                            regexp: /^[a-zA-Z0-9_\.]+$/,
		                            message: '用户名只能包含字母、数字、点、下划线 '
		                        }	                        
		                    }
		                },
		                'user.passwd': {
		                    validators: {
		                        notEmpty: {
		                            message: '密码不得为空'
		                        },
		                        different: {
									field: 'customer.name',
									message: '密码不能与用户名相同'
									},
		                    }
		                },
		                'user.tele': {
		                    validators: {
		                        notEmpty: {
		                            message: '请输入手机号'
		                        }
		                    }
		                }
		            }
		        })
		});
	</script>
	 --> 
  </body>
</html>

