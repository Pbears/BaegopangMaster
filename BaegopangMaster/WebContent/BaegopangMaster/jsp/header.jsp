<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/Main.css" rel="stylesheet" />
<style>
html {
	margin: 50px;
}

header {
	padding: 1em;
	border: 1px;
	border-color: black;
	color: black;
	background-color: #FF8C00;
	clear: left;
	text-align: center;
	margin: auto;
	margin-bottom: 50px;
	width: 1600px;
}

#mainTitle {
	margin-bottom: 50px;
}

#mainTitle img {
	width: 350px;
	height: 95px;
}

#loginBtn {
	width: 50px;
	height: 50px;
	margin-left: 200px;
}

#headerContainer {
	margin: auto;
}

#locationBtn {
	margin-left: 250px;
}

.searchContainer {
	margin: o auto;
}

#searchWindow {
	width: 500px;
}

button#loginBtn.btn btn-default btn-lg {
	width: 35px;
	height: 35px;
}
</style>
<header>
	<div id="headerContainer">
		<div id="mainTitle" align="center">
			<a href=""> <img alt=""
				src="../img/baegopangTitle.png">
			</a>
		</div>
		<div id="searchContainer">
			<table align="center">
				<tr>
					<td>
						<div class="dropdown1">
							<button class="dropbtn1">내 음식점</button>
							<div class="dropdown-content1">
								<a href="#">메뉴 추가</a> <a href="#">메뉴 삭제</a> <a href="#">주 문</a>
							</div>
						</div>

					</td>
					<td>
						<div class="dropdown2">
							<button class="dropbtn2">통 계</button>
							<div class="dropdown-content2">
								<a href="#">월별 매출</a> <a href="#">일별 매출</a> <a href="#">요일별
									베스트</a> <a href="#">날씨별 베스트</a> <a href="#">나이별 베스트</a> <a href="#">성별별
									베스트</a>
							</div>
						</div>

					</td>




					<td>
						<div class="dropdown3">
							<button class="dropbtn3">포인트</button>
							<div class="dropdown-content3">
								<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
									3</a>
							</div>
						</div>
					</td>
					<td>
						<div class="dropdown4">
							<button class="dropbtn4">마이페이지</button>
							<div class="dropdown-content4">
								<a href="#">탈퇴</a> <a href="#">내정보 보기</a>
							</div>
						</div>


					</td>


					<td>
						<div class="dropdown5">
							<button class="dropbtn5">고객센터</button>
							<div class="dropdown-content5">
								<a href="#">문의</a> <a href="#">고객센터</a>
							</div>
						</div>

					</td>
					<td>
						<button type="button" class="btn btn-default " id="loginBtn">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
							
							
						</button>

					</td>


				</tr>
			</table>
		</div>
	</div>
</header>