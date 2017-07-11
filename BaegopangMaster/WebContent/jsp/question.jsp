<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="mgopang.dao.MasterAskDao"%>
<%@page import="mgopang.bean.MasteraskadminBean"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/BaegopangMaster/css/question.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script type="text/javascript" src="js/modernizr.custom.29473.js"></script>
<script type="text/javascript">
	function noticeCk(i){
		var obj=document.getElementById("noticeSel"+i).value;
		window.open("selectQuestion.jsp?title="+obj,"noticeCk","width=550, height=300")
	}
</script>
<style type="text/css">
	.ac-container{
		height: 320px;
	}
</style>
</head>
<body>
	<%
		MasterBean mbean= (MasterBean)session.getAttribute("master");
		String masterid = mbean.getId();
		MasterAskDao dao = new MasterAskDao();
		
		List<MasteraskadminBean> list = null;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("masterid", masterid);
		int pageScale = 5;

		int currentPage = 0;
		int totalRow = dao.getTotalRows(masterid);
		try {
			currentPage = Integer.parseInt(request.getParameter("page"));
		} catch (Exception e) {
			currentPage = 1;
		}
		int totalPage = totalRow % pageScale == 0 ? totalRow / pageScale : totalRow / pageScale + 1;
		if (totalRow == 0)
			totalPage = 1;
		int start = 1 + (currentPage - 1) * pageScale;
		int end = pageScale + (currentPage - 1) * pageScale;
		//out.print(query+"   "+data ); //출력확인
		int currentBlock = currentPage % pageScale == 0 ? (currentPage / pageScale) : (currentPage / pageScale + 1);
		int startPage = 1 + (currentBlock - 1) * pageScale;
		int endPage = pageScale + (currentBlock - 1) * pageScale;
		//   out.println(startPage+" "+endPage+ " "+currentBlock+" "+totalPage);
		if (totalPage <= endPage)
			endPage = totalPage;
		map.put("start", start);
		map.put("end", end);
		
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="mid_src">
		<div id="data_table">
			<h1>일대일 문의</h1>
			<a href="#"
				onclick="window.open('insertQuestion.jsp', '_blank', 'width=400 height=500')">글
				쓰기 </a>
			<div class="container">
				<table class="table table-hover">
					<colgroup>
						<col width="80" />
						<col width="400" />
						<col width="200" />

					</colgroup>
					<thead>
						<tr>
							<th>글 번호</th>
							<th>글 제목</th>
							<th>문의 일자</th>
						</tr>
					</thead>
					<tbody>
						<%
							list = dao.selectAsk(map);
							for (int i = 0; i < list.size(); i++) {
								MasteraskadminBean bean = list.get(i);
						%>
						<tr tabindex="1" style="text-align: center;">
							<td><%=bean.getNo()%></td>
							<td id="noticel<%=i %>" onclick="noticeCk(<%=i%>)"><%=bean.getTitle()%>
								<input type="hidden" id="noticeSel<%=i %>" value="<%=bean.getTitle()%>">
							</td>
							<td><%=bean.getRegdate()%></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
			<!-- 페이지이동페이징 -->
			<div class="paging" style="text-align: center;">
				<ul class="pagination">
					<ul class="pager">
						<li><a href="/BaegopangMaster/jsp/question.jsp?page=1"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<li>
						<li>
							<%
								if (currentBlock > 1) {
									if (currentPage != startPage) {
							%> <a
							href="/BaegopangMaster/jsp/question.jsp?page=<%=startPage - 1%>">
								Previous </a> 
								<%
								 	} else {
								 %> <a href="#">Previous</a> <%
								 	}
								 	} else {
								 		if (currentPage != startPage) {
								 %> <a
							href="/BaegopangMaster/jsp/question.jsp?page=<%=currentPage - 1%>">
								Previous </a> <%
 	} else {
 %> <a href="#">Previous</a> <%
 	}
 	}
 %>
						</li>
						<span> <%


 	for (int i = startPage; i <= endPage; i++) {
 		if (i == currentPage) {
 %>
							<li><a href="#"><strong><%=i%></strong></a></li> <%
 	} else {
 %>
							<li><a
								href="/BaegopangMaster/jsp/question.jsp?page=<%=i%>">
									<%=i%>
							</a></li> <%
 	}
 	}
 %>
						</span>
						<li>
							<%
								if (totalPage > endPage) {
									if (currentPage != endPage) {
							%> <a
							href="/BaegopangMaster/jsp/question.jsp?page=<%=currentPage + 1%>">
								Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	} else {
 		if (currentPage != endPage) {
 %> <a
							href="/BaegopangMaster/jsp/question.jsp?page=<%=currentPage + 1%>">
								Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	}
 %>
						</li>

						<li><a
							href="/BaegopangMaster/jsp/question.jsp?page=<%=totalPage%>"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
			</div>

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