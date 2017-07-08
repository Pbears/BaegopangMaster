<%@page import="mgopang.bean.StoreBean"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="mgopang.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.inputLog {
	height: 60%;
}

.inner {
	width: 95;
	text-align: center;
	vertical-align: middle;
	margin: 0 auto;
}

#datepicker {
	margin: 0 auto;
}
</style>
<script>
	function modifyInfo() {
		var obj = document.getElementById("infofrm");
		obj.action="/BaegopangMaster/jsp/update/masterUpdate.jsp";
		obj.submit();
	}
	
	function withdrawal() {		
		var obj = document.getElementById("infofrm");
		obj.action="/BaegopangMaster/jsp/delete/masterDeleteProcess.jsp";
		obj.submit();
		
	}
</script>

</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body style="background-color: white;">
	<%
		String storename = "교촌치킨-압구정신사점";

		OrderDao dao = new OrderDao();

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("storename", storename);

		MasterBean mbean = dao.selectMaster(map);
		StoreBean sbean = dao.selectStore(map);
	%>

	<jsp:include page="header.jsp"></jsp:include>



	<div class="container" align="center">
		<div class="row">
			<div class="col-sm-12" style="height: 100px;"></div>
			<!-- <div class="col-sm-1" ></div> -->
			<!-- 첫칸 -->
			<form class="form-horizontal" method="post"
				 name="infoFrm" id="infofrm">
				<div class="col-sm-5"
					style="background-color: white; border-radius: 30px; border: 1px solid #ccc">
					<h1 align="center">배고팡 프로필</h1>
					<br> <br> <img src="/BaegopangMaster/img/noimg.jpg"
						class="img-circle" alt="Cinque Terre" width="304" height="236">
					<br> <br> <br>



					<div class="inputLog">
						<div class="inner">

							<div class="form-group">
								<label for="inputName" class="col-sm-2 control-label">Name</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="name" name="name"
										placeholder="Name" readonly="readonly"
										value="<%=mbean.getName()%>">
								</div>
							</div>

							<div class="form-group">
								<label for="inputId" class="col-sm-2 control-label">ID</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="id" name="id"
										placeholder="ID" readonly="readonly"
										value="<%=mbean.getId()%>">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPw" class="col-sm-2 control-label">Password</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="pw" name="pw"
										placeholder="Password" value="<%=mbean.getPw()%>">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPw" class="col-sm-2 control-label">Confirm</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="pwConfirm"
										name="pwConfirm" placeholder="Password Confirm"
										value="<%=mbean.getPw()%>">
								</div>
							</div>

							<div class="form-group">
								<label for="inputAddress" class="col-sm-2 control-label">Address</label>
								<div class="col-sm-10">
									<button type="button" class="btn btn-default"
										style="width: 100%" id="address" name="address">
										<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
									</button>
									<input type="text" class="form-control" id="maddress1"
										name="maddress1" readonly="readonly"
										value="<%=mbean.getAddress()%>"> <input type="text"
										class="form-control" id="maddress2" name="maddress2"
										placeholder="Detail Address" value="">
								</div>
							</div>
							<div class="form-group">
								<label for="inputTel" class="col-sm-2 control-label">Tel</label>
								<div class="col-sm-10">
									<div class="controls controls-row">
										<input style="width: 30%;" type="text" id="mtel1" name="mtel1"
											value="<%=mbean.getTel().split("-")[0]%>"> - <input
											style="width: 30%;" type="text" id="mtel2" name="mtel2"
											value="<%=mbean.getTel().split("-")[1]%>"> - <input
											style="width: 30%;" type="text" id="mtel3" name="mtel3"
											value="<%=mbean.getTel().split("-")[2]%>">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="inputGender" class="col-sm-2 control-label">Gender</label>
								<div class="col-sm-10">
									<label class="radio-inline"> <input type="radio"
										controls name="gender" id="male" value="male"
										checked="checked" disabled="disabled"> 남
									</label> <label class="radio-inline"> <input type="radio"
										name="gender" id="female" value="female" disabled="disabled">
										여
									</label>
								</div>
							</div>
							<div class="form-group">
								<label for="inputBirth" class="col-sm-2 control-label">Birth</label>
								<div class="col-sm-10">
									<input id="datepicker" class="form-control" name="birth"
										readonly="readonly" value="<%=mbean.getBirth()%>">
								</div>
							</div>
							<div class="form-group">
								<a href="javascript:withdrawal()" class="btn btn-lg btn-danger"><span
									class="glyphicon glyphicon-ban-circle"></span> 탈퇴</a>
							</div>
						</div>
					</div>




				</div>
				<!--  -->
				<div class="col-sm-2"></div>
				<!-- 두번째칸 -->
				<div class="col-sm-5"
					style="background-color: white; border-radius: 30px; border: 1px solid #ccc;">
					<h1 align="center">점포 정보</h1>
					<br> <br> <img src="/BaegopangMaster/img/103.jpg"
						class="img-rounded" alt="Cinque Terre" width="304" height="236">
					<br> <br> <br>


					<div class="inputLog">
						<div class="inner">

							<div class="form-group">
								<label for="inputName" class="col-sm-2 control-label">brandno</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="brandname"
										name="brandname" placeholder="brandname" disabled="disabled"
										value="<%=sbean.getBrandno()%>">
								</div>
							</div>

							<div class="form-group">
								<label for="inputId" class="col-sm-2 control-label">storename</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="storename"
										name="storename" placeholder="storename"
										value="<%=sbean.getStorename()%>" readonly="readonly">
								</div>
							</div>



							<div class="form-group">
								<label for="inputAddress" class="col-sm-2 control-label">Address</label>
								<div class="col-sm-10">

									<input type="text" class="form-control" id="saddress1"
										name="address1" disabled="disabled"
										value="<%=sbean.getLocation()%>"> <input type="text"
										class="form-control" id="address2" name="saddress2"
										placeholder="Detail Address" disabled="disabled">
								</div>
							</div>
							<div class="form-group">
								<label for="inputTel" class="col-sm-2 control-label">Tel</label>
								<div class="col-sm-10">
									<div class="controls controls-row">
										<input style="width: 30%;" type="text" id="stel1" name="stel1"
											value="<%=sbean.getTel().split("-")[0]%>"> - <input
											style="width: 30%;" type="text" id="stel2" name="stel2"
											value="<%=sbean.getTel().split("-")[1]%>"> - <input
											style="width: 30%;" type="text" id="stel3" name="stel3"
											value="<%=sbean.getTel().split("-")[2]%>">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="inputId" class="col-sm-2 control-label">hours</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="hours" name="hours"
										placeholder="hours" value="<%=sbean.getHours()%>">
								</div>
							</div>

							<div class="form-group">
								<label for="inputId" class="col-sm-2 control-label">info</label>
								<div class="col-sm-10">

									<textarea style="resize: none;" rows="10" class="form-control"
										id="info" name="info" placeholder="info"><%=sbean.getInfo()%></textarea>
								</div>

							</div>



							<div class="form-group"></div>
						</div>
					</div>

				</div>
			</form>
			<!--  -->
			<!-- <div class="col-sm-1" ></div> -->
			<!-- <div class="col-sm-12" ></div> -->
		</div>
		<div class="col-sm-12" style="height: 70px;"></div>
		<div class="col-sm-12">
			<a href="javascript:modifyInfo()" class="btn btn-lg btn-warning"><span
				class="glyphicon glyphicon-ok"></span> 수정</a>

		</div>
		<div class="col-sm-12" style="height: 100px;"></div>
	</div>







	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>

</html>