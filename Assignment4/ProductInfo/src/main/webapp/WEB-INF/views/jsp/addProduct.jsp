<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

</head>
<body>

	<div class="container">

		<div class="container">
			<div class="row">
				<div id='cssmenu'>
					<ul>
						<li><a href='/ProductInfo/'>Home</a></li>
						<li class='active'><a href='#'>Products</a>
							<ul>
								<li><a href='/ProductInfo/products/add'>Add Product</a></li>
								<li><a href='#'>Update Product</a></li>
								<li><a href='/ProductInfo/productlist'>View Product
										list</a></li>
							</ul></li>
						<li><a href='#'>About</a></li>
						<li><a href='#'>Contact</a></li>
					</ul>
				</div>
			</div>
		</div>

		<h1>Add Product</h1>
		<div class="form-group row">
			<form:form modelAttribute="newProduct" method="post">
				<form:errors path="*" element="div" />
	Product ID:
	<form:input path="productId" />
				<br /> Product Name:
	<form:input path="name" />
				<br /> Description:
	<form:textarea path="description" />
				<br /> Discontinued:
	<form:checkbox path="discontinued" />
				<br /> Condition:
	<form:radiobutton path="condition" value="New" />
	New
	<form:radiobutton path="condition" value="Old" />
	Old
	<form:radiobutton path="condition" value="Refurbished" />
	Refurbished
	<input type="submit" value="Add" />
			</form:form>
		</div>

		<a href="../productlist">View Product List</a> <br>
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