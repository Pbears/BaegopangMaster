<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.inputLog {

	width: 80%;
	height: 60%;
}

.inner{
	width: 80%;
	text-align: center;
	vertical-align: middle;
	margin: 0 auto;
}
#datepicker{
	margin: 0 auto;
}

</style>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
</head>
<body>
	 <%-- <jsp:include page="header.jsp"></jsp:include>  --%>



	<div class="container-fluid" align="center">
		<div class="row">
			<div class="col-sm-2" style="background-color: lavenderblush;">.col-sm-4</div>
			<!-- ùĭ -->
			<div class="col-sm-4" style="background-color: lavender;">
				<h2 align="center">����� ������</h2>
				<br> <img src="/baegopangMaster/img/noimg.jpg"
					class="img-circle" alt="Cinque Terre" width="304" height="236">
				<br>
				<br>
				
				
				
					<div class="inputLog">
						<div class="inner">
							<form class="form-horizontal" method="post"
								action="/Baegopang/jsp/login/signUpProcess.jsp" name="signupFrm">
								
								<div class="form-group">
									<label for="inputName" class="col-sm-2 control-label">Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="name" name="name"
											placeholder="Name">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputId" class="col-sm-2 control-label">ID</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="id" name="id"
											placeholder="ID">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPw" class="col-sm-2 control-label">Password</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="pw" name="pw"
											placeholder="Password">
									</div>
								</div>
								<div class="form-group">
									<label for="inputPw" class="col-sm-2 control-label">Confirm</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="pwConfirm"
											name="pwConfirm" placeholder="Password Confirm">
									</div>
								</div>
								
								<div class="form-group">
									<label for="inputAddress" class="col-sm-2 control-label">Address</label>
									<div class="col-sm-10">
										<button type="button" class="btn btn-default"
											style="width: 100%" id="address" name="address">
											<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
										</button>
										<input type="text" class="form-control" id="address1"
											name="address1" disabled="disabled"> <input
											type="text" class="form-control" id="address2"
											name="address2" placeholder="Detail Address">
									</div>
								</div>
								<div class="form-group">
									<label for="inputTel" class="col-sm-2 control-label">Tel</label>
									<div class="col-sm-10">
										<div class="controls controls-row">
											<input style="width: 30%;" type="text" id="tel1" name="tel1">
											- <input style="width: 30%;" type="text" id="tel2"
												name="tel2"> - <input style="width: 30%;"
												type="text" id="tel3" name="tel3">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="inputGender" class="col-sm-2 control-label">Gender</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											controls name="gender" id="male" value="male"
											checked="checked"> ��
										</label> <label class="radio-inline"> <input type="radio"
											name="gender" id="female" value="female"> ��
										</label>
									</div>
								</div>
								<div class="form-group">
									<label for="inputBirth" class="col-sm-2 control-label">Birth</label>
									<div class="col-sm-10">
										<input id="datepicker" class="form-control" name="birth">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<input type="button" class="btn btn-primary" value="modify">
									</div>
								</div>
							</form>
						</div>
					</div>




			</div>
			<!--  -->
			<div class="col-sm-1" style="background-color: lavenderblush;">.col-sm-4</div>
			<!-- �ι�°ĭ -->
			<div class="col-sm-4" style="background-color: lavender;">
				<h2 align="center">�츮 ����</h2>
				<br>
			</div>
			<!--  -->
			<div class="col-sm-1" style="background-color: lavenderblush;">.col-sm-4</div>
		</div>
	</div>



	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
</html>