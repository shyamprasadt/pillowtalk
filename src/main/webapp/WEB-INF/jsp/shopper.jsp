<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>

/* div 1 */

#scroll_images{
height: 450px;
}

#scroll_images ul li{
list-style: none;
float: left;
position: relative;
left: -40px;
}


.scrollImages{
height: 450px;
width: 1505px;
}

/*  div 2 */

#shipping_div{
height:60px;
background-color:  #808080;
border-top: 1px solid white;
border-bottom: 1px solid white;
color: white;
}

#shipping_div a{
text-decoration: none;
}

.shiping_details{
color: white;
font-family: sans-serif;
position: relative;
top: 15px;
}

#free_shipping{
position:relative;
left: 230px;
}

#easy_exchange{
position: relative;
left: 530px;
}

#cashOn_delivery{
position: relative;
left: 800px;
}
/* div headings */

.homepage_headings{
padding-top:25px;
height: 80px;
width: 100%;
text-align: center;
}

.homepage_headings .heading{
font-style:normal;
font-size:30px;
font-family:sans-serif;
color: black;
}

.homepage_headings .subheading{
font-family:serif;
color: #808080;
font-size: 15px;
position: relative;
top: 5px;
}

/* div 3 */

#style_inspirationsImages{
height: 510px;
}

#styleinspiration_1{
position:absolute;
left:128px;
width: 700px;
height: 500px;
}

#styleblog{
position: absolute;
left:370px;
top:1225px;
color: white;
font-size: 30px;
}

#stlyImagesTable{
position: absolute;
left: 880px;
width: 490px;
color: #666666;
font: 300;
}



.styleinspirationImg{
width: 240px;
height: 130px;
margin-right: 20px;
}

#styleinspiration_3{
padding-top:48px;
padding-bottom: 48px;
}

/* div 4 */

#new_arrivalsImages{
height: 500px;
border: 1px sloid black;
padding-left: 85px;
}

#new_arrivalsImages ul li{
list-style: none;
float: left;
padding-right: 40px;
}

.new_productnames{
padding-left: 25px;
position: relative;
top: 15px;
color:  #595959;
font-family: sans-serif;
font-size: 18px;
}

.new_productcost{
position: relative;
top: 20px;
padding-left: 90px;
color:  #595959;
font-family: sans-serif;
font-size: 15px;
}

/* div 5*/

#offer_zoneImages{
height: 600px;
}

#offreszoneImg1{
position: relative;
left: 130px;
}

#offreszoneImg2{
position: relative;
top: 230px;
left: -665px;
}

#offreszoneImg3{
position: relative;
top: -334px;
left: 438px;
}

#offreszoneImg4{
position: relative;
top: -335px;
left: 435px;
}


/* div 6 */

#our_favouritesImages{
height: 440px;
}

#titanImg{
position :relative;
top:-30px;
width: 100%;
}

/* div 7 */

#appDownload{
padding-left: 130px;
padding-top: 30px;
height: 360px;
}

#andriodappImg{
position: relative;
left: 30px;
}

#appleappImg{
position: relative;
left: 70px;
}

/* div 8 */

#socila_hubImages{
height: 600px;
}

#facebookImg{
position: absolute;
left: 180px;
}

#instagram1Img{
position: absolute;
left: 520px;
}

#pinintrestImg{
position: absolute;
left: 1060px;
}

#twitterImg{
position: relative;
top:282px;
left:510px;
}

#instagram2Img{
position: relative;
top:282px;
left:560px;
}

</style>

</head>
<body>

<div id="scroll_images">
	<ul>
		
		<li>
			<img id="banner1" class= "scrollImages" alt="titan" src="resources/images/homepage-images/banner_01.jpg">
		</li>
	</ul>
</div>

<div id="shipping_div">
	<a id="free_shipping" 	href="#" class="shiping_details">FREE SHIPPING</a>
	<a id="easy_exchange" 	href="#" class="shiping_details">EASY EXCHANGE & RETURNS</a>
	<a id="cashOn_delivery"	href="#" class="shiping_details">CASH ON DELIVERY</a>
</div>

<div id="style_inspirations" class="homepage_headings">
	<font class="heading">STYLE INSPIRATION</font><br>
	<font class="subheading">Everything you need to rock out in style</font>
</div>

<div id="style_inspirationsImages">
	
	<a href="http://blog.shoppersstop.com/celebrate-this-leap-year-with-special-items-to-perfect-your-life.html" 
				target="_blank">
	<img id="styleinspiration_1" alt="styleinspirationImg" 
			src="resources/images/homepage-images/styleinspiration_1.jpg">
	</a>

		<font id="styleblog">Style Blog</font>		
	
	<table id="stlyImagesTable">
		
		<tr>
			<td>
				<a href="http://blog.shoppersstop.com/bollywood-beauty-what-are-your-fav-stars-sporting.html" 
							target="_blank">
				<img id="styleinspiration_2" class="styleinspirationImg" 
						src="resources/images/homepage-images/styleinspiration_2.jpg">
				</a>			
			</td>
			<td>
				Hottest Lip colors of the season : what are your favourite stars sporting?  
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="http://blog.shoppersstop.com/tips-to-shop-for-your-kids.html" 
					target="_blank">
				<img id="styleinspiration_3" class="styleinspirationImg" 
						src="resources/images/homepage-images/styleinspiration_3.jpg">
				</a>
			</td>
			<td>
				Smart Shopping for your kids: Tricks every smart mommy should
				know when shooping for kids 
			</td>
		</tr>
		
		<tr>
			<td>
				<a href="http://blog.shoppersstop.com/wedding-jewellery-to-look-out-for.html" 
					target="_blank">
				<img id="styleinspiration_4" class="styleinspirationImg" 
						src="resources/images/homepage-images/styleinspiration_4.jpg">
				</a>			
			</td>
			<td>
				Statement jewellery that takes your wedding fashion game to the 
				next level!
			</td>
		</tr>
		
	</table>
	

</div>

<div id="new_arrivals" class="homepage_headings">
	<font class="heading">NEW ARRIVALS</font><br>
	<font class="subheading">Check out the best fall fashion and more</font>
</div>

<div id="new_arrivalsImages">
	<ul>
		<li>
			<img class="new_Images" alt="LIFE WOMEN DRESS " 
				src="resources/images/homepage-images/LIFE WOMEN DRESS.jpg"><br>
			<font class="new_productnames">LIFE WOMAN DRESS</font><br>
			<font class="new_productcost">Rs.1696</font>
		</li>
		
		<li>
			<img class="new_Images" alt="park avenue dress " 
				src="resources/images/homepage-images/park avenue dress.jpg"><br>
			<font class="new_productnames">PARK AVENUE DRESS</font><br>
			<font class="new_productcost">Rs.1999</font>
		</li>
		
		<li>
			<img  class="new_Images" alt="GUESS WOMEN WATCH " 
					src="resources/images/homepage-images/GUESS WOMEN WATCH.jpg"><br>
			<font class="new_productnames">GUESS WOMEN WATCH</font><br>
			<font class="new_productcost">Rs.2999</font>
		</li>
		
		<li>
			<img  class="new_Images" alt="U.S.POLO MENS T-SHIRT" 
					src="resources/images/homepage-images/U.S.POLO MENS T-SHIRT.jpg"><br>
			<font class="new_productnames">U.S.POLO MEN'S T-SHIRT</font><br>
			<font class="new_productcost">Rs.1299</font>
		</li>
		
	</ul>
</div>


<div id="offer_zone" class="homepage_headings">
	<font class="heading">OFFER ZONE</font><br>
</div>


<div id="offer_zoneImages">
	<img id="offreszoneImg1" alt="offer zone" src="resources/images/homepage-images/offerszoneImg1.jpg">
	<img id="offreszoneImg2" alt="offer zone" src="resources/images/homepage-images/offerszoneImg2.jpg">
	<img id="offreszoneImg3" alt="offer zone" src="resources/images/homepage-images/offerszoneImg3.jpg">
	<img id="offreszoneImg4" alt="offer zone" src="resources/images/homepage-images/offerszoneImg4.jpg">
</div>

<div id="our_favourites" class="homepage_headings">
	<font class="heading">OUR FAVOURITES</font><br>
</div>

<div id="our_favouritesImages" class="homepage_headings">
	<img id="titanImg" alt="titan" src="resources/images/homepage-images/body_titan.jpg">
</div>

<div id="appDownload">
		
		<img id="exclusivespecialImg" alt="appdownload" src="resources/images/homepage-images/exclusivespecial.jpg">
		
		<a href="https://play.google.com/store/apps/details?id=shoppersstop.shoppersstop&hl=en" target="_blank">
			<img id="andriodappImg" alt="appdownload" src="resources/images/homepage-images/andriodapp.jpg">
		</a>
		
		<a href="https://itunes.apple.com/in/app/shoppers-stop/id1047171444?mt=8" target="_blank">
			<img id="appleappImg" alt="appdownload" src="resources/images/homepage-images/appleapp.jpg">
		</a>
		
</div>
 	
 <div id="social_hub" class="homepage_headings">
	<font class="heading">SOCIAL HUB</font><br>
</div>

<div id="socila_hubImages">
	
	<a href="https://www.facebook.com/shoppersstopindia" target="_blank">
		<img id="facebookImg" alt="social_hub" src="resources/images/homepage-images/facebook.jpeg">
	</a>
	
	<a href="https://www.instagram.com/shoppers_stop/" target="_blank">
	<img id="instagram1Img" alt="social_hub" src="resources/images/homepage-images/instagram1.jpg">
	</a>
	
	<a href="https://in.pinterest.com/shoppersstopin/pins/" target="_blank">
	<img id="pinintrestImg" alt="social_hub" src="resources/images/homepage-images/pinintrest.jpg">
	</a>
	
	<a href="https://twitter.com/shoppersstop" target="_blank">
	<img id="twitterImg" alt="social_hub" src="resources/images/homepage-images/twitter.jpg">
	</a>
	
	<a href="https://www.instagram.com/shoppers_stop/" target="_blank">
	<img id="instagram2Img" alt="social_hub" src="resources/images/homepage-images/instagram2.jpg">
	</a>
	
</div>
 
</body>
</html>