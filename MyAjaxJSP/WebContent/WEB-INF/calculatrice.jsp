
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculatrice</title>
<style>
	h1 {
		color: blue;
	}
	input[type="button"] {
		margin-top: 10px;
		margin-left: 60px;
	}
	
	#resultatCalcul {
		margin-top: 20px;
		background-color: yellow;
	}
	fieldset {
		border-color: blue;
	}
</style>
</head>
<body>
	
	<%@ include file="menu.jsp" %>

	<h1>Calculatrice</h1>
	<fieldset>
		<legend>Faire des calculs</legend>
		<form name="formCalcul">
			<label for="v">Valeur 1: </label>
			<input type="text" name="v">
			<br/><br/>
			<label for="op">Opérateur</label>
			<select name="op">
				<option value="addition"> + (addition)</option>
				<option value="soustraction"> - (soustraction)</option>
				<option value="multiplication"> * (multiplication)</option>
				<option value="division"> / (division)</option>
			</select>
			<br/><br/>
			<label for="w">Valeur 2: </label>
			<input type="text" name="w">
			<br>
			<input type="button" value="Résultat" onclick="calculatrice()">
		</form>
		<div id="resultatCalcul"></div>
	</fieldset>
	
	<!--  <p>Revenir à la page <a href="<%= request.getContextPath() %>/accueil">d'accueil</a>.</p> -->
	
	<script>
		function calculatrice() {
			var v = document.formCalcul.v.value;
			var w = document.formCalcul.w.value;
			var op = document.formCalcul.op.value;
			/*alert(v);
			alert(w);
			alert(op);*/
			var xhr = new XMLHttpRequest();
			var url = "/MyAjaxJSP/calcul?v=" + v + "&w=" + w + "&op=" + op;
			try {
				xhr.open("POST", url, false);
				xhr.send();
				
				if (xhr.readyState == 4 && xhr.status == 200) {
					var reponse = xhr.responseText;
					document.getElementById("resultatCalcul").innerHTML = reponse;
				}
			}
			catch(e) {
				alert("Impossible de joindre le serveur !");
			}
			
		}
	</script>
</body>
</html>