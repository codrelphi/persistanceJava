<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	
	<p>
		<c:out value="${info}"></c:out>
	</p>
	
	<form method="POST" action="/MyAjaxJSP/login">
		<p>
			<label for="login">Login: </label>
			<input type="text" id="login" name="login"/>
		</p>
		<p>
			<label for="password">Password: </label>
			<input type="password" id="password" name="password"/>
		</p>
		<input type="submit" value="Connexion">
	</form>
</body>
</html>
