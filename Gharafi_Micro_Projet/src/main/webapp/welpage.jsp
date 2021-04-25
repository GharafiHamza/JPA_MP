<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container_con">
	<img alt="" src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80">

<div class="welpag">
	<h3 class="form_ti" >Binvenue ${client.nom} ${client.prenom}</h3>
	<div class="wel_butt" >
		<a href="consult" class="butt1">Consulter le catalogue</a><br/>
		<a href="signup.jsp" class="butt2">Suivre vos commandes</a><br/>
		<a href="signup.jsp" class="butt1">Visualisez votre panier</a>
	</div>
</div>
</div>
</body>
</html>