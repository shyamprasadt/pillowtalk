<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<title>Insert title here</title>

<script>


$(document).ready(function(){
	
	$(".cartDecClass").on('click','button',function(){
		var pid=$(this).val();
		
		/* alert(pid); */ 
		
		var quantity=$("#updatedQuantity"+pid).val();
		if(quantity>1){
		
			quantity--;	
		}
		
		$("#updatedQuantity"+pid).val(quantity);
		
	});
	

});

$(document).ready(function(){
	
	$(".cartIncClass").on('click','button',function(){
		var pid=$(this).val();
		
		/* alert(pid); */
		
		var quantity=$("#updatedQuantity"+pid).val();
			quantity++;	
		$("#updatedQuantity"+pid).val(quantity);
		
	});
	

});


$(document).ready(function(){
		
		$(".cartUpdateClass").on('click','a',function(){
			
			var pid=this.name;
			
			var quantity=$('#updatedQuantity'+pid).val();
			
			/* alert(quantity); */
			
			if(quantity>0){	
				$.ajax({	
					type 	:	"GET",
					url		:	"updateCartItem",
					async 	:	"true",
					data	:	 "p_id="+pid+"&updatedQuantity="+quantity,
				
					success:function(response)
					{
						 
						
						 
						 var resvalues=response.split(" ");
						 
						 
						$("#headerBag").text(resvalues[0]);
						$("#cartpage_CartBag").text(resvalues[0]);
						$("#cartSubTotal"+pid).text(resvalues[1]);
						$("#cartTotal1").text(resvalues[2]);
						$("#cartTotal2").text(resvalues[2]);
						$("#cartTotal3").text(resvalues[2]);
						
					}

				});
			} 
			 
		});
	});
	
 $(document).ready(function(){
	
	$(".cartRemoveClass").on('click','a',function(){
 			
			var pid=this.name;
			
			 $.ajax({	
				type 	:	"GET",
				url		:	"deletecartItem",
				async 	:	"true",
				data	:	 "pid="+pid,
			
				success:function(response)
				{
				
					alert(response);
					var resvalues=response.split(" ");
					
					
					$("#headerBag").text(resvalues[0]);
					$("#cartpage_CartBag").text(resvalues[0]);
					$("#cartTotal1").text(resvalues[1]);
					$("#cartTotal2").text(resvalues[1]);
					$("#cartTotal3").text(resvalues[1]);
					
				}
			
			});
			 document.getElementById("CartProductRow"+pid).remove();
	});
});
	
	



</script>

<style>

#cartPage li{
list-style-type: none;
float: left;
}

#leftcartPage{
	display:table-cell;
	width:900px;
    margin-left: 75px;
 }
 
 #cartTable{
 width: 890px;
 }
 
 #cartTableHeading{
border-bottom: 1px solid; 
height: 80px;
}

#cartTableHeadingc1{
text-align: left;

}

#cartTableHeadingc2{
text-align: right;
}
 
#cartItems{
color: #8c8c8c;
position: relative;
left: 5px;
}

 #cartImage{
height: 150px;
width: 100px;
}
 
 #cartProductRowc1{
 width: 70px;
 }
 
 #cartProductRowc2{
 width: 100px;
 }
 
 #cartProductRowc3{
 width: 250px;
 }
 
 #cartProductRowc4{
 width: 110px;
 }

#cartProductRowc5{
width: 90px;
text-align: right;
 }
 


.cartQuantity{
display: block;
height: 46px;
width: 20px;
background-color:  #d9d9d9; 
border: 1px solid  silver;
}

.updatedQuantity{
width: 30px;
height: 42px;
display: block;
border: 1px solid;
border-color:  #b30000;
text-align: center;
}

#cartTable td{
border:1px solid silver;
border-top: hidden;
border-left: hidden;
border-right: hidden;
border-bottom-style: dotted; 
}




.updateCartButton{
background-color:white;
color: #b30000;
height: 30px;
width: 80px;
position: relative;
left: 10px;
top:15px;
display:  inline-block;
font-size: 15px;
}   

#cartUpdateList li a:hover {
	text-decoration: none;
}

#Quantity{
position: relative;
top: 15px;
left:-20px;
padding-right: 15px;
color:  #808080;
}

#shoppingBag{
font-size: 25px;
font-family:monospace;
}
    
#removecartImg{
position: relative;
left:-20px;
height: 40px;
width: 90px;
cursor: pointer;
}    

#shopperstopbag{
width: 890px;
height: 160px;
}

/* right cart page styles */

#cartBillDiv{
 	border:1px solid   #cccccc;	
	width:305px;	
	height: 510px;
	margin-left: 42px;
	margin-bottom: 30px;
}

#ContinueShopping{
text-align:center;
display: inline-block;
text-decoration: none;
color: white;
background-color: #f7097c;
width:305px;
padding-top: 15px;
padding-bottom: 15px;
font-family: fantasy;
}

#OrderSummary{
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



#applyCoupounbox{
border:1px solid silver;
height: 30px;
width: 122px;
position: relative;
left: -20px;
}

#applyCoupounbutton{
height: 34px;
width: 138px;
border: 1px solid  #8c8c8c;
position: relative;
left: -30px;
color: white;
background-color:   #f7097c;
cursor: pointer;
}

#cartBillDeatils {
position:absolute;
top:340px;
padding-left:20px;
height: 160px;
width: 300px;
color:  #808080;
font-family: serif;
font-size: 15px;
table-layout: inherit;
border-top: 1px solid silver;
border-bottom: 1px solid silver;
}


#payableAmountTable{
padding-left:15px;
position:absolute;
top:520px;
table-layout: inherit;
height:60px;
width: 310px;
font-size:15px;
color: #808080;
}

#PayAmountRow{
font: bold;
color: black;
font-size: 20px;
font-family: monospace;
}


#CheckoutShopping{
text-align:center;
display: inline-block;
text-decoration: none;
color: white;
background-color: #f7097c;
width:210px;
padding-top: 10px;
padding-bottom:10px;
position: absolute;
top:600px;
left:1110px;
float:right;
border: 1px solid #9c1616;
font-family: fantasy;
}



</style>

</head>
<body>

<ul id="cartPage">


<li id="leftcartPage" >
		
		<table id="cartTable">
			
			<tr id="cartTableHeading">
				<td id="cartTableHeadingc1" colspan="4">
					<font id="shoppingBag">SHOPPING BAG</font>
					<font id="cartItems">( <span id="cartpage_CartBag"> ${cartMapBag}</span> ITEMS)</font>
				</td>
				<td id="cartTableHeadingc2">
					Total: $<span id="cartTotal1">${cartMapTotal}</span>
				</td>
				
			</tr>
			
			<c:forEach items="${cartMap}" var="cartList">
			
			<tr id="CartProductRow${cartList.value.getProduct_id()}">	
					<td id="cartProductRowc1">
						
						<img id="cartImage" alt="img" 
								src="getCartImageFilter?&img_id=${cartList.value.getProduct_id()}" style="height: 188px; width: 142px">
						
					</td>	
					
					<td id="cartProductRowc2">
						${cartList.value.getProduct_name()}
					</td>	
						
					<td  id="cartProductRowc3">
						<ul id="cartUpdateList" >	
							<li>
								<font id="Quantity">Quantity:</font>
							</li>
							<li class="cartDecClass">
								<button id="cartDecButton${cartList.value.getProduct_id()}" class="cartQuantity" value="${cartList.value.getProduct_id()}">-</button>
							</li>	
							<li>
								<%-- <input id="${cartList.value.getProduct_id()}" type="hidden" value="${cartList.value.getProduct_id()}" /> --%>
								<input id="updatedQuantity${cartList.value.getProduct_id()}" class="updatedQuantity" type="text" value="${cartList.value.getQuantity()}"/>
							</li>
							<li class="cartIncClass">
								<button id="cartIncButton${cartList.value.getProduct_id()}" class="cartQuantity" value="${cartList.value.getProduct_id()}">+</button>
							</li>
							<li class="cartUpdateClass">
								
								<a href="#" id="updateCartButton${cartList.value.getProduct_id()}" 
										class="updateCartButton" name="${cartList.value.getProduct_id()}">Update
								</a>
							
							</li>
						</ul>
					</td>
					<td id="cartProductRowc4" style="height: 150px; ">
						<ul>
							<li class="cartRemoveClass">
								<a id="removeCartProduct${cartList.value.getProduct_id()}" name="${cartList.value.getProduct_id()}">
								<img id="removecartImg" alt="removecartImg" src="resources/images/removecartImg.png">
								</a>
							</li>
						</ul>
					</td>
					<td id="cartProductRowc5">
						<font>$.</font><span id="cartSubTotal${cartList.value.getProduct_id()}">${cartList.value.getSubtotal()}</span>
					</td>
				</tr>
				
			</c:forEach>
		</table> 
	
		<img id="shopperstopbag" alt="shopperstopbag" src="resources/images/shoppingbagpromo.png"> 
	
	
	
</li>

<li>
	<div id="cartBillDiv">
	<a href="home1" id="ContinueShopping">CONTINUE SHOPPING</a>
	<font id="OrderSummary">ORDER SUMMARY</font>
	
	<ul id="applycoupounList" style="width: 336px; ">
	
		<li><input id="applyCoupounbox" type="text" value=""></li>
		<li><button id="applyCoupounbutton" style="width: 140px; height: 30px">APPLY COUPON</button></li>	
	</ul>
	
	<table id="cartBillDeatils">
		<tr>
			<td>Sub Total</td>
			<td><span id="cartTotal2">${cartMapTotal}</span></td>		
		</tr>
		<tr>
			<td>Delivery Charges</td>
			<td>FREE</td>		
		</tr>
		<tr>
			<td>Gift Packing</td>
			<td>FREE</td>		
		</tr>
		<tr>
			<td>Coupon Discount</td>
			<td> NA </td>		
		</tr>
	</table>
	
	<table id="payableAmountTable">
		<tr id="PayAmountRow">
			<td>	<font id="PayAmountTotalfont">Payable Amount</font>	</td>
			<td>$<span id="cartTotal3">${cartMapTotal}</span>	</td>
		</tr>
		
		<tr>
			<td>You Have Saved</td>
			<td>0</td>
		</tr>
	</table>
	
	<%-- <font id="PayAmountTotal">Payable Amount:Rs.<span id="cartTotal2">${cartMapTotal}</span>
	</font> --%>

	<a href="check" id="CheckoutShopping">CHECKOUT</a>

	</div>
</li>	

</ul>

</body>
</html>