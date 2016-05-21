<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Deuxième fichier pour le tuto</title>
</head>

<body>
<%-- 	<c:out value="Test"></c:out> --%>
<%-- 	<c:forEach var="i" begin="1" end="10" step="1"> --%>
<%-- 		<c:out value="${i }"></c:out> <br> --%>
<%-- 	</c:forEach> --%>
	
<%-- 	<c:forEach items="${noms }" var="i" varStatus="stat" > --%>
<!-- 		<p> -->
<%-- 			N°<c:out value="${stat.count }"/> - <c:out value="${i}" /> <br> --%>
<!-- 		</p> -->
<%-- 	</c:forEach> --%>
<%-- 	<c:forTokens var="m" items="Hello/HelloWorld/HelloBabi" delims="/"> --%>
<%-- 		<c:out value="${m }"/> - <c:out value="${fn:length(m) }"/> <br> --%>
<%-- 	</c:forTokens> --%>


<!-- <form action="bonsoir" method="post"> -->
<!-- 	<label for="nom">Nom</label> -->
<!-- 	<input type="text" id="nom" name="nom" /> -->
<!-- 	<input type="submit" /> -->
<!-- </form> -->

	<form method="post" action="bonsoir">
		<p>
			<label for="login">Login: </label>
			<input type="text" name="login" id="login" />
		</p>
		
		<p>
			<label for="pass">MDP: </label>
			<input type="password" name="pass" id="pass" />
		</p>
		
		<p>
			<input type="submit">
		</p>
	</form>

<p>
	<c:if test="${!empty form.resultat}" >
		<c:out value="And the result is ................. ${form.resultat}"></c:out>
	</c:if>
</p>

</body>

</html>