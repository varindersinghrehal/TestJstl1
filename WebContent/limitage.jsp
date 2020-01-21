<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<c:set var="nome" value="${param.name}" scope="application" />
	<c:set var="eta" value="${param.age}" scope="application" />
	<c:catch>
		<c:choose>
			<c:when test="${eta >= 18}">
				<c:redirect url="selezione.jsp" />
			</c:when>
			<c:otherwise>
				<c:redirect url="nonauthorizione.jsp" />
			</c:otherwise>
		</c:choose>
	</c:catch>
</body>
</html>