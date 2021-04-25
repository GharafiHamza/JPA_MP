<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details de l'article</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
<div class="art_cont">
	<div class="art_img">
		<img alt="" src="${article.photo}""> 
	</div>
	<div class="art_title"><div class="art_label">Title :</div><c:out value="${article.titre}"/>00<c:out value="${article.codearticle}"/></div>
	<div class="art_info" >
	    <div class="author"><div class="art_label">Author :</div><c:out value="${article.auteur}"/></div>
	    <div class="editor"><div class="art_label">Editor :</div><c:out value="${article.editeur}"/></div>
	    <div class="stock"><div class="art_label">Stock :</div><c:out value="${article.stock}"/></div>
	    <div class="categorie"><div class="art_label">Categorie :</div><c:out value="${article.categorie}"/></div>
	    <div class="price"><div class="art_label">Price :</div>${article.prix}</div>
	    <a href="details?artag=${article.codearticle}" class="add-to-basket">Ajouter au panier</a>
	</div>
	
</div>	

 </div>
</body>
</html>