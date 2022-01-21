<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
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
	<h1> Welcome to everyone</h1>
	<p class="green-color">I am the first man on the earth. Yeaaah!!!</p>
	
	<!-- scriptlet va exécuter du code Java -->
	<!--  <span class="red-color"> -->
	<%  
	  // ceci est du code Java (qui sera exécuté côté serveur)
	  String nom = "Abdelkrim";
	  String prenom = "Meriama";
	  //System.out.println("Vous vous appelez: " + nom + " " + prenom); // le résultat sera afficher dans la console
	  out.println("Vous vous appelez: <span class=\"red-color\">" + nom + " " + prenom + "</span>");
	
	%>
	<!-- </span> -->
	
	
	
	
</body>
</html>