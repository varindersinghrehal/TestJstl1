<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First JSP Page</title>
</head>
<body>
	<h2>Welcome!</h2>
	<br> The parameters specified are:
	<br>

	<p>
		Name:
		<c:out value="${param.name}" default="defaultvalue"></c:out>
	</p>
	<p>
		Age:
		<c:out value="${param.age}"></c:out>
	</p>
	<p>
		Email:
		<c:out value="${param.email}"></c:out>
	</p>
<c:catch>
	<c:choose>
		<c:when test="${param.name == 'Matilde' }">
			<c:out value="Bentornato dalle vacenze" />
			
		</c:when>
		<c:when test="${param.name == 'Babbz' }">
			<c:out value="Bentornato dalle Montagna" />
		</c:when>
		<c:otherwise>
		<c:out value="Bentornato!" />
		<c:set var ="variable1" value="${param.age * 2 }" scope="page">
		</c:set>
		</c:otherwise>
	</c:choose>
	</c:catch>
	The new value <c:out value="${variable1 }" />
	The new value <c:out value="${variable1 }" />
	<c:forEach var="x" begin="1" end="${variable1 / 10 }">
	The value of X is ${x}<br>
	</c:forEach>
	<c:set var="nomi" value="Vanni, Matilde, Varinder"/>
	<c:forTokens items="${nomi }" delims="." var="nome">
	The value of nome is ${nome }<br>
	</c:forTokens>
	<c:if test="${variable2 }"/>
	<a href=" <c:url value="http://www.amazon.com"/>">URL</a>

</body>
</html>