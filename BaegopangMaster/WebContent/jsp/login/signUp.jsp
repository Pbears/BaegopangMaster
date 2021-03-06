<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/Baegopang/css/bootstrap.css" />
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>회원가입</title>
<style type="text/css">
body {
	background: #ccc
}

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
	background: white;
	/* background: #ccc; */
}
.mainDiv{
	background-color: #ff8d00;
	margin: 0 auto;
	width:600px;
}

.layer .content {
	padding: 50px;
}

.layer .inputLog {
	padding: 50px;
    margin: 0 auto;
}

.inputLog {
	background-color: #ff8d00;
	width: 30%;
	height: 60%;
}

.inner{
	width: 80%;
	text-align: center;
	vertical-align: middle;
	margin: 0 auto;
	color: white;
}
#datepicker{
	margin: 0 auto;
}
</style>
<script type="text/javascript">
	$.datepicker.setDefaults({
		showOn : "both",
		buttonImageOnly : true,
		dateFormat: "yy-mm-dd",
		buttonImage : "/BaegopangMaster/img/calendar.png",
		buttonText : "Calendar"
	});
</script>

</head>
<body>
<%
	String checkId = "true";
%>
	<div class="layer">
	<div class="mainDiv">
		<a href="/BaegopangMaster/jsp/login/signIn.jsp"><img src="/BaegopangMaster/img/beagopangTitle.png" style=" margin-left: 50px; width: 500px;"></a>
		<div class="inputLog" style="width: 500px;">
			<div class="inner">
				<form class="form-horizontal" method="post" action="/BaegopangMaster/jsp/login/signUpProcess.jsp" name="signupFrm">
					<div class="form-group">
						<label for="inputId" class="col-sm-2 control-label">ID</label>
						<div class="col-sm-10" id="divId">
							<input type="text" class="form-control" id="id" name="id" placeholder="ID">
							<label id="labelId"></label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPw" class="col-sm-2 control-label">PW</label>
						<div class="col-sm-10" id="divPw">
							<input type="password" class="form-control" id="pw" name="pw" placeholder="Password">
							<label id="labelPw"></label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPw" class="col-sm-2 control-label">Confirm</label>
						<div class="col-sm-10" id="divPwConfirm">
							<input type="password" class="form-control" id="pwConfirm" name="pwConfirm" placeholder="Password Confirm">
							<label id="labelPwConfirm"></label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputName" class="col-sm-2 control-label">Name</label>
						<div class="col-sm-10" id="divName">
							<input type="text" class="form-control" id="name" name="name" placeholder="Name">
							<label id="labelName"></label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputAddress" class="col-sm-2 control-label">Address</label>
						<div class="col-sm-10" id="divAddress">
							<button type="button" class="btn btn-default" style="width: 100%" id="address" name="address">
								<span class="glyphicon glyphicon-search" aria-hidden="true" ></span>
							</button>
							<input type="text" class="form-control" id="address1" name="address1" readonly>
							<input type="text" class="form-control" id="address2" name="address2" placeholder="Detail Address">
							<label id="labelAddress"></label>
						</div>
					</div>
					<div class="form-group">
						<label for="inputTel" class="col-sm-2 control-label">Tel</label>
						<div class="col-sm-10">
							<div class="controls controls-row" id="divTel" style="color:black;">
								<input style="width: 25%;" type="text" id="tel1" name="tel1" value="010" readonly>
								- <input style="width: 30%;" type="text" id="tel2" name="tel2">
								- <input style="width: 30%;" type="text" id="tel3" name="tel3">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="inputBirth" class="col-sm-2 control-label">Birth</label>
						<div class="col-sm-10" id="divBirth">
								<input id="datepicker" class="form-control" name="birth">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-success" value="Sign in">
						</div>
					</div>
				</form>
			</div>
		</div>
		</div>
	</div>
</body>
<script>
	$("#datepicker").datepicker();
	
	$( "input[type='radio']" ).checkboxradio();
	
	$("button[name='address']").click(function(){
		window.open("/BaegopangMaster/jsp/login/addressPage.jsp","address input" ,"width=500, height=500");
	});
	
	$("input#pw").blur(function(){
		if($("input#pw").val().trim().length==0 || !$("input#pw").val()){
			$("div#divPw").attr('class','col-sm-10 has-error');
			$("input#pw").val('');
			$("input#pw").focus();
			$("label#labelPw").text('비밀번호를 정확히 입력하세요.');
		}else{
			$("div#divPw").attr('class','col-sm-10 has-success');
			$("label#labelPw").text('');
		}
	});
	$("input#pwConfirm").blur(function(){
		if($("input#pw").val()==$(this).val()){
			$("div#divPwConfirm").attr('class','col-sm-10 has-success');
			$("label#labelPwConfirm").text('');
		}else if($("input#pw").val()!=$(this).val()){
			$("div#divPwConfirm").attr('class','col-sm-10 has-error');
			$("input#pwConfirm").focus();
			$("input#pwConfirm").val('');
			$("label#labelPwConfirm").text('비밀번호와 일치하지않습니다.');
		}
	});
	$("input#name").blur(function(){
		if($("input#name").val().trim().length==0 || !$("input#name").val()){
			$("div#divName").attr('class','col-sm-10 has-error');
			$("input#name").focus();
			$("input#name").val('');
			$("label#labelName").text('이름을 기입해주세요.');
		}else{
			$("div#divName").attr('class','col-sm-10 has-success');
			$("label#labelName").text('');
		}
	});
	$("input#address2").blur(function(){
		if($("input#address2").val().trim().length==0 || !$("input#address2").val()){
			$("div#divAddress").attr('class','col-sm-10 has-error');
			$("input#address2").focus();
			$("input#address2").val('');
			$("label#labelAddress").text('상세주소를 기입하세요.');
		}else{
			$("div#divAddress").attr('class','col-sm-10 has-success');
			$("label#labelAddress").text('');
		}
	});
	
</script>
</html>