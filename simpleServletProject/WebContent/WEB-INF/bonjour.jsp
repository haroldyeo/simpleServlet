<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Bonjour</title>
	</head>
	
	<body>
		<p>Bonjour vieux père ${noms[2] } </p>
		<p>
			L'auteur que nous venons de créer: <br />
			Nom: ${auteur.nom}  <br />
			Prénom: ${auteur.prenom} <br />
			Actif: ${auteur.actif ? "OUI" : "NON" }
			
		</p>
		<c:set var="pseudo" value=" ${noms[1]}" scope="page" />
		<p><c:out value="${pseudo}" >Valeur par défaut</c:out></p>
		
		<c:set target="${auteur }" property="prenom"> Ange</c:set>
		<c:out value="${auteur.prenom }"></c:out>
		
		<c:set var="nombre" value="10" />
		
		<c:if test="${10<100 }" var="comparaisonBool">
			<p>Correct</p>
		</c:if>
		
		<c:choose>
			<c:when test="${nombre > 0} ">Positif</c:when>
			<c:when test="${nombre < 0} ">Négatif</c:when>
			<c:when test="${nombre == 0} ">Nul</c:when>
		</c:choose>
	</body>
</html>