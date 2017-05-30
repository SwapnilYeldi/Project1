<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags" prefix="url"%>
<%@ include file="Header.jsp"%>
<%@page isELIgnored="false"%>
<html>
<head>
<style type="text/css">
p {
	text-align: center;
	font-size: 200%;
	color: blue;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Insert title here</title>
</head>
<body>
	<div style="margin-top: 50px;">
	<table class="table table-bordered">
			<thead>
				<tr>
					<th>Product Name</th>
					<th>Price</th>
					<th>Manufacturer</th>
					<th>Discription</th>
					


				</tr>
			</thead>
		<p>
			<!-- Showing Product Details -->
			<url:url value="/resources/images/${id }.png" var="url"></url:url>
			<img src="${url }" height="400"> <br> <td>PRODUCT NAME:
			${product.name } </td><br> <td>PRICE : ${product.price } </td><br>
			<td>MANUFACTURER: ${product.manufacturer } </td><br> <td>DESCRIPTION :
			${product.description } </td><Br>
		</p>

		<url:url value="/all/product/productlist" var="url"></url:url>
		<a href="${url }">Browse All Products</a>
		</table>
	</div>

</body>
<%@include file="Footer.jsp"%>
</html>