<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Detail</title>
<link rel="stylesheet"
	href="../webjars/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
<body>
	<div>
		<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Rabin's Mobile Store</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<form class="navbar-form navbar-right">
					<div class="form-group">
						<input type="text" placeholder="Email" class="form-control">
					</div>
					<div class="form-group">
						<input type="password" placeholder="Password" class="form-control">
					</div>
					<button type="submit" class="btn btn-success">Sign in</button>
				</form>
			</div>
			<!--/.navbar-collapse -->
		</div>
		</nav>
	</div>
	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Welcome to the page!</h1>
			<p>This is the most popular shopping application through out the
				USA. Thanks to all the valued customer who has supported us!</p>
			<p>
				<a class="btn btn-primary btn-lg" href="#" role="button">Learn
					more »</a>
			</p>
		</div>
	</div>


	<hr>
	<div class="container">
		<div class="col-md-8 col-md-offset-2">
			<div>
				<div class="row">
					<div class="col-md-6">
						<img src="${pageContext.request.contextPath}/images/${product.image}"
							alt="image of mobile" height="200" width="200" />
					</div>
					<div class="col-md-6">
						<div>
							<h1>${product.productName}</h1>
						</div>
						<div>
							<span>Unit Price : $</span>${product.unitPrice}</div>
						<div>
							<span>Description : </span>${product.description}</div>
						<%-- <div>${product.manufacturer}</div> --%>
						<div>
							<span>Category : </span>${product.category}</div>
						<div>
							<span>Units In Stock : </span>${product.unitsInstock}</div>
						<div>
							<span>Discontinuity : </span>${product.discontinued}</div>
						<div>
							<span>Condition : </span>${product.condition}</div>
					</div>
				</div>
				<div></div>

			</div>
			<div>
				<form action="processOrder/${product.productId}" method="post">
					<input type="text" name="quantity" class="form-control"
						placeholder="Enter the number of items you want to buy" required>
					<input type="submit" class="btn btn-success" value="Order Now">
				</form>
			</div>
		</div>
	</div>
</body>
<hr>
<footer class="container-fluid text-center bg-lightgray">

<div class="copyrights" style="margin-top: 25px;">
	<p>
		Maharishi University of Management © 2017, All Rights Reserved <br>
		<span>Web Design By: Rabin Pantha</span>
	</p>
	<p>
		<a href="https://www.linkedin.com/in/rabin-pantha-370882a2
"
			target="_blank">Linkedin <i class="fa fa-linkedin-square"
			aria-hidden="true"></i> 
		</a>
	</p>
</div>
</footer>
</html>