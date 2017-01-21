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


<link href="${pageContext.request.contextPath}/css/justified-nav.css"
	rel="stylesheet">


<!-- Custom styles for this template -->
<%--  <link href="<c:url value="resources/theme1/css/justified-nav.css" />" rel="stylesheet">  --%>



<!-- alternate method using spring url -->
<%-- <spring:url value="/resources/theme1/css/justified-nav.css" var="mainCss" />
   <link href="${mainCss}" rel="stylesheet" /> --%>

</head>

<body>

	<div class="container">

		<!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
		<div class="masthead">
			<h3 class="text-muted">Customer Project</h3>
			<nav>
			<ul class="nav nav-justified">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="customer">Customer</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Downloads</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
			</nav>
		</div>

		<!-- Jumbotron -->
		<div class="jumbotron">
			<h1>Customer Project!</h1>
			<p class="lead">This project is a part of Lab assignment 4 of WAA course. </p>
			<p>
				<a class="btn btn-lg btn-success" href="customer" role="button">Add Customer Now !!</a>
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
