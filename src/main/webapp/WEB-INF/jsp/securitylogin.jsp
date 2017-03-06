<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty error}">
		<div class="error">${error}</div>
	</c:if>
	<c:if test="${not empty message}">
		<div class="message">${message}</div>
	</c:if>
	<br>

	<div style="float: left; width: 33%;">

		<form id="loginForm" method="post" action="login">
			<table cellpadding="5">
				<tr>
					<td><label>Email Address</label></td>
					<td><input id="email" name="email" /></td>
				</tr>
				<tr>
					<td><label>Password </label></td>
					<td><input type="password" id="password" name="password" /></td>
				</tr>
				<tr>
					<td colspan="2"><center>
							<input type="submit" value="Login" />
						</center></td>
				</tr>
			</table>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>

	</div>

	<div style="float: right; width: 33%;">
		<form method="post" action="save" name="registration"
			onsubmit="formvalidation()">
			<table cellpadding="5">

				<tr>
					<td><label>Name*</label></td>
					<td><input name="name1" id="firstname" onblur="validateName()" /></td>
				</tr>

				<tr>
					<td colspan="2"><span id="nameValidationMsg"
						class="validationMsg"></span>
				</tr>

				<tr>
					<td><label>Email Address*</label></td>
					<td><input id="registerEmail" onblur="validateEmail()" /></td>
				</tr>

				<tr>
					<td colspan="2"><span id="emailValidationMsg"
						class="validationMsg"></span>
				</tr>

				<tr>
					<td><label>Mobile Number*</label></td>
					<td><input id="mobile" maxlength="12"
						onblur="validateNumber()" /></td>
				</tr>

				<tr>
					<td colspan="2"><span id="numberValidationMsg"
						class="validationMsg"></span></td>
				</tr>

				<tr>
					<td><label>Password*</label></td>
					<td><input type="password" id="registerPassword"
						onblur="validatePassword()" /></td>
				</tr>

				<tr>
					<td colspan="2"><span id="passwordValidationMsg"
						class="validationMsg"></span></td>
				</tr>

				<tr>
					<td><label>Confirm Password*</label></td>
					<td><input type="password" id="confirmPassword"
						onblur="validateConfirmPassword()" /></td>
				</tr>

				<tr>
					<td colspan="2"><span id="pwdValidationMsg"
						class="validationMsg"></span></td>
				</tr>

				<tr>
					<td colspan="2"><input type="checkbox" id="checkBox"
						value="selected" onchange="checkBoxValidation()" />I agree to the
						Terms and Conditions</td>
				</tr>

				<tr>
					<td colspan="2"><center>
							<input type="submit" id="registerButton"
								value="Click on the Check box to activate me" disabled />
						</center></td>
				</tr>

			</table>
		</form>
	</div>

</body>
</html>