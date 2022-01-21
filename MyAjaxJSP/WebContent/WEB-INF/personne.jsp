<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personne</title>
<script type="text/javascript" src="<%= request.getContextPath()%>/template/js/jquery-3.6.0.min.js"></script>
<style>
	h1 {
		color: green;
	}
	h2 {
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
		border-color: green;
	}
	hr {
		background-color: blue;
		height: 1px;
	}
</style>
</head>
<body>

	<%@ include file="menu.jsp" %>

	<h1>Personne</h1>
	<fieldset>
		<legend>Personne: Vos données</legend>
		<form name="formPersonne">
			<label for="nom">Nom: </label>
			<input type="text" name="nom">
			<br/><br/>
			<label for="prenom">Prénom: </label>
			<input type="text" name="prenom" id="prenom">
			<br/><br/>
			<label for="sexe">Sex: </label>
			<select name="sexe">
				<option value="M">M</option>
				<option value="F">F</option>
			</select>
			<br/><br/>
			<label for="dn">Date de naissance: </label>
			<input type="date" name="dn">
			<br/><br/>
			<label for="pays">Pays: </label>
			<input type="text" name="pays">
			<br>
			<input type="button" id="envoyer" value="Envoyer">
		</form>
		<div id="identitePersonne"></div>
	</fieldset>
	
	
	<script>
	
	$(document).ready(function() {
		
		$('input[type="button"]').click(function() {
			
			var nom = $('input[name="nom"]').val(); 
			var prenom = $('input[name="prenom"]').val();
			var sexe = $('select[name="sexe"]').val();
			var dn = $('input[name="dn"]').val();
			var pays = $('input[name="pays"]').val();
			
			//var url = "/MyAjaxJSP/personne?nom=" + nom + "&prenom=" + nom + "&sexe=" + sexe + "&dn=" + dn + "&pays=" + pays;
			/*alert(url);
			alert(nom);
			alert(prenom);
			alert(sexe);
			alert(dn);
			alert(pays);*/
			
			var failMsg = "Impossible de contacter le serveur !";
			
			$.ajax({
				method: "POST",
				url: "/MyAjaxJSP/personne",
				data: {
					nom: nom,
					prenom: prenom,
					sexe: sexe,
					dateNaissance: dn,
					pays: pays
				},
				success: function(result) {
					$("#identitePersonne").html(result);
				},
				error: function() {
					$("#identitePersonne").html(failMsg);
				}
			});
		});
	});
	
	
	</script>
</body>
</html>