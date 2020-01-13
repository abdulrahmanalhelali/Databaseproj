<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import="java.util.ArrayList ,edu.aydin.Product"  
	isELIgnored="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<title>Home Page for customers</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,800" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
	.container{
	}
	.uname{
		text-align:center;
	}
	.links{
		height:32px;
	}
	
	a{
		color:#35459E;
		text-decoration:none;
		height: 100%;
		display: table;
		float:left;
		padding: 0px 20px;
	}
	body{
		background-color:black;
	}
	.middle{
		margin: 0;
		padding: 0;
		font-family: Montserrat;
	}
	#homepic{
		position: fixed;
		background-size: cover;
		background-position: center;
		font-family: Montserrat;
		left: 350px;
		width: 850px;
		margin-top: 30px;
	}
	.header{
		color:white;
		position:center;
	}
	.header-param span{
		color:white;
		position:center;
	}
	a{
		color:white;
	}
	#back{
		font-size: 25px;
	}
</style>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<div class="container">
	<div class="header">
	<center><h1 class="header-param"> <span><c:out value="${param.username}" /></span> Welcome to AhabElectronicStore</h1></center></div>
	</div>
	<div class="row">
	<% ArrayList<Product> products= (ArrayList<Product>)session.getAttribute("products");
		for(int i = 0;i<products.size();i++){	%>
			<a href="handle_login?id=<%=products.get(i).getId()%>">
				<img src="<%= products.get(i).getLink() %>" width="300" height="236">
				<div class="caption">
            		<p><%=products.get(i).getName()%></p>
          		</div>
			</a>
			
	<% }%>
	</div>
	<div id="back"><a href="index.jsp">Back to login page</a></div>
	
</body>
</html>