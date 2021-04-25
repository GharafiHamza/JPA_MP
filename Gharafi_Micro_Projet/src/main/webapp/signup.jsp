<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>S'inscrire</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container_con">
	<img alt="" src="https://images.unsplash.com/photo-1618121608721-343996002145?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80">
	<form action="check" method="post" class="insc_form1" >
		<div class="form_cont">
	 	<p class="form_ti">Inscrivez vous </p>
	 	<label for="email">Email  :</label>
	 	<input type="email" class="input" id="email" name="email"  >
	 	<label for="nom">Nom  :</label>
	 	<input type="text" class="input" id="nom" name="nom">
	 	<label for="prenom">Prenom :</label>
		<input type="text" class="input" id="prenom" name="prenom">
	 	<label for="adresse">Adresse :</label>
		<input type="text" class="input" id="adresse" name="adresse">
		<label for="ville">Ville :</label>
		<input type="text" class="input" id="ville" name="ville">
		<label for="tel">Tel :</label>
		<input type="text" class="input" id="tel" name="tel">
		<label for="codepostal">CodePostal  :</label>
	 	<input type="text" class="input" id="codepostal" name="codepostal">
	 	<label for="pwd">Password :</label>
		<input type="password" class="input" id="pwd" name="pwd">
	 	<input type="submit" value="Submit" class="submit">
	 	</div>
	</form> 
</div>
</body>
</html>