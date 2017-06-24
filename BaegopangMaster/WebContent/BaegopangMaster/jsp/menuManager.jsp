<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="../css/MenuManager.css" rel="stylesheet" />



<script type="text/javascript">
	function insertProc() {
		var obj = document.getElementById("btn");
		insertMenu.style.display = "inherit";
	}
	function imgOver(obj) {
		obj.style.opacity = "0.5";
	}
	function imgOut(obj) {
		obj.style.opacity = "1.0";
	}
	function btnOver(obj) {
		obj.style.opacity = "0.5";
		infobtn.style.display="inline-block";
	}
	function btnOut(obj) {
		obj.style.opacity = "1.0";
		infobtn.style.display="none";
	}
	
	function closeSrc(){
		insertMenu.style.display="none";
	}
</script>

</head>
<body>

	<div class="top_header">
		<div id="logo">
			<img src="../img/logo.png">
		</div>
		<div class="dropdown1">
			<button class="dropbtn1">내 음식점</button>
			<div class="dropdown-content1">
				<a href="#">메뉴 관리</a> <a href="#">주 문</a>
			</div>
		</div>
		<div class="dropdown2">
			<button class="dropbtn2">통 계</button>
			<div class="dropdown-content2">
				<a href="#">월별 매출</a> <a href="#">일별 매출</a> <a href="#">요일별 베스트</a>
				<a href="#">날씨별 베스트</a> <a href="#">나이별 베스트</a> <a href="#">성별별
					베스트</a>
			</div>
		</div>
		<div class="dropdown3">
			<button class="dropbtn3">포인트</button>
			<div class="dropdown-content3">
				<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link 3</a>
			</div>
		</div>
		<div class="dropdown4">
			<button class="dropbtn4">마이페이지</button>
			<div class="dropdown-content4">
				<a href="#">탈퇴</a> <a href="#">내정보 보기</a>
			</div>
		</div>
		<div class="dropdown5">
			<button class="dropbtn5">고객센터</button>
			<div class="dropdown-content5">
				<a href="#">문의</a> <a href="#">고객센터</a>
			</div>
		</div>
	</div>

	<div class="mid_contents">
		<div id="f_contents">
			<img src="../img/chiken.jpg" width=300; onclick="insertProc()" onmouseover="imgOver(this)" onmouseout="imgOut(this)">
			<img src="../img/dosirock.jpg" width=300; onclick="insertProc()" onmouseover="imgOver(this)" onmouseout="imgOut(this)">
			<img src="../img/jja.jpg" width=300; onclick="insertProc()" onmouseover="imgOver(this)" onmouseout="imgOut(this)">
			<br>
			<img src="../img/jjam.jpg" width=300; onclick="insertProc()" onmouseover="imgOver(this)" onmouseout="imgOut(this)">
			<img src="../img/pizza.jpg" width=300; onclick="insertProc()" onmouseover="imgOver(this)" onmouseout="imgOut(this)">
			<img src="../img/jjok.jpg" width=300; onclick="insertProc()" onmouseover="imgOver(this)" onmouseout="imgOut(this)">
			<br>
			<img src="../img/tang.jpg" width=300; onclick="insertProc()" onmouseover="imgOver(this)" onmouseout="imgOut(this)">
			
		</div>
		<p>추가하고자 하는 메뉴를 클릭하세요</p>
		<div id="insertMenu">
			<div id="insertTop">
				<p>메뉴 추가</p>
				<img src="../img/close.png" onclick="closeSrc()">
			</div>
			<table>
				<tr>
					<td>
						<div id="Menu">
							<img src="../img/chiken.jpg" width=300;>
						</div>

					</td>
					<td style="text-align: right;">
						<div id="Menu2">
							<div class="form-group">
								<label for="usr">이름:</label> <input type="text"
									class="form-control" id="usr">
							</div>
							<div class="form-group">
								<label for="pwd">가격:</label> <input type="text"
									class="form-control" id="price">
							</div>
							<div class="form-group">
								<label for="comment">설명:</label>
								<textarea class="form-control" rows="5" id="comment"></textarea>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<div id="btn">
				<input type="button" class="insertBtn" value="추가하기">
				</button>
			</div>
		</div>
	</div>
	<div class="selMarket">
		<div id="menupan">
			<p>우리가게 메뉴판</p>
		</div>
		<div id="s_contents">
			<input type="button" value="상세" id="infobtn">  
			<img src="../img/jja.jpg"  onmouseover="btnOver(this)" onmouseout="btnOut(this)";>
			<img src="../img/tang.jpg" onmouseover="btnOver(this)" onmouseout="btnOut(this)";>
			<img src="../img/jjam.jpg" onmouseover="btnOver(this)" onmouseout="btnOut(this)";>
		</div>
	</div>
</body>

</html>