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
			<button class="dropbtn1">�� ������</button>
			<div class="dropdown-content1">
				<a href="#">�޴� ����</a> <a href="#">�� ��</a>
			</div>
		</div>
		<div class="dropdown2">
			<button class="dropbtn2">�� ��</button>
			<div class="dropdown-content2">
				<a href="#">���� ����</a> <a href="#">�Ϻ� ����</a> <a href="#">���Ϻ� ����Ʈ</a>
				<a href="#">������ ����Ʈ</a> <a href="#">���̺� ����Ʈ</a> <a href="#">������
					����Ʈ</a>
			</div>
		</div>
		<div class="dropdown3">
			<button class="dropbtn3">����Ʈ</button>
			<div class="dropdown-content3">
				<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link 3</a>
			</div>
		</div>
		<div class="dropdown4">
			<button class="dropbtn4">����������</button>
			<div class="dropdown-content4">
				<a href="#">Ż��</a> <a href="#">������ ����</a>
			</div>
		</div>
		<div class="dropdown5">
			<button class="dropbtn5">������</button>
			<div class="dropdown-content5">
				<a href="#">����</a> <a href="#">������</a>
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
		<p>�߰��ϰ��� �ϴ� �޴��� Ŭ���ϼ���</p>
		<div id="insertMenu">
			<div id="insertTop">
				<p>�޴� �߰�</p>
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
								<label for="usr">�̸�:</label> <input type="text"
									class="form-control" id="usr">
							</div>
							<div class="form-group">
								<label for="pwd">����:</label> <input type="text"
									class="form-control" id="price">
							</div>
							<div class="form-group">
								<label for="comment">����:</label>
								<textarea class="form-control" rows="5" id="comment"></textarea>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<div id="btn">
				<input type="button" class="insertBtn" value="�߰��ϱ�">
				</button>
			</div>
		</div>
	</div>
	<div class="selMarket">
		<div id="menupan">
			<p>�츮���� �޴���</p>
		</div>
		<div id="s_contents">
			<input type="button" value="��" id="infobtn">  
			<img src="../img/jja.jpg"  onmouseover="btnOver(this)" onmouseout="btnOut(this)";>
			<img src="../img/tang.jpg" onmouseover="btnOver(this)" onmouseout="btnOut(this)";>
			<img src="../img/jjam.jpg" onmouseover="btnOver(this)" onmouseout="btnOut(this)";>
		</div>
	</div>
</body>

</html>