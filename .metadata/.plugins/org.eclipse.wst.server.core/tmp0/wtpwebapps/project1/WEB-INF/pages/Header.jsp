
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
	 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Header</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#collapse-example"
			aria-expanded="false">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<div class="navbar-header">


<url:url value="/resources/images/igg.jpg" var="url3"></url:url>	
			<a class="navbar-brand" href="#"><img
				src= "${url3 }" alt="NIIT" height="50px"
				width="50px"></a>
		</div>
		<div class="collapse navbar-collapse" id="collapse-example">
			<ul class="nav navbar-nav">
			
			<url:url value="/homePage" var="url2"></url:url>	
				<li class="active"><a href="${url2 }">Home<span
						class="sr-only">You are in home page link</span></a></li>
						
				<url:url value="/aboutus" var="url1"></url:url>		
				<li><a href="${url1 }">About Us</a></li>
				
				
				
           <url:url value="/admin/product/productform" var="url"></url:url>
				<li><a href="${url }">Add Product</a></li>
				
				 <url:url value="/all/product/productlist" var="url"></url:url>
				<li><a href="${url }">Browse All Products</a></li>
				
				

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">dropdown<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Edit</a></li>
						<li><a href="#">Delete</a></li>
						<li><a href="#">View</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
			<form class="navbar-form navbar-right">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</div>
	</nav>
</body>
</html>