<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	#title_insert{
		padding: 50px;
	}  
	#btn_insert{
		display: inline-block;
		float: right;
	}
	h1{
		font-family: sans-serif;
		font-weight: bold;
		text-align: center;
	}
</style>
<script type="text/javascript">
	function insertSubmit(){
		var obj=document.getElementById("frm");
		obj.submit();
	}
</script>
</head>
<body>
	<h1>일대일 문의하기</h1>
	<div id="title_insert">
	<form action="insert/insertAskProcess.jsp" method="post" id="frm">
		<div class="form-group">
  			 <label for="usr">제 목:</label>
 		 	<input type="text" class="form-control" id="usr" name="title">
		</div>
		<div class="form-group">
  			<label for="comment">문의 할 내용:</label>
  			<textarea class="form-control" rows="8" id="comment" name="contents"></textarea>
		</div>
		<div id="btn_insert">
			<input type="button" class="btn btn-warning" value="글 쓰기" onclick="insertSubmit()"/>
		</div>
		</form>
	</div>
</body>
</html>