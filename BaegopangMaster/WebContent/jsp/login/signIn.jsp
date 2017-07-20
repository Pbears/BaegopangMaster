<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Insert title here</title>
<style type="text/css">
.layer {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;		
	display: flex;
	align-items: center;
	justify-content: center;
	display: -webkit-flex;
	-webkit-align-items: center;
	-webkit-justify-content: center;
}

.layer .content {
	padding: 50px;
	width: 70%;
}

.layer .inputLog {
	padding: 150px;
	width: 30%;
	display: inline-block;
	vertical-align: middle;
	display: inline-block;
}

#innerDiv {
	background: #ff8d00;
	width: 100%;
}
</style>
<script>
	$(document).ready(function(){
		
		$("#sendBtn").click(function() {
			if ($("input#userId").val().trim().length == 0 || $("input#userPw").val().trim().length == 0){
				$(".inputError").effect("shake");
				$("label#checkIdPw").text('id, pw 를 확인하세요.');
			}else{
				$("form").submit();
			}
		});
		
	});
</script>
</head>
<body>
	<form action="/BaegopangMaster/jsp/login/signInProcess.jsp" method="post" name="log">
		<div class="layer">
			<div id="innerDiv">
				<div class="content" style="float: left;">
					<img src="/BaegopangMaster/img/beagopangMasterTitle.png">
				</div>
				<div class="inputLog inputError">
					<div class="form-group" style="vertical-align: middle;">
						<label><h2>Login</h2></label>
					</div>
					<div class="form-group" style="vertical-align: middle;">
						<input type="text" name="userId" id="userId" class="form-control"
							placeholder="Enter ID">
					</div>
					<div class="form-group" style="vertical-align: middle;">
						<input type="Password" name="userPw" id="userPw"
							class="form-control" placeholder="Enter Password">
					</div>
					<div class="form-group" style="vertical-align: middle;">
						<label id="checkIdPw"></label>
					</div>
					<div class="form-group" style="vertical-align: middle;">
						<input type="button" class="form-control" id="sendBtn" value="로그인">
					</div>
					<div class="form-group" style="vertical-align: middle;">
						<a href="/BaegopangMaster/jsp/login/signUp.jsp">음식점을 운영하고 싶으시죠 ?</a>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>