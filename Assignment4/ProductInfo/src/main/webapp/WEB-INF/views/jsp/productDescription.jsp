<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Description</title>
<!-- Bootstrap core CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Javascript -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	rel="stylesheet">


<link href="${pageContext.request.contextPath}/css/menubar.css"
	rel="stylesheet">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/menubar.js"></script>

</head>
<body>
	<div class="container">

		<div class="container">
			<div class="row">
				<div id='cssmenu'>
					<ul>
						<li class='active'><a href='/ProductInfo/'>Home</a></li>
						<li><a href='#'>Products</a>
							<ul>
								<li><a href='/ProductInfo/products/add'>Add Product</a>
									</li>
								<li><a href='/ProductInfo/product/update'>Update Product</a>
									</li>
								<li><a href='/ProductInfo/productlist'>View Product list</a>
									</li>
							</ul></li>
						<li><a href='#'>About</a></li>
						<li><a href='#'>Contact</a></li>
					</ul>
				</div>
			</div>
		</div>


	<h3>Product Name :- &nbsp;${product.name}</h3>
	<div id="order">

		<form:form action="/Lab4/update" modelAttribute="product" method="post">
			<table>
				<tr>
					<td>Product Name</td>
					<td><form:input type="text" path="name" value="${product.name}"/></td>
				</tr>
				<tr>
					<td>Product ID</td>
					<td><form:input type="text" path="productId"
						value="${product.productId}"/></td>
				</tr>
				<tr>
					<td>Units in stock</td>
					<td><form:input type="text" path="unitsInStock"
						value="${product.unitsInStock}"/></td>
				</tr>
				<tr>
					<td>Unit Price</td>
					<td><form:input type="text" path="unitPrice"
						value="${product.unitPrice}"/></td>
				</tr>
				<tr>
					<td>Manufacturer</td>
					<td><form:input type="text" path="manufacturer"
						value="${product.manufacturer}"/></td>
				</tr>
		
				<tr>
					<td>Category</td>
					<td><form:input type="text" path="category"
						value="${product.category}"/></td>
				</tr>
				<tr>
					<td>Units in order</td>
					<td><form:input type="text" path="unitsInOrder"
						value="${product.unitsInOrder}"/></td>
				</tr>
				<tr>
					<td>Units in Stock</td>
					<td><form:input type="text" path="unitsInStock"
						value="${product.unitsInStock}"/></td>
				</tr>
				<tr>
					<td>Condition</td>
					<td><form:input type="text" path="condition"
						value="${product.condition}"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input  type="submit"  value="update"/>
					</td>
				</tr>
			</table>
		</form:form>

	</div>
	<!-- Site footer -->
	<footer class="container-fluid text-center bg-lightgray">
	<div style="background-color: bisque;">
		<div class="copyrights" style="margin-top: 25px;">
			<p>
				MUM © 2017, All Rights Reserved <br> <span>Web
					Application Developed By: Rabin Pantha</span>
			</p>
			<p>
				<a href="https://www.linkedin.com/in/rabin-pantha-370882a2"
					target="_blank">Linkedin <i class="fa fa-linkedin-square"
					aria-hidden="true"></i> 
				</a>
			</p>
		</div>
	</div>
	</footer>
	</div>
	<!-- /container -->
</body>
</html>