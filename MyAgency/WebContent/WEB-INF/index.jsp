<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- JSTL = Java Standard Tag Library -->
<!-- Library: (https://docs.oracle.com/cd/E17802_01/j2ee/j2ee/1.4/docs/tutorial-update2/doc/JSTL3.html)
		- core (coeur en francais)
		- etc.
 -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	.red-color {
		color: red;
	}
	
	.green-color {
		color: green
	}
</style> 
</head>
<body>
	<div class="container">
		<h1> Welcome to everyone</h1>
		<p class="green-color">I am the first man on the earth. Yeaaah!!!</p>
		
		<p> ${message } <span class="red-color">${personne}</span></span></p>
		
		<!--  ${expression} C'est ce qu'on appelle EL = Expression Language
		 	<% %>
		 	JSTL = Java Standard Tag Library
		
		 -->
		
		 <table class="table table-striped table-bordered">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">Code</th>
		      <th scope="col">Description</th>
		      <th scope="col">Prix</th>
		    </tr>
		  </thead>
		  <tbody>
			  <c:forEach var="i" begin="0" end="${ produits.size()-1 }" step="1">
				<tr>
			      <td>${produits[i].getCode()}</td>
			      <td>${produits[i].getDescription()}</td>
			      <td>${produits[i].getPrix()}</td>
			    </tr>
			  </c:forEach>
		  </tbody>
		</table>
		
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</body>
</html>