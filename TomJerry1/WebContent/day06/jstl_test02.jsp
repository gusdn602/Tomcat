<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="/TomJerry1/css/w3.css">
<link rel="stylesheet" href="/TomJerry1/css/user.css">
<script type="text/javascript" src="/TomJerry/js/jquery-3.5.0.min.js"></script>
<style>
</style>
<script type="text/javascript">

</script>
</head>
<body>
	<c:set var="gen" value="M" />
	<div class="w3-content mxw2 w3-center">
		<c:if test="${gen eq M}">
			<h3 class="w3-col w3-blue">남자</h3>
		</c:if>
		<c:if test="${gen ne M}">
			<h3 class="w3-col w3-purple">여자</h3>
		</c:if>
		<!-- 
		<c:forEach var="no" begin="11" end="20" varStatus="st">
			<h5 class="w3-col m2 w3-orange w3-margin">index : ${st.index}</h5>
			<h5 class="w3-col m2 w3-lime w3-margin">current : ${st.current}</h5>
			<h5 class="w3-col m2 w3-light-green w3-margin">count : ${st.count}</h5>
			<h5 class="w3-col m2 w3-red w3-margin">first : ${st.first}</h5>
			<h5 class="w3-col m2 w3-blue w3-margin">step : ${st.step}</h5>
			<h5 class="w3-col m2 w3-indigo w3-margin">no : ${no}</h5>
		</c:forEach>
		 -->
		 <c:forEach var="str" items="${LIST}" varStatus="st">
		 	<h5 class="w3-col m2 ${str}">index : ${st.index}</h5>
		 </c:forEach>
	</div>
</body>
</html>