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
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
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
<jsp:include page="header.jsp"></jsp:include>
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
						<img src="../img/main_img.jpg" alt="Los Angeles"
							style="width: 100%;">
					</div>

					<div class="item">
						<img src="../img/main_img2.jpg" alt="Chicago"
							style="width: 100%;">
					</div>

					<div class="item">
						<img src="../img/main_img3.jpg" alt="New York"
							style="width: 100%;">
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
				<label for="lname">PassWord</label> <input type="text" id="lname"
					name="lastname" placeholder="Your Password"> <input
					type="submit" value="Login"> <a href="#"><p>사장님
						가입하기</p></a>
			</form>
		</div>
	</div>
	<div class="bot_contents">
		<div id="notice">
			<p style="display: inline-block; margin-bottom: 20px; margin-right: 140px">공지사항</p>
			<a href="#" style="padding: 0px;" class="noti_title">
				<p style="display: inline-block; font-size: 20px; color: #646464;">더보기</p>
			</a>
			<div id="notice_list">
				<ui>
					<li>회원가입 시 주의사항</li>
					<li>배고팡 임시휴무-6월21일(수)</li>
					<li>사장님 전용사이트가 오픈했습니다!</li>
				</ui>
			</div>
		</div>
		<div id="point">
			<p>포인트</p>
			<div id="wpoint">
				<a href="#"><p>>포인트란?</p></a>
			</div>
			<div id="mpoint">
				<a href="#"><p>>내 포인트 확인하기</p></a>
			</div>
		</div>
		<div id="service">
			<p>입점 안내</p>
			<p style="font-size: 25px; color: #646464; margin: 0; padding: 0 50px;">음식점 성장 파트너, 배고팡</p>
			<img src="/BaegopangMaster/img/info.jpg">
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>