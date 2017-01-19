<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome page</title>
<link rel="stylesheet" href="webjars/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
<body>

<!-- class="jumbotron"-->
<div class="jumbotron">
<div class="container">
 <p>Welcome ${user.userName}</p>
  <h3 class="display-3">WAA Lab 3!!</h1>
  <p class="lead">Todays Lession is about state management.</p>
  <hr class="m-y-md">
 <form action="logout" method="get">
							<input type="submit" class="btn btn-danger" value="Log out" />
							</form>
</div>
</div>
<!-- class="jumbotron end"-->

<div>${message}</div>

</body>
</html>