<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Access Negative</title>
</head>
<body>
	<h2>
		<c.out value="Acess Negative"></c.out>
	</h2>
	<br>
	<p>
		I am sorry
		<c:out value="${nome}"></c:out>
		ma non sei autorizzato per questa attivita
	</p>
</body>
</html>