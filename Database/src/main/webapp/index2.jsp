<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import="edu.aydin.Controller" isELIgnored="false" %>
<%@ page import="edu.aydin.RegisterController" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Ahab ElectronicStore</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,800" rel="stylesheet">
   <%@ include file="header.jsp" %>
  <style>
  	.container{
  		width: 320px;
  		height: 420px;
  		background: rgba(0, 0, 0, 0.5);
  		color: #fff;
  		top: 50%;
  		left: 50%;
  		position: absolute;
  		transform: translate(-50%, -50%);
  		box-sizing: border-box;
  		padding: 70px 30px;
  	}
  	h1{
  		margin: 0;
  		padding: 0 0 20px;
  		text-align: center;
  		font-size: 22px;
  		font-weight: 200;
  	}
  	.container p{
  		margin: 0;
  		padding: 0;
  		font-weight: bold;
  	}
  	.container input{
  		width: 100%;
  		margin-bottom: 20px;
  	}
  	.container input[type="text"], input[type="password"]{
  		border: none;
  		border-bottom: 1px solid #fff;
  		background: transparent;
  		outline: none;
  		height: 40px;
  		color: #fff;
  		font-size: 16px;
  	}
  	.container input[type="submit"]{
  		border: none;
  		outline: none;
  		height: 40px;
  		background-color: black;
  		color: #fff;
  		font-size: 18px;
  		border-radius: 20px;
  		 cursor: pointer;
  	}
  	a{
  		text-decoration:none;
  		color:white;
  	}
  	.registe{
  		font-size:20px;
  	}
  </style>
</head>
<body><br><br>
<div class="middle">
	<div class="container">
  	<h1>Login Here</h1>
  	<form action="handle_login" method="post">
     	<p>Username</p>
     	<input type="text" name="username" placeholder="Enter Username" size="32">
     	<p>Password</p>
     	<input type="password" name="pwd" placeholder="Enter Password" size="32">
   	 	<input type="submit" value="Login"></input>
   	 	<p class="registe"><strong><c:out value="${requestScope.str}"></c:out><br><br></strong></p>
   	 	<a href="register.jsp">Register Here</a>
  
 	 </form>
	</div>
</div>
</body>
</html>