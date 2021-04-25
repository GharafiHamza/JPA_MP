<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Catalogue</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="cat_title">Catalogue <br> ${categorie}</div>
 <div class="container">
<form action="consult" id="choose_cat">
	<div class="selected">
		<select name="categories" id="categories" onchange="submit()" >
		  <option class="op" value="" disabled selected>Choose a categorie</option>
		  <option class="op" value="All">All</option>
		  <option class="op" value="Classical">Classical</option>
		  <option class="op" value="Hip-Hop">Hip-Hop</option>
		  <option class="op" value="Jazz">Jazz</option>
		  <option class="op" value="Pop">Pop</option>
		  <option class="op" value="Rock">Rock</option>
		</select> 
	</div>
</form>
<div class="grid-display">
  <c:forEach items="${articles}" var="article">
       <div class="poster-card">
            <h2 class="title"><c:out value="${article.titre}"/></h2>
            <div class="img-wrapper">
                <img src="${article.photo}" height="350" alt="">
            </div>
            <div class="info-section">
                <div class="misc">
                    <div class="category"><div class="label">Reference :</div><br /><a href="details?artag=${article.codearticle}" title="Check artical details" ><c:out value="${article.categorie}"/>00<c:out value="${article.codearticle}"/></a></div>
                    <div class="author"><div class="label">Author :</div><br /><c:out value="${article.auteur}"/></div>
                    <div class="price"><div class="label">Price :</div><br />${article.prix}</div>
                </div>
                <a href="details?artag=${article.codearticle}" class="add-to-basket">Ajouter au panier</a>
            </div>
        </div>
  </c:forEach>
</div>
</body>
</html>