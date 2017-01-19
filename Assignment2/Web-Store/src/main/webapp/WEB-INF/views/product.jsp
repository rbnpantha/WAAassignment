<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products Page</title>

<link rel="stylesheet"
	href="webjars/bootstrap/3.2.0/css/bootstrap.min.css">

<%-- <link rel='stylesheet'
	href='<%=org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css")%>'>--%>
<link rel='stylesheet'
	href='<%=org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css")%>'>
<script type='text/javascript'
	src='<%=org.webjars.AssetLocator.getWebJarPath("jquery.min.js")%>'></script>
<script type='text/javascript'
	src='<%=org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js")%>'></script>

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
	<div class="container">
		<div class="col-md-8 col-md-offset-3">
			<table>
				<tr>
					<th>Index</th>
					<th>Name</th>
					<th>Unit Price ($)</th>
					<th>unitsInstock</th>
					<th>Condition</th>
				</tr>


				<c:forEach items="${products}" var="product" varStatus="loop">
					<tr>
						<td>${loop.count}</td>
						<td>${product.productName}</td>
						<td>${product.unitPrice}</td>
						<td>${product.unitsInstock}</td>
						<td>${product.condition}</td>
						<td  style="padding-left:5em">
							<form action="productDetail/${product.productId}" method="get">
								<input type="submit" class="btn btn-primary"
									value="View Detail" />
							</form>
						</td>

					</tr>
				</c:forEach>

			</table>
		</div>
	</div>
</body>
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