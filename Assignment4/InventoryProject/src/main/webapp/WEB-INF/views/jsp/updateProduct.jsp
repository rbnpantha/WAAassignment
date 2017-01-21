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

<title>Update Product</title>

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



		<h1>Add Product</h1>
		<p class="lead">Fill the following form to add new product!!</p>
		<a href="?locale=en">English</a> <a href="?locale=nl">Nepali</a> <a
			href="?locale=ch">Chinese</a>


		<form action="/customerInfo/product/search" method="put">
		<input type="text" name="search"
				placeholder="Enter Product Id Here..." required /> <input
				type="submit" value="Search" />
		</form>


		<div class="form-group row">

			<form:form modelAttribute="product" method="post">
				<form:errors path="*" />

				<spring:message code="addProduct.form.productId.label" />
				<form:input class="form-control" path="productId" />
				<form:errors path="productId" cssStyle="color:red" />
				</br>

				<spring:message code="addProduct.form.productName.label" />
				<form:input class="form-control" path="productName" />
				<form:errors path="productName" cssStyle="color:red" />
				</br>

				<spring:message code="addProduct.form.description.label" />
				<form:input class="form-control" path="description" />
				<form:errors path="description" cssStyle="color:red" />
				</br>

				<spring:message code="addProduct.form.price.label" />
				<form:input class="form-control" path="price" />
				<form:errors path="price" cssStyle="color:red" />
				</br>

				<spring:message code="addProduct.form.condition.label" />
				<label><form:radiobutton path="condition" value="M" />New</label>
				<label><form:radiobutton path="condition" value="F" />Old</label>
				<label><form:radiobutton path="condition" value="F" />Refurbished</label>
				<form:errors path="condition" cssStyle="color:red" />
				</br>
				<input class="btn btn-default" type="submit" value="Add" />
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
