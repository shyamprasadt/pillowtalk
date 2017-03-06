<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>

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
float: right;
}

#navigationrightList li{
float: left;
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
height: 30px;
border-right: hidden;
padding-left: 5px;
padding-right: 8px;
}

</style>
</head>
<body>
<div id="navigationdiv">
<!-- 		<ul class="w3-navbar w3-light-grey w3-border"> -->
<!--  			 <ul><li style="height: 34px; "><a class="w3-pink" href="http://localhost:8080/pillowtalk" ><i class="fa fa-home fa-2x"></i></a></li> -->
		<c:forEach items="${categoryMap}" var="category">
			<ul id="navigationmainList">
				<li>${category.key}
					<ul id="navigationsubList">
						<c:forEach items="${category.value}" var="catvalue">
							<li>
								<a href="getProductsList?&pid=${catvalue.getId()}">${catvalue.getName()}</a>
							</li>
						</c:forEach>	
					</ul>						
				</li>
			</ul>
		</c:forEach>
		</ul>	
	
	
</div>  		
</body>
</html>
