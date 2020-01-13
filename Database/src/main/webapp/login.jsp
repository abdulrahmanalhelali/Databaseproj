<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ahab Store Login</title>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,800" rel="stylesheet">
 <%@ include file="header.jsp" %>
<style>
  	*{
  	margin: 0px;
  	padding: 0px;
  	list-style: 0;
  	text-decoration: none;
  	}
  	.header {
  		margin-top: -25px;
  		width: 100%;
  		height: 80px;
  		display: block;
  		background-color: #101010;
	}
	.inner_header{
		width: 1000px;
		height: 100%;
		display: block;
		margin: 0 auto;
	}
	.logo_container{
		height: 100%;
		display: table;
		float: left;
	}
	.logo_container h1{
		color: white;
		height: 100%;
		display: table-cell;
		vertical-align: middle;
		font-family:'Montserrat';
		font-size: 25px;
		font-weight: 200;
	}
	.logo_container h1 span{
		font-weight: 600;
	}
	.navigation{
		float: right;
		height: 100%;
	}
	.navigation a{
		height: 100%;
		display: table;
		float:left;
		padding: 0px 20px;
	}
	.navigation a li{
		display: table-cell;
		vertical-align: middle;
		height: 100%;
		color: white;
		font-family: 'Montserrat';
		font-size: 16px;
	}
  	.navigation a:hover {
  		background-color: #999;
  		color: black;
	}
	.navigation a.active {
  		background-color: dodgerblue;
  		color: white;
	}
	#homepic{
		position: fixed;
		background-size: cover;
		background-position: center;
		font-family: Montserrat;
		margin-top: 100px;
		left: 350px;
		width: 850px;
		height: auto;
	}
	body{
		background-color: black;
	}
	.middle{
		margin: 0;
		padding: 0;
		font-family: Montserrat;
	}
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
  		background-color: gray;
  		color: #fff;
  		font-size: 18px;
  		border-radius: 20px;
  		 cursor: pointer;
  	}
  	a{
  		color:white;
  	}
  </style>
</head>
<body><br>
<div class="header">
	<div class="inner_header">
		<div class="logo_container">
			<h1>Ahab<span>STORE</span></h1>
		</div>
	</div>
	<div class="middle">
	<div class="container">
  	<h1>Login Here</h1>
  	<form action="handle_login" method="post">
     	<p>Username</p>
     	<input type="text" name="username" placeholder="Enter Username" size="32">
     	<p>Password</p>
     	<input type="password" name="pwd" placeholder="Enter Password" size="32">
     	 <p>Email</p>
     	<input type="text" name="e_mail" placeholder="Enter email" size="32">
   	 	<input type="submit" value="Login"></input>
   	 	<a href="index.jsp">Back</a>
 	 </form>
	</div>
</div>
</div>
</body>
</html>