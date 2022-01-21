
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bonne année</title>
</head>
<body>

	<%@ include file="menu.jsp" %>

	<h1>Programme <Bonne année></h1>
	<p>Programme web pour souhaiter une bonne année à une personne</p>
	<form name="formNomPrenom">
		<div>
			<label form="nomPrenom">Nom et Prénom: </label>
			<input type="text" name="nomPrenom">
		</div>
		<div>
			<input type="button" value="OK" onclick="bonneAnnee()">
		</div>
	</form>
	<div>
		<hr>
		<h3 id="souhaitBonneAnnee"></h3>
	</div>
	
	
	<script>
		function bonneAnnee() {
			var nomPrenom = document.formNomPrenom.nomPrenom.value;
			var url = "/MyAjaxJSP/bonneAnnee?nomPrenom=" + nomPrenom;
			var date = new Date();
			var year = date.getFullYear();
			var xhr = new XMLHttpRequest();
			
			try {
				xhr.open("POST", url, false);
				xhr.send();
				var reponse = xhr.responseText;
				reponse = reponse.trim();
				var message = "Bonne année " + year + " à \"" + reponse + "\"."
				document.getElementById("souhaitBonneAnnee").innerHTML = message;
				
			}
			catch(e) {
				alert("Impossible de joindre de le serveur...");
			}
		}
	</script>

</body>
</html>