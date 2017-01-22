<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet"
	href="webjars/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container" style="margin-top: 30px">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						<strong>Sign in </strong>
					</h3>
					<div
						style="float: right; font-size: 80%; position: relative; top: -10px">
						<a href="#">Forgot password?</a>
					</div>
				</div>

				<div class="panel-body">
					<form role="form" action="login" method="post">
						<div class="alert alert-danger">${err_msg}</div>
						<div style="margin-bottom: 12px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="login-username"
								type="text" class="form-control" name="userName"
								value="${cookie.userName.value}" placeholder="username">
						</div>

						<div style="margin-bottom: 12px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input id="login-password"
								type="password" class="form-control" name="password"
								placeholder="password">
						</div>


						<div class="input-group">
							<div class="checkbox" style="margin-top: 0px;">
								<label> <input id="login-remember" type="checkbox"
									name="remember" <c:if test="${cookie.containsKey('userName')}">checked</c:if>> Remember me
								</label>
							</div>
						</div>


						<button type="submit" class="btn btn-success">Sign in</button>

						<hr style="margin-top: 10px; margin-bottom: 10px;">

						<div class="form-group"></div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>