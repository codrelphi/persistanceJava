<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
</head>
<body>
	<!-- ceci est un commentaire html -->
	
	<%-- Pour avoir le nom du projet (son chemin), on fait:
		request.getContextPath() (ex: <%= request.getContextPath() %>)
	--%>
	
	<!-- 
		<ul>
			<li><a href="<%= request.getContextPath() %>/">Accueil</a></li>
			<li><a href="<%= request.getContextPath() %>/bonneAnnee">Annee</a></li>
			<li><a href="<%= request.getContextPath() %>/addition">Addition</a></li>
			<li><a href="<%= request.getContextPath() %>/table">Table Multiplication</a></li>
			<li><a href="<%= request.getContextPath() %>/calcul">Calculatrice</a></li>
			<li><a href="<%= request.getContextPath() %>/personne">Personne</a></li>
		</ul>
	-->
	
	<%@ include file="menu.jsp" %>

	<h1>
		Bienvenu 
		<c:if test="${ !empty sessionScope}">
			<c:out value="${sessionScope.login }"></c:out>
			<c:out value=" / ${sessionScope.password }"></c:out>
		</c:if>
	</h1>
	
	<p>Bienvenu sur notre site web.</p>
	
	
</body>
</html>