<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style> 

/* HEADER STYLES */

#one{
background-color: white;
height: 60px;
padding-left:95px;
padding-right:145px;
}

#one ul{
list-style-type: none;
padding: 0px;
margin: 0px;
overflow: hidden;
}

#one li{
    float: left;
}

#HomeImg{
height: 55px;
width: 256px;
display: inline-block;
position: absolute;
left: 40%;
}

.headerImg{
height: 30px;
width: 20px;

}

#oneleftul{
float: left;
}


#onerightul{
float: right;
}

/* DROPDOWN STYLES */

.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 180px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
 }

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
    display: block;
}

#headerBag{
color: black;
}
#cartImg{
width:35px;
}

#navigationdiv{
padding-left: 80px;
padding-right:145px; 	
background-color: white;
padding-top: 20px;
}

#navigationdiv li a{
text-decoration: none;
color:   #666666;
}

#navigationdiv ul{
list-style-type: none;
}

#navigationmainList{
font-variant:small-caps;
font-family: Times New Roman;
font-size: 16px;
display: block;
float: left;
margin-right: -35px;
}

#navigationmainList li{
color: #666666;
}

#navigationmainList li:HOVER #navigationsubList li a{
visibility: visible;
}

#navigationsubList{
position: relative;
left:-40px;
color: black;
}

#navigationsubList li a{
visibility: hidden;
}

#navigationrightList{
float: left;

}

#navigationrightList li{
float: left;
color:white;
}


#searchbox{
text-align: left;
height: 28px;
width: 260px;
border: 1px  solid silver;
border-left:hidden;
}

#searchImg{
height: 30px;
border: 1px solid silver;
border-right: hidden;
padding-left: 5px;
padding-right: 8px;
}
#homeImg{
height: 80px;
border-right: hidden;
padding-left: 5px;
padding-right: 8px;
}

</style>
</head>

<body style="padding:0px; margin:0px; background-color:#fff;font-family:'Open Sans',sans-serif,arial,helvetica,verdana">	
		<div>
     		<center><img src="resources/images/Logo.jpg" width="230" height="73"/></center>
     		
     		
     		<form name="search_form_SearchBox" method="get" action="/pillowtalk/search/">
		<div class="control-group">
			<label class="control-label skip" for="input_SearchBox"></label>
			<div align="center">
				<input id="input_SearchBox" class="siteSearchInput center" type="text" name="text" value="" maxlength="100" placeholder="I'm Looking for..." data-options='{"autocompleteUrl" : "esources/images/search.png","minCharactersBeforeRequest" : "3","waitTimeBeforeRequest" : "500","displayProductImages" : true}' style="height: 35px; "/>
				<img src="resources/images/search.png" width=30 height=25 style="height: 23px; "/>
				</div>
		</div>
	</form>

		</div>
		
<!-- 			<div class="miniCart" align="right"> -->
<!-- 			<a id="shopkart" href="/images/shopkart.jpg" class="minicart" style="padding-left:47px;"> -->
<!-- 				<img src="resources/images/shopkart.jpg" alt="" height=35 width=35 /> -->
<!-- 				<span class="title">SHOPPING BAG</span> -->
<!-- 				<span class="price" style="position:inherit;" id="miniCartPrice"></span> -->
<!-- 				<span class="count" style="position:inherit;" id="miniCartCount"></span>	 -->
<!-- 			</a> -->
<!-- 		<div id="miniCartLayer" class="miniCartPopup" data-refreshMiniCartUrl="/pillowtalk/cart/miniCart/SUBTOTAL/?" data-rolloverPopupUrl="/pillowtalk/cart/rollover/MiniCart"></div></div></div><a id="skiptonavigation"></a> -->
<!-- 		<div class="navigationbarcollectioncomponent"><ul class="clear_fix"></ul></div> -->
		
		<div id="one">
		
		<ul id="oneleftul">
  			<li><a href="https://www.google.com.au/maps/search/pillow+talk/@-23.1244821,135.720344,4z/data=!3m1!4b1" target="_blank">
<!--   			#storefinder			 -->
  				<img id="storefinderImg" class="headerImg" src="resources/images/storefinder.png" alt="storefinder" style="height: 19px; width: 16px"></a>
  			</li>  				
		</ul>  
		<ul><li style="height: 32px; width: 44px"><a class="w3-pink" href="http://localhost:8080/pillowtalk" ><i class="fa fa-home fa-1x"></i></a></li></ul>
		
		${userList}
		<c:forEach items="${userList}" var="user"><c:out value="${user.firstname}"></c:out></c:forEach>
		<ul id="onerightul" >
  			<li>
  				<div class="dropdown">
    			<a href="#profile">				
  				<img id="profileImg" class="headerImg" src="resources/images/profile.png" alt="navigation" style="width: 32px; "></a><small>${user.firstname}</small>
    			<div class="dropdown-content">
      			<a href="log">SIGN IN</a>
      			<a href="reg">SIGN UP</a>
       			</div>
  				</div>
  			</li>	
  			<li>
  				<div class="dropdown" >
    			<a href="#profile">				
  				<img id="cartImg" class="headerImg" src="resources/images/shop.jpg" alt="cartImg" style="width: 39px; height: 36px"></a>
    			<div class="dropdown-content">
      			<a href="viewcart">SHOPPING BAG</a>
      			<a href="#reg">CHECKOUT</a>
       			</div>
       			</div></li>
	       	<li>
  			<span id="headerBag">${cartMapBag}</span>
  			</li></ul></div>		
</body>
</html>