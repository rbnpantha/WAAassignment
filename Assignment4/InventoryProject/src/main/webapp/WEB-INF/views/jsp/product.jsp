<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page contentType="text/html;charset=UTF-8"%>
<!-- Spring tag libraries for externalizing messages, internationalization, and error handling -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


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

<title>Add Product</title>

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
						<li><a href='#'>Home</a></li>
						<li class='active'><a href='#'>Products</a>
							<ul>
								<li><a href='product/add'>Add Product</a>
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




		<body>

			<div class="container">

				<div class="container">

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
						<td>${product.price}</td>
						<td>${product.condition}</td>
						
						<td style="padding-left: 5em">
							<form action="productDetail/${product.productId}" method="get">
								<input type="submit" class="btn btn-primary" value="View Detail" />
							</form>
						</td>
						<td style="padding-left: 5em">
							<form action="product/edit/${product.productId}" method="get">
								<input type="submit" class="btn btn-primary" value="Edit" />
							</form>
						</td>
						<td style="padding-left: 5em">
							<form action="product/delete/${product.productId}" method="get">
								<input type="submit" class="btn btn-primary" value="Delete" />
							</form>
						</td>

					</tr>
				</c:forEach>

			</table>
		</div>
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


				<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
				<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
		</body>
</html>