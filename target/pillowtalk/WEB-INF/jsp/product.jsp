<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>

$(document).ready(
			function(){
				
				$("#IncButton").click(function(){
				var quantity=$("#product_qty").val();
				quantity++;
				$("#product_qty").val(quantity);
		});
	
});

$(document).ready(function(){
	$("#DecButton").click(function(){
		var quantity=$("#product_qty").val();
		if(quantity>1){
			quantity--;	
		}
		$("#product_qty").val(quantity);
		
	});
	

});

$(document).ready(function(){
		
		$("#AddCartButton").click(function(){
			var quantity=$('#product_qty').val();
			var pid=$("#cartpid").val();
				alert(quantity);
			if(quantity>0){	
				$.ajax({	
					type 	:	"GET",
					url		:	"addtocartProductsList",
					async 	:	"true",
					data	:	 "cartP_id="+pid+"&p_qty="+quantity,
				
					success:function(response)
					{
						alert("hai ajax");
					$("#headerBag").text(response);
					}

				});
			}
		});
	});



</script>
<style>

#product_Img{
height: 400px;
width: 300px;
border: 1px solid;
}

#AddCartButton {
padding: 10px 15px;
text-decoration: none;
background-color: #f7097c;
color: white;
text-decoration: none;
}

#p li{
list-style: none;
float: left;
}

#product_qty{
height: 20px;
width: 20px;
}

</style>
</head>
<body>
${product.getProduct_name()}
<br>
<ul id="p">
	<li>
		<img id="product_Img" src="getImageFilter?&product_id=${product.getProduct_id()}" alt="productImg" style="width: 354px; height: 418px"/>
	</li>
	<li>	
	<input id="cartpid" type="hidden" value="${product.getProduct_id()}">
	Product id: ${product.getProduct_id()}
			<br>
			Price:$. ${product.getPrice()}
		<br><br>
		Quantity
		<br><br>
		 
		 <button id="DecButton">-</button>
		 <input id="product_qty" type="text" value="1" name="p_qty" style="height: 31px; "/>
		 <button id="IncButton">+</button>
		
		<br><br>
			<button id="AddCartButton" style="height: 41px; ">Add to Bag</button>

	</li>
</ul>


</body>
</html>