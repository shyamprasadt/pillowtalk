<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style type="text/css">
#header{
	width: 100%;
	height: 60px;
}

#body{
width: 100%;
}

#navigation{
height:83px;
width: 100%;
}

</style> 
</head>
<body>
<div id=header>
	<tiles:insertAttribute name="header" />
</div>

<div id=navigation>
	<tiles:insertAttribute name="navigation" />
</div>  

<div id="body">  
	<tiles:insertAttribute name="body" />
</div>  

<div id="footer" style="clear:both" align="center">
	<tiles:insertAttribute name="footer" />
</div>  

</body>
</html>