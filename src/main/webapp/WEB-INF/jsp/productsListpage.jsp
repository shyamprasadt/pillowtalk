<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>Insert title here</title>

<style>
#product_list_page{
	display: block;
    margin: auto;
	width: 50%;
}

#product_list_page ul {
float: left;
list-style: none;
}

/* #product_list_page li {

	display: inline-block;
	padding: 10px;
	background: #fff;
	border: 1px solid #ddd;
	font-size: 16px;
	font-size: large;
	vertical-align: top;
	box-shadow: 0 0 5px #ddd;z
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
} */


</style>

</head>
<body>
<div id="product_list_page">
<ul>	<c:forEach items="${productsList}" var="product">
			<li>${product.getProduct_name()} </li>
			<li>
				<a href="getProduct?&p_id=${product.getProduct_id()}">				 
  				<img id="productList_Img" src="getImageFilter?&product_id=${product.getProduct_id()}" alt="productImg" /></a> 
			</li>
			
	</c:forEach>
</ul>
</div>
</body>
</html>