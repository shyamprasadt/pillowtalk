<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Checkout</title>
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
<h1>Secure Checkout</h1>
<form:form action="order" method="POST"> 

	<div style="background-color: #e5e5e5; width: 949px">
	
	<h2 align="center">DELIVERY DETAILS</h3>
	<table align="center">
	
		<tr>
			<td>	<form:label path="email"  >Email*</form:label> 				</td>    
      		<td>  	<form:input id="email"  path="email" /><br>						</td>
		</tr>
    
    	<tr>  
	   		<td> <form:label path="firstname">Firstname* </form:label> 					</td>
	   		<td> <form:input id="firstname"  path="firstname" /><br>				</td>
		</tr>   
		 <tr>  
	   		<td> <form:label path="lastname">Lastname* </form:label> 					</td>
	   		<td> <form:input id="lastname"  path="lastname" /><br>				</td>
		</tr>
		<tr>  
	   		<td> <form:label path="address">Address* </form:label> 					</td>
	   		<td> <form:input id="address"  path="address" /><br>				</td>
		</tr>
		<tr>  
	   		<td> <form:label path="mobile">Mobile* </form:label> 					</td>
	   		<td> <form:input id="mobile"  path="mobile" /><br>				</td>
		</tr>
	 	 
	</table></div>    
	
	<div style="background-color: #e5e5e5; width: 949px" align="center" >
	<h2 align="center">PAYMENT DETAILS    <img style="float: inherit;" src="resources/images/secure website.png"/></h1>
	<div style=" width: 730px; " align="center">
	<table bgcolor="#d1c8c8">
		<tr>
			<td>Sub Total</td>
			<td>$${cartMapTotal}</td>		
		</tr>
		<tr>
			<td>Delivery Charges</td>
			<td>FREE</td>		
		</tr>
		<tr>
			<td>Gift Packing</td>
			<td>FREE</td>		
		</tr>
		
	</table><table >
		<tr>
			<td style="font-family: sans-serif; font-size: xx-large;; color:#f21a74">Payable Amount&nbsp&nbsp&nbsp</td>
			<td style="font-family: sans-serif; font-size: xx-large;; color: #f21a74;">$${cartMapTotal}</td>
		</tr></table>

	</div><br>
	<table align="center">
		<tr>
		<td style="font-size: larger;">Pay securely with:</td></tr>
		<tr>
		
		<td><form:radiobutton path="card" value="visa"/><img src="resources/images/master card.png"/><img src="resources/images/visa.png"/></td>
		</tr>
		<tr>
		
		<td><form:radiobutton path="card" value="paypal"/><img src="resources/images/pay pal.png"/></td>
		</tr>
		<tr>
		<tr>
		
		<td><form:radiobutton path="card" value="afterpay"/><img src="resources/images/after pay.png"/></td>
		</tr>
		<tr>
				
		
		<tr>
			<td><small>Card number</small></td> </tr>
			<tr> 				
      			 <td>	<form:input id="card" path="card" type="text" name="card" value="" placeholder="XXXX XXXX XXXX XXXX"/></td>
			</tr>
			<tr><td><small>CVN</small></td></tr>
			<tr>   
      			<td>  	<form:input id="cvn" path="cvn" type="text" name="cvn" value="" placeholder="999"/></td>
			</tr>
			<tr><td><small>Expiry date(MMYY)</small></td></tr>
			<tr>   
      			<td>  	<form:input id="cvn" path="cvn" type="text" name="cvn" value="" placeholder="MMYY"/></td>
			</tr>
			
			<tr>   
	  		
	  		<td> 
	  			<input type="submit" id="subscribebutton" value="PLACE ORDER" style="width: 193px; "/>
	  		
	  		</td>
	 	</tr>  
	</table>
	</div>
	   </form:form>


</body>	        
</html>