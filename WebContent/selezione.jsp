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

	<c:choose>
		<c:when test="${nome == 'Matilde' }">
			<c:out value="Welcome Matilde" />
			<button id="button1" class="button" onclick=location.href='http://www.repubblica.it'>PUSH
				HERE</button>

		</c:when>
		<c:when test="${nome == 'Mauro' }">
			<c:out value="Welcome Mauro" />
			<button id="button1" class="button" onclick=location.href='http://www.amazon.it'>PUSH
				HERE</button>

		</c:when>
		<c:when test="${nome == 'Alesandro' }">
			<c:out value="Welcome Alesandro" />
			<button id="button1" class="button" onclick=location.href='http://www.google.it'>PUSH
				HERE</button>
		</c:when>
		<c:otherwise>
		<h2><c.out value="Acess Negative"></c.out></h2><br>
		<p>I am sorry <c:out value="${nome}"></c:out> ma non sei autorizzato per questa attivita</p>
		</c:otherwise>
	</c:choose>
</body>
</html>