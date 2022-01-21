<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition</title>
<style>
	input[type="button"] {
		margin-top: 10px;
		margin-left: 60px;
	}
	
	#resultatAddition {
		margin-top: 20px;
		background-color: yellow;
	}
</style>
</head>
<body>

	<%@ include file="menu.jsp" %>

	

	<h1>Addition (avec l'utilisateur: 
		<c:if test="${ !empty sessionScope}">
			<c:out value="${sessionScope.login }"></c:out>
		</c:if>)
	</h1>
	
	<fieldset>
		<legend>Addition</legend>
		<form name="formAddition">
			<label for="v">Valeur 1: </label>
			<input type="text" name="v">
			<br><br>
			<label for="w">Valeur 2: </label>
			<input type="text" name="w">
			<br>
			<input type="button" value="Résultat" onclick="addition()">
		</form>
		<div id="resultatAddition"></div>
	</fieldset>
	
	
	<script>
		function addition() {
			var v = document.formAddition.v.value;
			var w = document.formAddition.w.value;
			var xhr = new XMLHttpRequest();
			var url = "/MyAjaxJSP/addition?v=" + v + "&w=" + w;
			try {
				xhr.open("POST", url, false);
				xhr.send();
				
				if (xhr.readyState == 4 && xhr.status == 200) {
					var reponse = xhr.responseText;
					document.getElementById("resultatAddition").innerHTML = reponse;
				}
			}
			catch(e) {
				alert("Impossible de joindre le serveur !");
			}
			
		}
	</script>
</body>
</html>