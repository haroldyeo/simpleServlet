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
	
		<form method="post" action="session">
			<label for="nom" > Nom: </label>
			<input type="text" name="nom" id="nom">
			<br />
			<label for="prenom" > Prénom: </label>
			<input type="text" name="prenom" id="prenom">
			
			<input type="submit">
		</form>
		
		
	
	</body>
</html>