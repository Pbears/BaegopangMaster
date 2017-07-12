<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	function loadAjax(flag){
		$.ajax({
			url:'/BaegopangMaster/jsp/Ajax/PointAjax.jsp?flag='+flag,
			dataType:'html',
			type:'GET',
			success:function(vv){
				$("div#rank_main").html(vv);
			},error:function(){
				alert('fail');
			}
		})
	}
	function btnCk(flag) {
		var btn1 = document.getElementById("rbtn1");
		var btn2 = document.getElementById("rbtn2");
		var btn3 = document.getElementById("rbtn3");

		if(flag == 1) {
			btn1.style.background = "#FF8C00";
			btn1.style.color = "white";
			btn2.style.background = "white";
			btn2.style.color = "black";
			btn3.style.background = "white";
			btn3.style.color = "black";
		} else if(flag == 2){
			btn2.style.background = "#FF8C00";
			btn2.style.color = "white";
			btn1.style.background = "white";
			btn1.style.color = "black";
			btn3.style.background = "white";
			btn3.style.color = "black";
		} else{
			btn3.style.background = "#FF8C00";
			btn3.style.color = "white";
			btn1.style.background = "white";
			btn1.style.color = "black";
			btn2.style.background = "white";
			btn2.style.color = "black";
		}
		loadAjax(flag);
	}
</script>
<script>
/* 	$(function(){
		$("button").click(function(){
			$.ajax({
				url:'/BaegopangMaster/jsp/Ajax/PointAjax.jsp?test',
				dataType:'html',
				type:'GET',
				success:function(vv){
					$("div#rank_main").html(vv);
				},error:function(){
					alert('fail');
				}
			})
		});
	}); */
</script>
<style type="text/css">
#btnMenu {
	width: 500px;
	height: 40px;
	margin: 20px auto;
}
 #rbtn1,#rbtn2, #rbtn3{
		width: 33.3%;
		float: left;
		font-weight: bold;
		margin: 0;
		border: 2px solid #FF8C00;
		
} 
#rbtn1 {
	background: #FF8C00;
	color: white;
	border: 2px solid #FF8C00;
}

</style>
</head>
<body onload="loadAjax(1)">
	<jsp:include page="header.jsp"></jsp:include>

	<div id="btnMenu">
		<button id="rbtn1" name="btn" class="btn btn-default"
			onclick="btnCk(1)">브랜드별 순위</button>
		<button id="rbtn2" name="btn" class="btn btn-default"
			onclick="btnCk(2)">구 별 순위</button>
		<button id="rbtn3" name="btn" class="btn btn-default"
			onclick="btnCk(3)">나의 순위</button>
	</div>
	<div id="rank_main">
	
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>