<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
	function btnCk(flag){
		var btn1=document.getElementById("rbtn1");
		var btn2=document.getElementById("rbtn2");
		
		if(flag==1){
			btn1.style.background="#FF8C00";
			btn1.style.color="white";	
			btn2.style.background="white";
			btn2.style.color="black";	
		}else{
			btn2.style.background="#FF8C00";
			btn2.style.color="white";	
			btn1.style.background="white";
			btn1.style.color="black";
		}
	}
</script>
<style type="text/css">
	#btnMenu{
		width: 500px;
		height: 40px;
		margin: 20px auto;
	} 
	#rbtn1,#rbtn2{
		width: 50%;
		float: left;
		border: 2px solid #FF8C00;
		margin: 0; 
	}
	#cbtn1,#cbtn2{
		width: 50%;
		float: left;
		border: 2px solid #FF8C00;
		background: #FF8C00;
		margin: 0; 
		color: white;
		font-weight: bold;
		display: none;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
		
	<div id="btnMenu">
		<button id="rbtn1" name="btn" class="btn btn-default" onclick="btnCk(1)">장르별 순위</button>
		<button id="rbtn2" name="btn" class="btn btn-default" onclick="btnCk(2)">구별 순위</button>
		<button id="cbtn1" name="btn" class="btn btn-default" onclick="btnCk(1)">장르별 순위</button>
		<button id="cbtn2" name="btn" class="btn btn-default" onclick="btnCk(2)">구별 순위</button>
	</div>		
		
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>