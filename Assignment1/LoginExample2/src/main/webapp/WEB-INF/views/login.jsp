<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="/LoginProject/login"  method="post">
        <h1>Welcome to Login Page!!</h1>
        <label>Name :</label><input type="text" name ="username" placeholder="Enter username" required/>
        <label>Password :</label><input type="password" name ="pass" placeholder="Enter password" required/>
         <input type="submit" value="Login"/>
         </form>
        <h4 style="color:red">${msg}</h4>
</html>