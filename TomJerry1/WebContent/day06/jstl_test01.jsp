<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/TomJerry1/css/w3.css">
<link rel="stylesheet" href="/TomJerry1/css/user.css">
</head>
<body>
	<div class="w3-content w3-center">
		<c:forEach var="dan" begin="2" end="9">
			<c:forEach var="gop" begin="1" end="9" step="1">
					<div class="w3-col m2 w3-button w3-margin w3-blue">${dan}x${gop}=${dan*gop}</div>		
			</c:forEach>
		</c:forEach>
	</div>
</body>
</html>