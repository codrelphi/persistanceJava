<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Traitement</title>
</head>
<body>
	<%
		String name = (String) request.getParameter("name");
		out.println(name);
	%>
</body>
</html>