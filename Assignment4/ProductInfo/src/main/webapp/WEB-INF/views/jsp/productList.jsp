<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
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
								<li><a href='/ProductInfo/products/add'>Add Product</a></li>
								<li><a href='/ProductInfo/product/update'>Update
										Product</a></li>
								<li><a href='/ProductInfo/productlist'>View Product
										list</a></li>
							</ul></li>
						<li><a href='#'>About</a></li>
						<li><a href='#'>Contact</a></li>
					</ul>
				</div>
			</div>
		</div>


		<div id="product-id">
			<c:forEach items="${productList}" var="product">
				<div class="boxed">

					<a href="productDescription/${product.productId}">
						<ul>
							<li>${product.productId}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								${product.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${product.condition}


							
					</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
						href="deleteProduct/${product.productId}">Delete</a>
					</li>
					</ul>
				</div>
			</c:forEach>
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