<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Customer Home</title>

<!-- Bootstrap core CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Javascript -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	rel="stylesheet">

<!-- font awesome -->
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">


<link href="${pageContext.request.contextPath}/css/menubar.css"
	rel="stylesheet">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/menubar.js"></script>

<!-- Custom styles for this template -->
<%--  <link href="<c:url value="resources/theme1/css/justified-nav.css" />" rel="stylesheet">  --%>



<!-- alternate method using spring url -->
<%-- <spring:url value="/resources/theme1/css/justified-nav.css" var="mainCss" />
   <link href="${mainCss}" rel="stylesheet" /> --%>

</head>

<body>

	<div class="container">

<div class="container">
			<div class="row">
				<div id='cssmenu'>
					<ul>
						<li class='active'><a href='#'>Home</a></li>
						<li ><a href='#'>Products</a>
							<ul>
								<li><a href='products'>Product</a>
									<ul>
										<li><a href='#'>Food</a></li>
										<li><a href='#'>Electronics</a></li>
									</ul></li>
								<li><a href='product/update'>Update Product</a>
									<ul>
										<li><a href='#'>Food</a></li>
										<li><a href='#'>Electronics</a></li>
									</ul></li>
								<li><a href='product/delete'>Delete Product</a>
									<ul>
										<li><a href='#'>Food</a></li>
										<li><a href='#'>Electronics</a></li>
									</ul></li>
							</ul></li>
						<li><a href='#'>About</a></li>
						<li><a href='#'>Contact</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Jumbotron -->
		<div class="jumbotron">
			<h1>Inventory Project!</h1>
			<p class="lead">This project is a part of Lab assignment 4 of WAA
				course.</p>
			<p>
				<a class="btn btn-lg btn-success" href="product/add" role="button">Add
					Product Now !!</a>
			</p>
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
