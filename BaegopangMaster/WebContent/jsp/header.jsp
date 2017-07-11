<%@page import="mgopang.bean.MasterBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="/BaegopangMaster/css/bootstrap.min.css" rel="stylesheet">
<link href="/BaegopangMaster/css/Main.css" rel="stylesheet" />
<style>
html {
	margin: 50px;
}

header {
	padding: 1em 1em 0 1em;
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
	<%
	MasterBean master = (MasterBean)session.getAttribute("master");
	%>
	<div id="headerContainer">
		<div id="mainTitle" align="center">
			<a href="main.jsp"> <img
				src="/BaegopangMaster/img/beagopangTitle.png">
			</a>
		</div>
		<div id="searchContainer">
			<table align="center">
				<tr>
					<td>
						<div class="dropdown1">
							<button class="dropbtn1">내 음식점</button>
							<div class="dropdown-content1">
								<a href="menuManager.jsp">메뉴 관리</a><a href="masterOrder.jsp">주
									문</a>
							</div>
						</div>

					</td>
					<td>
						<div class="dropdown2">
							<button class="dropbtn2">통 계</button>
							<div class="dropdown-content2">
								<a href="salesInfo.jsp">매출별 통계</a><a href="bestInfo.jsp">베스트 통계</a>
							</div>
						</div>


					</td>
					<td>
						<div class="dropdown3">
							<button class="dropbtn3">포인트</button>
							<div class="dropdown-content3">
								<a href="Point.jsp">포인트</a>
							</div>
						</div>
					</td>
					<td>
						<div class="dropdown4">
							<button class="dropbtn4">마이페이지</button>
							<div class="dropdown-content4">
								<a href="masterInfo.jsp">내정보 보기</a>
							</div>
						</div>
					</td>
					<td>
						<div class="dropdown5">
							<button class="dropbtn5">고객센터</button>
							<div class="dropdown-content5">
								<a href="question.jsp">문의</a>
							</div>
						</div>
					</td>
				</tr>
					<div id="tab_user" style="display: inline-block; float: right; margin-top: 30px; color: white; font-weight: bold;">
					<%=master.getId() %> 님 환영합니다</div>
			</table>
		</div>
	</div>
</header>