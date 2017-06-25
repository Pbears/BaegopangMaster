<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="/BaegopangMaster/css/Main.css" rel="stylesheet" />
<link href="/BaegopangMaster/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script type="text/javascript">
	function mouseOv(obj) {
		obj.style.background = "#84D5CE";
	}
	function mouseOt(obj) {
		obj.style.background = "#44BFB7";
	}
</script>
</head>
<body>
<jsp:include page="header.jsp"/>


	<div class="mid_contents">
		<div class="container">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
						<img src="/BaegopangMaster/img/main_img.jpg" alt="Los Angeles"
							style="width: 100%; margin-left: 30px;">
					</div>

					<div class="item">
						<img src="/BaegopangMaster/img/main_img2.jpg" alt="Chicago"
							style="width: 100%; margin-left: 30px;">
					</div>

					<div class="item">
						<img src="/BaegopangMaster/img/main_img3.jpg" alt="New York"
							style="width: 100%; margin-left: 30px;">
					</div>

				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div id="loginForm">
			<form action="/action_page.php">
				<label for="fname">I D</label> <input type="text" id="log_id"
					name="log_id" placeholder="Your ID">
				<labelfor="lname">PassWord</label> <input type="text" id="lname"
					name="lastname" placeholder="Your Password"> <input
					type="submit" value="Login">
					<a href="#"><p>����� �����ϱ�</p></a>
			</form>
		</div>
	</div>
	<div class="bot_contents">
		<div id="notice">
			<p>��������</p>
			<hr>
		</div>
		<div id="point">
			<p>����Ʈ</p>
			<div id="wpoint"><a href="#"><p>>����Ʈ��?</p></a></div>
			<div id="mpoint"><a href="#"><p>>�� ����Ʈ Ȯ���ϱ�</p></a></div>
		</div>
		<div id="service">
			<p>���� �ȳ�</p>
			<p style="font-size: 25px; color: #646464">������ ���� ��Ʈ��, �����</p>
			<img src="/BaegopangMaster/img/info.jpg">
		</div>
	</div>
	<div class="footer">
		<div><p>~</p></div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>