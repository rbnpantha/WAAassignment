<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Page</title>
</head>
<body>

<h1>hello + ${test}</h1>
	<h1>Here are a list of products</h1>

	<%-- <table>
			<tr>
				<th>Index</th>
				<th>Name</th>
				<th>Unit Price</th>
				<th>UnitsInStock</th>
				<th>Condition</th>
			</tr>
		
			
			<c:forEach items="${products}" var="product">
				<tr>
					<td>${index}</td>
					<td>${product.productName}</td>
					<td>${product.unitPrice}</td>
					<td>${product.unitInStock}</td>
					<td>${product.condition}</td>
				</tr>
			</c:forEach>
	
	</table> --%>

</body>
</html>