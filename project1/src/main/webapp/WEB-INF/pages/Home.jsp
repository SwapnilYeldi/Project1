<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Carousel</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 50%;
      margin: auto;
  }
  </style>
</head>
<body>
	<%@include file="Header.jsp"%>
	<div class="container-fluid">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">

			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>

			</ol>


			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide home-image"
						src="resources/images/v3.jpg" " firstslide">
					<div class="container">
						<div class="carousel-caption">
							<h1>WELCOME TO THE HELMET STORE</h1>
							<p>Here You Can Browse And Buy Helmets.Order Now For Your Amazing New Arrivals</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="second-slide home-image" src="resources/images/bm1.jpg"
						 Secondslide" >
					<div class="container">
						<div class="carousel-caption">
							<h1>The Helmet Store.</h1>
							<p>Online shopping can make your life more easier</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="third-slide home-image " src="resources/images/sf1.jpg"
						" Thirdslide">
					<div class="container">
						<div class="carousel-caption">
							<h1>The Helmet You Love</h1>
							<p>Portect your head with helmet while driving</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="fourth-slide home-image " src="resources/images/s1.png"
					 Fourthslide">
					<div class="container">
						<div class="carousel-caption">
							<h1>Any helmet can be a "cool" helmet</h1>
							<p>your life,your helmet...you own it!!</p>
						</div>
					</div>
				</div>

				
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>


	</div>
</body>
<%@include file="Footer.jsp"%>
</html>