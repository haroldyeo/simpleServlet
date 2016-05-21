<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Bonjour</title>
	</head>
	
	<body>
		
		<c:if test="${ !empty sessionScope.prenom && !empty sessionScope.nom }">
			<p>Vous êtes ${ sessionScope.prenom } ${ sessionScope.nom } </p>
		</c:if>
	
		<p>Vous êtes sur autre.jsp</p>
	
	</body>
</html>