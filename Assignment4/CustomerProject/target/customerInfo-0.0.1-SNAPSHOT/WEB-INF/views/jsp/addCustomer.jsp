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

<title>Add Customer</title>

<!-- Bootstrap core CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Javascript -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
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
				<li><a href="#">Home</a></li>
				<li class="active"><a href="#">Customer</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Downloads</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
			</nav>
		</div>

		<!-- Jumbotron -->
		<!-- <div class="jumbotron"> -->
			<h1>Add Customer</h1>
			<p class="lead">Fill the following form to add new customer!!</p>
			<a href="?locale=en">English</a> <a href="?locale=nl">Nepali</a> <a
				href="?locale=ch">Chinese</a>
			
			<div class="form-group row">
			
			<form:form modelAttribute="newCustomer" method="post">
				<form:errors path="*" />

				<spring:message code="addCustomer.form.userId.label" />
				<form:input class="form-control" path="userId" />
				<form:errors path="userId" cssStyle="color:red" />
				</br>

				<spring:message code="addCustomer.form.userName.label" />
				<form:input class="form-control" path="userName" />
				<form:errors path="userName" cssStyle="color:red" />
				</br>

				<spring:message code="addCustomer.form.address.label" />
				<form:input class="form-control" path="address" />
				<form:errors path="address" cssStyle="color:red" />
				</br>

				<spring:message code="addCustomer.form.birthDate.label" />
				<form:input class="form-control" path="birthDate" />
				</br>
				<spring:message code="addCustomer.form.password.label" />
				<form:input class="form-control" path="password" />
				<form:errors path="password" cssStyle="color:red" />
				</br>
				<%-- Confirm Password:
			<form:input path="confirmPassword" />
				</br> 
				--%>
				<spring:message code="addCustomer.form.sex.label" />
				<label><form:radiobutton path="gender" value="M" />Male</label>
				<label><form:radiobutton path="gender" value="F" />Female</label>
				<form:errors path="gender" cssStyle="color:red" />
				</br>
				<input class="btn btn-default" type="submit" value="Add" />
			</form:form>
</div>

	<!-- 	</div> -->


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
