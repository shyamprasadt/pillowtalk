<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
table {
    border-collapse: collapse;
}
table,th,td
{
border:1px solid black;
	padding: 15px;
    text-align: left;
    align="center";
}
th {
    background-color: #4CAF50;
    color: white;
}
</style>
	
	<!-- <link rel="stylesheet" type="text/css" href="css/welcomepage.css"/> -->
	
	</head>

<body>
    <center>Welcome</center>
    <a href="logout">Logout</a>
<table>
	<tbody>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email-Id</th>
			<th>Mobile</th>
			<th>Gender</th>
	
		</tr>
	<c:forEach items="${userList}" var="user">
	<tr>
		<td>
			<c:out value="${user.firstname}"></c:out>
		</td>
		<td>
			<c:out value="${user.lastname}"></c:out>
		</td>
		<td>
			<c:out value="${user.email}"></c:out>
		</td>
		<td>
			<c:out value="${user.mobile}"></c:out>
		</td>
		<td>
			<c:out value="${user.gender}"></c:out>
		</td>
	</tr>
	</c:forEach>
</tbody>
</table>
    
</body>
</html>