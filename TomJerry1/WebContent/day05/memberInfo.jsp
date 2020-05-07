<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input From</title>
<link rel="stylesheet" href="/TomJerry1/css/w3.css">
<link rel="stylesheet" href="/TomJerry1/css/user.css">
<script type="text/javascript" src="/TomJerry1/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	<%--
	String sid = (String) request.getAttribute("id");
	String sname = (String) request.getAttribute("sname");
	String stel = (String) request.getAttribute("stel");
	String smail = (String) request.getAttribute("smail");
	
	--%>
</script>
</head>
<body >
	<div class="w3-content mxw h-100">
			<div class="w3-display-container h-100 ">
				<div class="w3-display-middle w3-padding">
					<div class="w3-col w3-card">
						<label for="id" class="w3-col m4 w3-right-align w3-padding">I  D : </label>
						<div class="w3-col m9 w3-padding" id="id">${DATA.id}</div>
					</div>
					<div class="w3-col w3-card">
						<label for="id" class="w3-col m4 w3-right-align w3-padding">NAME : </label>
						<div class="w3-col m9 w3-padding" id="name" >${DATA.name}</div>
					</div>
					<div class="w3-col w3-card">
						<label for="id" class="w3-col m4 w3-right-align w3-padding">TEL : </label>
						<div class="w3-col m9 w3-padding" id="tel" >${DATA.tel}</div>
					</div>
					<div class="w3-col w3-card">
						<label for="id" class="w3-col m4 w3-right-align w3-padding">MAIL : </label>
						<div class="w3-col m9 w3-padding" id="mail" >${DATA.mail}</div>
					</div>
				
			</div>
		</div>
	</div>
</body>
</html>