<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ahab ElectronicStore</title>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,800" rel="stylesheet">
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
  </style>
</head>
<body><br>
<div class="header">
	<div class="inner_header">
		<div class="logo_container">
			<h1>Ahab<span>ElectronicStore</span></h1>
		</div>
		<ul class="navigation">
			<a href="index.jsp"><li>Home</li></a>
			<a href="contact.jsp"><li>Contact</li></a>
		</ul>
	</div>
</div>
<div class="middle">
	<img id="homepic" src="https://ak8.picdn.net/shutterstock/videos/17690698/thumb/10.jpg" alt="">
</div>
</body>
</html>