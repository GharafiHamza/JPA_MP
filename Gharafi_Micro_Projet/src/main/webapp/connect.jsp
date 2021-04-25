<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Se Connecter</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container_con">
	<img alt="" src="https://images.unsplash.com/photo-1618121608721-343996002145?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80">
	<form action="check" method="get" class="insc_form0" >
		<div class="form_cont">
	 	<p class="form_ti">Connectez vous</p>
	 	<label for="email">Email  :</label>
	 	<input type="email" class="input" id="email" name="email"><br>
	 	<label for="pwd">Password :</label>
		<input type="password" class="input" id="pwd" name="pwd"><br>
	 	<input type="submit" value="Submit" class="submit" >
	 	<h5 style="color: red;"><c:out value="${para}"/></h5>
	 	</div>
	</form> 
</div>
</body>
</html>