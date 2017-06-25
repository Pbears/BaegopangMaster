<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- 

		이거 뭔 링크냐 필요없으면 지워 
		
-->
<link href="/BaegopangMaster/css/question.css" rel="stylesheet" />
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
<link rel="shortcut icon" href="../favicon.ico">
<!-- <link rel="stylesheet" type="text/css" href="../css/demo.css" /> -->
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script type="text/javascript" src="js/modernizr.custom.29473.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="mid_src">
		<div id="data_table">
			<h1>1대1 문의</h1>
			<h6>상담 글 쓰기</h6>
			<form action="" method="post" name="listFrm">
				<table class="bbsList" style="border-collapse: collapse;"
					border="1px solid black">
					<colgroup>
						<col width="80" />
						<col width="400" />
						<col width="200" />
						<col width="100" />
					</colgroup>
					<tr>
						<th scope="col" style="text-align: center;">글 번호</th>
						<th scope="col" style="text-align: center;">글 제목</th>
						<th scope="col" style="text-align: center;">문의 일자</th>
						<th scope="col" style="text-align: center;">상 태</th>
					</tr>
					<tbody>
						<tr>
							<div id="select">
								<th>2</th>
								<th>메뉴를 추가하고 싶어요~</th>
								<th>2017.06.25</th>
								<th>대기 중</th>
							</div>
						<tr>
												<tr>
							<div id="select">
								<th>1</th>
								<th>포인트는 뭔가요?</th>
								<th>2017.06.20</th>
								<th>완료</th>
							</div>
						<tr>
					</tbody>
				</table>
			</form>
		</div>
		<div class="container">
			<h1>FAQ</h1>
			<section class="ac-container">
			<div>
				<input id="ac-1" name="accordion-1" type="radio" checked /> <label
					for="ac-1">주류 구매시 인증을 하나요</label>
				<article class="ac-small">
				<p>19세 이상이 아니라면, 청소년보호법에 따라 주류 판매가 금지되고 있어 주류 구매 시에는 연령인증 확인이
					필요합니다. 번거로우시더라도 건전한 음주문화를 위해 연령인증 후 구매를 부탁드립니다. .</p>
				</article>
			</div>
			<div>
				<input id="ac-2" name="accordion-1" type="radio" /> <label
					for="ac-2">실수로 4인분을 시켰어요</label>
				<article class="ac-medium">
				<p>주문취소는 '접수대기' 와 '주문완료'상태일 때 가능하며, 각 상태에 따라서 아래 방법으로 취소해 주시면
					됩니다..</p>
				</article>
			</div>
			<div>
				<input id="ac-3" name="accordion-1" type="radio" /> <label
					for="ac-3">휴대폰으로 얼마까지 주문 할 수 있나요?</label>
				<article class="ac-large">
				<p>휴대폰으로 결제 가능한 금액은 통신사 및 개인별로 차이가 있습니다. 자세한 결제가능 금액은 통신사로 직접
					확인이 가능합니다. .</p>
				</article>
			</div>
			<div>
				<input id="ac-4" name="accordion-1" type="radio" /> <label
					for="ac-4">회원탈퇴를 하고싶어요</label>
				<article class="ac-large">
				<p>내 정보 관리에서 탈퇴요청을 하고 관리자가 요청을 받으면 자동으로 탈퇴처리가 됩니다..</p>
				</article>
			</div>
			</section>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>