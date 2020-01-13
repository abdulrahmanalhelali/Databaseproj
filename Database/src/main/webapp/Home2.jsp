<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ page import="java.util.ArrayList ,edu.aydin.Product"  
	isELIgnored="false"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<title>Home Page for Admin</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,800" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 <script>
 	function addprod(){
 		document.getElementById("form2").style.display="none";
 		document.getElementById("form1").style.display="block";
 	}
 	function delprod(){
 		document.getElementById("form1").style.display="none";
 		document.getElementById("form2").style.display="block";
 	}
 </script>
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
	#form1{
		display: none;
	}
	#form2{
		display: none;
	}
</style>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<div class="container">
	<div class="header">
	<center><h1 class="header-param"> <span><c:out value="${param.username}" /></span> Welcome to AhabElectronicStore</h1></center></div>
	</div><br><br><br><br>
	<center>
	<button type="button" class="btn btn-primary" onclick="addprod()">Add a product</button>
	<button type="button" class="btn btn-primary" onclick="delprod()">Delete a product</button>
	
	<form id="form1" action="Addprod" method="post">
    <div class="form-group">
      <label for="name">Product name:</label>
      <input class="form-control" placeholder="Enter product name" name="productname">
    </div>
    <div class="form-group">
      <label for="description">Description:</label>
      <input class="form-control" placeholder="Enter Description" name="description">
    </div>
    <div class="form-group">
      <label for="description">Price:</label>
      <input class="form-control" placeholder="Enter Price" name="price">
    </div>
    <div class="form-group">
      <label for="link">Picture link:</label>
      <input class="form-control" placeholder="Enter Picture link" name="link">
    </div>
    <div class="form-group form-check">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button></a>
  </form>
  
	<form id="form2" action="Delprod" method="post">
    <div class="form-group">
      <label for="id">Product id:</label>
      <input class="form-control" placeholder="Enter product id to delete" name="productid">
    </div>
    <div class="form-group form-check">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button></a>
  </form>
	
	</center><br><br><br><br>
	<div id="back"><a href="index.jsp">Back to login page</a></div>
</body>
</html>