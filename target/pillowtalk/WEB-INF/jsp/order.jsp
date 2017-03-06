<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#cartPage li {
	list-style-type: none;
	float: left;
}

#leftcartPage {
	display: table-cell;
	width: 900px;
	margin-left: 75px;
}

#cartTable {
	width: 890px;
}

#cartTableHeading {
	border-bottom: 1px solid;
	height: 80px;
}

#cartTableHeadingc1 {
	text-align: left;
}

#cartTableHeadingc2 {
	text-align: right;
}

#cartItems {
	color: #8c8c8c;
	position: relative;
	left: 5px;
}

#cartImage {
	height: 150px;
	width: 100px;
}

#cartProductRowc1 {
	width: 70px;
}

#cartProductRowc2 {
	width: 100px;
}

#cartProductRowc3 {
	width: 250px;
}

#cartProductRowc4 {
	width: 110px;
}

#cartProductRowc5 {
	width: 90px;
	text-align: right;
}

.cartQuantity {
	display: block;
	height: 46px;
	width: 20px;
	background-color: #d9d9d9;
	border: 1px solid silver;
}

.updatedQuantity {
	width: 30px;
	height: 42px;
	display: block;
	border: 1px solid;
	border-color: #b30000;
	text-align: center;
}

#cartTable td {
	border: 1px solid silver;
	border-top: hidden;
	border-left: hidden;
	border-right: hidden;
	border-bottom-style: dotted;
}

.updateCartButton {
	background-color: white;
	color: #b30000;
	height: 30px;
	width: 80px;
	position: relative;
	left: 10px;
	top: 15px;
	display: inline-block;
	font-size: 15px;
}

#cartUpdateList li a:hover {
	text-decoration: none;
}

#Quantity {
	position: relative;
	top: 15px;
	left: -20px;
	padding-right: 15px;
	color: #808080;
}

#shoppingBag {
	font-size: 25px;
	font-family: monospace;
}

#removecartImg {
	position: relative;
	left: -20px;
	height: 40px;
	width: 90px;
	cursor: pointer;
}

#shopperstopbag {
	width: 890px;
	height: 160px;
}

/* right cart page styles */
#cartBillDiv {
	border: 1px solid #cccccc;
	width: 305px;
	height: 510px;
	margin-left: 42px;
	margin-bottom: 30px;
}

#ContinueShopping {
	text-align: center;
	display: inline-block;
	text-decoration: none;
	color: white;
	background-color: #f7097c;
	width: 305px;
	padding-top: 15px;
	padding-bottom: 15px;
	font-family: fantasy;
}

#OrderSummary {
	display: block;
	height: 30px;
	width: 305px;
	font: fantasy;
	text-align: center;
	padding-top: 18px;
	padding-bottom: 18px;
	font-size: 17px;
	font-family: monospace;
}

#applyCoupounbox {
	border: 1px solid silver;
	height: 30px;
	width: 122px;
	position: relative;
	left: -20px;
}

#applyCoupounbutton {
	height: 34px;
	width: 138px;
	border: 1px solid #8c8c8c;
	position: relative;
	left: -30px;
	color: white;
	background-color: #f7097c;
	cursor: pointer;
}

#cartBillDeatils {
	position: absolute;
	top: 340px;
	padding-left: 20px;
	height: 160px;
	width: 300px;
	color: #808080;
	font-family: serif;
	font-size: 15px;
	table-layout: inherit;
	border-top: 1px solid silver;
	border-bottom: 1px solid silver;
}

#payableAmountTable {
	padding-left: 15px;
	position: absolute;
	top: 520px;
	table-layout: inherit;
	height: 60px;
	width: 310px;
	font-size: 15px;
	color: #808080;
}

#PayAmountRow {
	font: bold;
	color: black;
	font-size: 20px;
	font-family: monospace;
}

#CheckoutShopping {
	text-align: center;
	display: inline-block;
	text-decoration: none;
	color: white;
	background-color: #f7097c;
	width: 210px;
	padding-top: 10px;
	padding-bottom: 10px;
	position: absolute;
	top: 600px;
	left: 1110px;
	float: right;
	border: 1px solid #9c1616;
	font-family: fantasy;
}
</style>
</head>
<body style="width: 899px">

	<%-- ${email} --%>
	<!--     <h2>Your ORDER is successfully placed</h2> -->
	<div style="background-color: #e5e5e5; width: 1056px" align="center">
		<h1>Order Confirmation Page</h1>
		<h2>${firstname} Your Order is successfully placed</h2>
		<h4>Thank you for your purchase !</h4>
		<h5>
			Your order is <u>10000010</u>
		</h5>
		<h6>You will receive an order confirmation email with details of
			your order and a link to track its progress</h6>
		<h6>
			<u>Click here </u>to print a copy of your order confirmation
		</h6>
	</div>
	<h3 align="justify">Order Date :
	<jsp:useBean id="today" class="java.util.Date" scope="page" />
	<fmt:formatDate value="${today}" pattern="MM.dd.yyyy" /></h3>

	<div style="background-color: #e5e5e5; width: 987px" align="center">
		<h4>Shipping Address</h4>

		<table border="1" bordercolor="#e871aa">
			<tbody>
				<tr>
					<td>eMail</td>
					<td>${email}</td>
				</tr>
				<tr>
					<td>First Name</td>
					<td>${firstname}</td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td>${lastname}</td>
				</tr>
				<tr>
					<td>Address</td>
					<td>${address}</td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td>${mobile}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<br>


	<div style="background-color: #e5e5e5; width: 989px" align="center">
		<h4>Billing Address</h4>
		<table border="1" bordercolor="#e871aa">
			<tbody>
				<tr>
					<td>eMail</td>
					<td>${email}</td>
				</tr>
				<tr>
					<td>First Name</td>
					<td>${firstname}</td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td>${lastname}</td>
				</tr>
				<tr>
					<td>Address</td>
					<td>${address}</td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td>${mobile}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<br>

<!-- 	<div style="background-color: #e5e5e5; width: 990px" align="center"> -->
<!-- 		<h4>Items Ordered</h4> -->
<!-- 		<table border="1" bordercolor="#e871aa"> -->
<!-- 			<tbody> -->
<!-- 				<tr> -->
<!-- 					<td>Image</td> -->
<%-- 					<td><img id="product_Img" src="getImageFilter?&product_id=${product.getProduct_id()}" alt="productImg" style="width: 248px; height: 257px"/></td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>Product Name</td> -->
<%-- 					<td>${product.getProduct_name()}</td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>Product SubTotal</td> -->
<%-- 					<td>$.<span id="cartTotal2">${cartMapTotal}</span></td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>Quantity</td> -->
<%-- 					<td>${cartMapBag}</td> --%>
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 					<td>Total</td> -->
<%-- 					<td>$ ${cartMapTotal}</td> --%>
<!-- 				</tr> -->
<!-- 			</tbody> -->
<!-- 		</table> -->
<!-- 	</div> -->

<div style="background-color: #e5e5e5; width: 990px" align="center">
		<h4>Items Ordered</h4>
		<table border="1" bordercolor="#e871aa">
			<tbody>
				<tr>
					<td>Image</td>
					<td>Product Name</td>
					<td>Product SubTotal</td>
					<td>Quantity</td>
					<td>Total</td>
					
				</tr>
				<tr>
					<td><img id="product_Img" src="getImageFilter?&product_id=${product.getProduct_id()}" alt="productImg" style="width: 248px; height: 257px"/></td>
					<td>${product.getProduct_name()}</td>
					<td>$.<span id="cartTotal2">${cartMapTotal}</span></td>
					<td>${cartMapBag}</td>
					<td>$ ${cartMapTotal}</td>
				</tr>
			</tbody>
		</table>
	</div>
	
</body>
</html>