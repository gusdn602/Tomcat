<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input From</title>
<link rel="stylesheet" href="/TomJerry1/css/w3.css">
<script type="text/javascript" src="/TomJerry1/js/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#get').click(function(){
			var sid = $('#id').val();
			if(!sid){
				$('#id').focus();
				return;
			}
			$('#frm').submit();
		});
	});
</script>
</head>
<body class="h-100">
	<div class="w3-content mxw h-100">
		<div class="w3-display-container " style="height: 400px;">
			<div class="w3-display-middle w3-padding w3-card h300">
				<label for="id" class="w3-col m2 w3-right-align w3-padding">I  D : </label>
				<form class="w3-col m9 w3-padding" id="frm" method="POST" action="./MembInfo.cls2">
					<input type="text" name="id" id="id">
				</form>
				<div class="w3-col">
					<div class="w3-half w3-button w3-blue" id="home">HOME</div>
					<div class="w3-half w3-button w3-blue" id="get">GET Info</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>