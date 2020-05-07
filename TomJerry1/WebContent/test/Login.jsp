<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test </title>
<link rel="stylesheet" href="../css/w3.css" />
<script type="text/javascript" src="../js/jquery-3.5.0.min.js"></script>
<style>
	.lbl1 {
		min-width: 80px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#lbtn').click(function(){
			// 할일
			// 1. 데이터 읽고
			var sid = $('#id').val();
			var spw = $('#pw').val();
			// 2. 유효성 검사하고
			if(!sid){
				$('#id').focus();
				return;
			}
			if(!spw){
				$('#pw').focus();
				return;
			}
			
			// 3. 비동기 통신을 하고
			$.ajax({
				url: 'http://localhost/loginProc.lp',
				type: 'POST',
				dataType: 'json',
				data: {
					'id': sid,
					'pw': spw
				},
				success: function(obj){
					var result = obj.SID;
					// 4. 결과에 따라서 뷰를 처리해준다.
					if(result){
						$('#msg').html('[ ' + result + ' ] 회원님은 로그인 상태입니다.');
						$('#loginWin').css('display', 'none');
						$('#msgWin').css('display', '');
					} else {
						alert('*** 아이디와 비밀번호를 확인하세요! ***');
						$('#id').val('');
						$('#pw').val('');
						$('#id').focus();
					}
				},
				error: function(){
					alert('### 통신 에러 ###');
				}
			});
			
		});
	});
</script>
</head>
<body>
	<div class="w3-third"><p></p></div>
	<div class="w3-third" id="loginWin">
		<h2 class="w3-blue w3-center w3-round-large w3-border w3-card-4">Login</h2>
		<form class="w3-col w3-margin-top w3-padding w3-round-large w3-border w3-card-4">
			<div class="w3-row w3-padding">
				<label class="w3-col m3 w3-padding w3-right-align lbl1" for="id">I D : </label>
				<input type="text" id="id" name="id" class="w3-col l9 m12 s12 w3-border w3-input">
			</div>
			<div class="w3-row w3-padding">
				<label class="w3-col m3 w3-padding w3-right-align lbl1" for="pw">P W : </label>
				<input type="text" id="pw" name="pw" class="w3-col l9 m12 s12 w3-border w3-input">
			</div>
		</form>
		<div class="w3-col w3-margin-top w3-round-large w3-border w3-card-4">
			<div class="w3-half w3-red w3-button" id="hbtn">Home</div>
			<div class="w3-half w3-blue w3-button" id="lbtn">Login</div>
		</div>
	</div>
	<div class="w3-third" id="msgWin" style="display: none;">
		<h2 class="w3-col w3-margin-top w3-card-4" style="padding-top: 80px; height: 250px;" id="msg"></h2>
	</div>
</body>
</html>