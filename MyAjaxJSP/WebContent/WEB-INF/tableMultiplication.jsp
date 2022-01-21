
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table de multiplication</title>
<style>
		h1 {
			margin-bottom: 0px;
		}
		hr {
			background-color: blue;
			height: 5px;
			margin-top: 2px;
		}
	</style>
</head>
<body>

	<%@ include file="menu.jsp" %>

	<h1>Table de multiplication (à 10)</h1>
	<hr>
	<form name="formTable">
		<label for="nbr">Entrez le nombre:</label>
		<input type="text" name="nbr" required>
		<input type="button" value="OK" onclick="tableMultiplication()">
	</form>
	
	<div id="laTableM"></div>
	
	
	
	<script>
	
			function tableMultiplication() {
				
				var valeur = document.formTable.nbr.value;
				valeur = valeur.trim()
				
				if (valeur.includes('.')) {
					valeur = valeur.split('.')[0];
				}
				if (valeur.includes(',')) {
					valeur = valeur.split(',')[0];
				}
				valeur = Number(valeur);
				
				if (valeur.length == 0) {
					alert("Erreur!");
				}
				else {
					var url = "/MyAjaxJSP/table?nbr=" + valeur;
					var xhr = new XMLHttpRequest();
					try {
						xhr.open("GET", url, false);
						xhr.send();
						if (xhr.readyState == 4 && xhr.status == 200) {
							var reponse = xhr.responseText;
							document.getElementById("laTableM").innerHTML = reponse;
						}
						else {
							console.log("Chargement...");
						}
					}
					catch (e) {
						alert("Impossible de se connecter au serveur !");
					}
				}
			}
	</script>

</body>
</html>