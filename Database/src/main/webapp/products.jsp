<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ page import="edu.aydin.Product" isELIgnored="false" %>
<%@ page import="edu.aydin.Controller" isELIgnored="false" %>
<%@ page import="edu.aydin.Mngo"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>${requestScope.prod.name}</title>
<style type="text/css">
	.container{
		text-align:center;
		max-width:650px;
		width:%100;
		margin:0 auto;
	}
	#btn1{
		margin-top:30px;
		width:75px;
		height:30px;
	}
	body{
		background-color:black;
	}
	.container{
		color:white;
	}
	a{
		color:white;
	}
	
</style>
<script type="text/javascript">
</script>
</head>
<body>
	<div class="container">
	<h1>Product Details</h1>
	<p><strong>Name</strong> : ${requestScope.prod.name}</p> 
	<p><strong>Description</strong> : ${requestScope.prod.description}</p> 
	<p><strong>Price</strong> : <u>${requestScope.prod.price} TL</u></p>
	<img src="${requestScope.prod.link}" alt="" width="500" height="400"><br>
	</div>
	<div>
		<form action="Order" method="post">
			<input type="submit" value="Order">
		</form>
		
		<a href="Home.jsp">Back</a>
	</div>
</body>
</html>