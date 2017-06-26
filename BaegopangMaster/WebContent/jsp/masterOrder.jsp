<%@page import="java.net.URLEncoder"%>
<%@page import="mgopang.bean.OrderBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="mgopang.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.panel-title {
	font-size: 13px;
	padding: initial;
}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
		List<OrderBean> list = null;
		String query = request.getParameter("query");
		String data = request.getParameter("data");
		OrderDao dao = new OrderDao();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("storename", "교촌치킨-논현1호점");
		int totalRow = dao.getTotalRow(map);

		int pageScale = 10;
		map.put("Q", query);
		map.put("D", data);

		int currentPage = 0;
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

		list = dao.selectOrder(map);

		/* if (query != null && data != null) {
		   map.put("query", query);
		   map.put("data", data);
		   list = BrandDao.searchBrand(map);
		} else {
		   list = BrandDao.searchBrand(map);
		} */
	%>
	
	  <jsp:include page="header.jsp" />  

	<div class="container">
		<h2>주문 내역</h2>

		<!-- 검색바 -->
		<div id="searchContainer">
			<table align="center">
				<tr>
					<td><input type="button" id="locationBtn" value="location"
						class="btn btn-default"></td>
					<td><input type="text" id="searchWindow" class="form-control"
						placeholder="Search"></td>
					<td><input type="button" id="searchBtn" value="Refresh"
						class="btn btn-default"></td>
					<td><input type="button" id="searchBtn" value="Search"
						class="btn btn-default"></td>
				</tr>
			</table>
		</div>
		<!--  -->

		<table class="table table-condensed">
			<thead>
				<tr>
					<th>주문번호</th>
					<th>주문시간</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>주소</th>
					<th>요청</th>
					<th>상태</th>
					<th></th>

				</tr>
			</thead>
			<tbody>

				<!-- 한블럭 -->

				<%
					for (int i = 0; i < list.size(); i++) {
						OrderBean bean = list.get(i);
				%>

				<tr>

					<td><a class="panel-title" data-toggle="collapse"
						href="#collapse<%=i%>"><%=bean.getOrdernumber()%></a></td>

					<td><a class="panel-title" data-toggle="collapse"
						href="#collapse<%=i%>"><%=bean.getOrdertime()%></a></td>

					<td><a class="panel-title" data-toggle="collapse"
						href="#collapse<%=i%>"><%=bean.getMembername()%></a></td>

					<td><a class="panel-title" data-toggle="collapse"
						href="#collapse<%=i%>"><%=bean.getMembertel()%></a></td>

					<td><a class="panel-title" data-toggle="collapse"
						href="#collapse<%=i%>"><%=bean.getMemberaddress()%></a></td>

					<td><a class="panel-title" data-toggle="collapse"
						href="#collapse<%=i%>"><%=bean.getOrderinfo()%></a></td>

					<td><a class="panel-title" data-toggle="collapse"
						href="#collapse<%=i%>"><%=bean.getState()%></a></td>

					<td><button type="button" class="btn btn-primary active">승인</button></td>
				</tr>
				
				<tr>
					<td colspan="7">
						<div id="collapse<%=i%>" class="panel-collapse collapse">
							<ul class="list-group">
								<li class="list-group-item">메뉴 : <%=bean.getMenuname()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									수량 : <%=bean.getAmount()%></li>
							</ul>
						</div>
					</td>
					<td></td>
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
				<li><a href="/Baegoapng/jsp/masterOrder.jsp?page=1" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span>
				</a></li>
				<li>
				<li>
					<%
						if (currentBlock > 1) {
							if (currentPage != startPage) {
					%> <a
					href="/Baegoapng/jsp/masterOrder.jsp?page=<%=startPage - 1%>&query=<%=query%>&data=<%=data%>">
						Previous </a> <%
 	} else {
 %> <a href="#">Previous</a> <%
 	}
 	} else {
 		if (currentPage != startPage) {
 %> <a
					href="/Baegoapng/jsp/masterOrder.jsp?page=<%=currentPage - 1%>&query=<%=query%>&data=<%=data%>">
						Previous </a> <%
 	} else {
 %> <a href="#">Previous</a> <%
 	}
 	}
 %>
				</li>
				<span> <%
 	if (data != null) {
 		data = URLEncoder.encode(request.getParameter("data"), "EUC-KR");
 	}

 	for (int i = startPage; i <= endPage; i++) {
 		if (i == currentPage) {
 %>
					<li><a href="#"><strong><%=i%></strong></a></li> <%
 	} else {
 %>
					<li><a
						href="/Baegoapng/jsp/masterOrder.jsp?page=<%=i%>&query=<%=query%>&data=<%=data%>">
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
					href="/Baegoapng/jsp/masterOrder.jsp?page=<%=currentPage + 1%>&query=<%=query%>&data=<%=data%>">
						Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	} else {
 		if (currentPage != endPage) {
 %> <a
					href="/Baegoapng/jsp/masterOrder.jsp?page=<%=currentPage + 1%>&query=<%=query%>&data=<%=data%>">
						Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	}
 %>
				</li>

				<li><a
					href="/Baegoapng/jsp/masterOrder.jsp?page=<%=totalPage%>&query=<%=query%>&data=<%=data%>"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
	</div>






	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
</html>