<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>registration</title>
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
<body>
${msg}
        <form:form id="registrationForm" method="post" action="register" modelAttribute="user">
		
<table>
	<tr>
		<td>	<form:label path="firstname">First Name</form:label>	</td>
        <td>	<form:input id="firstname"  path="firstname" /><br>		</td>
	</tr>
	
	<tr>
		<td>	<form:label path="lastname">Last Name</form:label>		</td>
        <td>	<form:input id="lastname"  path="lastname" /><br>		</td>
	</tr>
	
	<tr>
		<td>	<form:label path="email">Email-Id</form:label>			</td>
        <td>	<form:input id="email"  path="email" /><br>				</td>
	</tr>
	
	<tr>
		<td>	<form:label path="mobile">Mobile</form:label>				</td>
        <td>	<form:input id="mobile"  path="mobile" /><br>				</td>
	</tr>
	
	<tr>
		<td>	<form:label path="password">Password</form:label>			</td>
        <td>	<form:password id="password"  path="password" /><br>		</td>
	</tr>
	
	<tr>
		<td> Gender</td>
		<td> 
			<form:radiobutton path="gender" value="male" 	label="Male"/>
			<form:radiobutton path="gender" value="female" 	label="Female"/>
		</td>
	</tr>
	    
    <tr>
		<td>	<input type="submit" id="subscribebutton" value="REGISTER"/>					</td>
      	</tr>    
        

</table>

</form:form>	        
</body>
</html>