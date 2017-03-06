<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<style>
#subscribebutton{
	font-family:sans-serif;
	margin-top: 5px;
	background-color:  #f7097c;
    border: none;
    color: white;
    padding: 9px 28px;
    text-align: center;
    cursor:pointer;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
  }
</style>
</head>
<body onload='document.loginForm.username.focus();'>
<%-- <form:form id="loginForm" method="post" action="login" modelAttribute="user"> --%>
<!-- 	<table> -->
<!-- 		<tr> -->
<%-- 			<td>	<form:label path="email"  >Email-Id</form:label> 				</td>     --%>
<%--       		<td>  	<form:input id="email"  path="email" /><br>						</td> --%>
<!-- 		</tr> -->
    
<!--     	<tr>   -->
<%-- 	   		<td> <form:label path="password">Password</form:label> 					</td> --%>
<%-- 	   		<td> <form:password id="password"  path="password" /><br>				</td> --%>
<!-- 		</tr>     -->
	    
<!-- 	 	<tr>    -->
	  		
<!-- 	  		<td>  -->
<!-- 	  			<input type="submit" id="subscribebutton" value="LOGIN"/> -->
	  		
<!-- 	  		</td> -->
<!-- 	 	</tr>    -->
<!-- 	</table>	     -->
<%-- 	   </form:form> --%>

<div><h2>Login with Username and Password</h2>

		

		<form name='loginForm' action="<c:url value='j_spring_security_check' />" method='POST'>

			<table>
				<tr>
					<td>Email:</td>
					<td><input type='text' name='email' value=''></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input type="submit" id="subscribebutton" value="LOGIN"/></td>
				</tr>
			</table>

			</form></div>
		
<a href="reg">Register</a>

</body>	        
</html>