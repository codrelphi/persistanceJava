<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Affichage de Nom</title>
</head>
<body>
	<p>Votre nom est: <c:out value="${nom }"></c:out></p>
</body>
</html>