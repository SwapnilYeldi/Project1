
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About us</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<body id="myPage">

	<%@include file="Header.jsp"%>

	<div style="margin-top: 50px;">



		<!-- Image Header -->
		<div class="w3-display-container w3-animate-opacity">
			<img src="resources/images/abt.jpg" alt="boat"
				style="width: 100%; min-height: 350px; max-height: 600px;">

		</div>





		<!-- Contact Container -->
		<div class="w3-container w3-padding-64 w3-theme-l5" id="contact">
			<div class="w3-row">
				<div class="w3-col m5">
					<div class="w3-padding-16">
						<span class="w3-xlarge w3-border-teal w3-bottombar">Contact
							Us</span>
					</div>
					<h3>Address</h3>
					<p>Swing by for a cup of coffee, or whatever.</p>
					<p>
						<i class="fa fa-map-marker w3-text-teal w3-xlarge"></i> Pune, Ind
					</p>
					<p>
						<i class="fa fa-phone w3-text-teal w3-xlarge"></i> +91 8087997515
					</p>
					<p>
						<i class="fa fa-envelope-o w3-text-teal w3-xlarge"></i>
						swapnilld123@gmail.com
					</p>
				</div>


				<!-- Google Maps -->
				<div id="googleMap" style="width: 100%; height: 420px;"></div>
				<script>
					function myMap() {
						myCenter = new google.maps.LatLng(41.878114, -87.629798);
						var mapOptions = {
							center : myCenter,
							zoom : 12,
							scrollwheel : false,
							draggable : false,
							mapTypeId : google.maps.MapTypeId.ROADMAP
						};
						var map = new google.maps.Map(document
								.getElementById("googleMap"), mapOptions);

						var marker = new google.maps.Marker({
							position : myCenter,
						});
						marker.setMap(map);
					}
				</script>
				<script
					src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
				<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

				<!-- Footer -->
				<footer class="w3-container w3-padding-32 w3-theme-d1 w3-center">
				<h4>Follow Us</h4>
				<a class="w3-button w3-large w3-teal" href="javascript:void(0)"
					title="Facebook"><i class="fa fa-facebook"></i></a> <a
					class="w3-button w3-large w3-teal" href="javascript:void(0)"
					title="Twitter"><i class="fa fa-twitter"></i></a> <a
					class="w3-button w3-large w3-teal" href="javascript:void(0)"
					title="Google +"><i class="fa fa-google-plus"></i></a> <a
					class="w3-button w3-large w3-teal" href="javascript:void(0)"
					title="Google +"><i class="fa fa-instagram"></i></a> <a
					class="w3-button w3-large w3-teal w3-hide-small"
					href="javascript:void(0)" title="Linkedin"><i
					class="fa fa-linkedin"></i></a>
				<p>
					Powered by <a href="https://www.w3schools.com/w3css/default.asp"
						target="_blank">w3.css</a>
				</p>

				<div style="position: relative; bottom: 100px; z-index: 1;"
					class="w3-tooltip w3-right">
					<span class="w3-text w3-padding w3-teal w3-hide-small">Go To
						Top</span> <a class="w3-button w3-theme" href="#myPage"><span
						class="w3-xlarge"> <i class="fa fa-chevron-circle-up"></i></span></a>
				</div>
				</footer>

				<script>
					// Script for side navigation
					function w3_open() {
						var x = document.getElementById("mySidebar");
						x.style.width = "300px";
						x.style.paddingTop = "10%";
						x.style.display = "block";
					}

					// Close side navigation
					function w3_close() {
						document.getElementById("mySidebar").style.display = "none";
					}

					// Used to toggle the menu on smaller screens when clicking on the menu button
					function openNav() {
						var x = document.getElementById("navDemo");
						if (x.className.indexOf("w3-show") == -1) {
							x.className += " w3-show";
						} else {
							x.className = x.className.replace(" w3-show", "");
						}
					}
				</script>
			</div>
</body>
<%@include file="Footer.jsp"%>
</html>
