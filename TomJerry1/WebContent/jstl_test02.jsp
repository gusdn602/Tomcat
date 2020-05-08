<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/TomJerry1/css/w3.css">
<link rel="stylesheet" href="/TomJerry1/css/user.css">
</head>
<body>
	<c:set var="gen" value="M"/>
	<div class="w3-content mxw2 w3-center">
		<c:if test=${gen eq M}">
			<h3 class="w3-col w3-blue">남자</h3>
		</c:if>
		<c:if test=${gen eq M}">
			<h3 class="w3-col w3-purple">여자</h3>
		</c:if>
	</div>
</body>
</html>