<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Affichage de Nom</title>
</head>
<body>
	<h1>Affichage de Nom</h1>
	
	<!--<form method="POST" action="/MyAgency/nom">-->
	<form name="nomForm">
	
			<label for="nom">Votre nom: </label>
			<input type="text" name="nomIn">
			<input type="button" value="Envoyer" onclick="afficherNom()"/>

	</form>
	
	<div id="resultatAfficherNom">
		<!-- affichage de la réponse -->
	</div>
	
	<script>
		
		function afficherNom() {
			
			var xhr = new XMLHttpRequest();
			var v = document.nomForm.nomIn.value;
			//alert(v);
			var url = "/MyAgency/nom?nomIn=" + v;
			//alert(url);
			
			try {
				// xhr.open(method, url, boolean)
				// method: GET, POST
				//url: chaine de caractère
				// true: asynchrone; false: synchrone
				xhr.open("POST", url, false);
				xhr.send();
				if (xhr.readyState == 4 && xhr.status == 200) {
					var reponse = xhr.responseText; 
					document.getElementById("resultatAfficherNom").innerHTML = reponse;
				}
			}
			catch (e) {
				alert("Impossible de joindre le serveur !");
			}
		
		}
		
		
	
	</script>
</body>
</html>