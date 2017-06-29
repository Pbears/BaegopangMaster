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
		insertMenu.style.display = "inline-block";
	}
	function imgOver(obj) {
		obj.style.opacity = "0.5";
	}
	function imgOut(obj) {
		obj.style.opacity = "1.0";
	}
	function btnOver(obj) {
		obj.style.opacity = "0.5";
		infobtn.style.display = "inline-block";
	}
	function btnOut(obj) {
		obj.style.opacity = "1.0";
		infobtn.style.display = "none";
	}

	function closeSrc() {
		insertMenu.style.display = "none";
	}
</script>

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="mid_MenuContents">
		<div id="f_contents">
			<img src="../img/noimage.jpg" width=300;
				onclick="insertProc()" onmouseover="imgOver(this)"
				onmouseout="imgOut(this)"> <img
				src="../img/noimage.jpg" width=300;
				onclick="insertProc()" onmouseover="imgOver(this)"
				onmouseout="imgOut(this)"> <img
				src="../img/noimage.jpg" width=300; onclick="insertProc()"
				onmouseover="imgOver(this)" onmouseout="imgOut(this)"> <img
				src="../img/noimage.jpg" width=300;
				onclick="insertProc()" onmouseover="imgOver(this)"
				onmouseout="imgOut(this)"> <img
				src="../img/noimage.jpg" width=300;
				onclick="insertProc()" onmouseover="imgOver(this)"
				onmouseout="imgOut(this)">

		</div>

		<!-- <p>추가하고자 하는 메뉴를 클릭하세요</p> -->

		<div class="selMarket">
			<div id="menupan">
				<p>우리가게 메뉴판</p>
			</div>
			<div id="s_contents">
				<input type="button" value="상세" id="infobtn"> <img
					src="../img/noimage.jpg" onmouseover="btnOver(this)"
					onmouseout="btnOut(this)";> <img
					src="../img/noimage.jpg" onmouseover="btnOver(this)"
					onmouseout="btnOut(this)";> <img
					src="../img/noimage.jpg" onmouseover="btnOver(this)"
					onmouseout="btnOut(this)";>
			</div>
		</div>
	</div>
	<div id="insertMenu">
		<div id="insertTop">
			<p>메뉴 추가</p>
		</div>
		<table>
			<tr>
				<td>
					<div id="menu">
						<img src="../img/noimage.jpg" width=300;>
					</div> `
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
		</div>
	</div>

</body>

</html>