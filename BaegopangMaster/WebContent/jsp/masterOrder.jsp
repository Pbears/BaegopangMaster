<%@page import="mgopang.bean.MasterBean"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="mgopang.bean.OrderBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="mgopang.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.panel-title {
	font-size: 13px;
	padding: initial;
}
</style>  
<script>
	function sendCheck() {
		var obj = document.ast; //form까지의 주소
		if (obj.query.value == 'empty' || !obj.data.value) {
			alert('Not Search!');
			obj.query.selectedIndex = 0;

			obj.data.value = '';
			obj.data.focus();
		} else {
			obj.submit();
		}
	}
	
	function update(index) {
		 var obj=document.getElementById("orderfrm"+index);
		 
		obj.submit();
		
	}
	
	
</script>
</head>
<body style="background-color: white;">
	<%
		request.setCharacterEncoding("UTF-8");
		List<OrderBean> list = null;
		String query = request.getParameter("query");
		String data = request.getParameter("data");
		OrderDao dao = new OrderDao();
		HashMap<String, Object> map = new HashMap<String, Object>();
		MasterBean storename=(MasterBean)request.getSession().getAttribute("master");
		

		map.put("storename", storename.getStorename());

		int pageScale = 10;
		map.put("Q", query);
		map.put("D", data);
		int currentPage = 0;
		int totalRow = dao.getTotalRow(map);
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

		if (query != null && data != null) {
			map.put("query", query);
			map.put("data", data);
			list = dao.selectOrder(map);
		} else {
			list = dao.selectOrder(map);
		}
	%>

	<jsp:include page="header.jsp" />




	<div class="container-fluid">
		<div class="col-sm-12" style="height: 100px;"></div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">

				<h1>주문 내역</h1>

				<p>사장님께 알려드리는 주문내역입니다. 꼭확인해주세요~</p>
				<br> <br> <br>


				<!-- 검색바 -->


				<div id="searcher" class="row">
					<div class="input-group">

						<form action="masterOrder.jsp" name="ast" method="post">
							<table class="bbsWrite mgb35" align="center">
								<colgroup>
									<col width="30" />
									<col width="400" />
									<col width="50" />
								</colgroup>
								<tbody>
									<tr>
										<td height="50"><select name="query" size="1"
											style="height: 34px;">
												<option value="empty" selected="selected">선택하세요</option>
												<option value="ordernumber">주문번호</option>
												<option value="membername">이름</option>
												<option value="membertel">전호번호</option>
										</select></td>
										<td><input type="text" class="form-control"
											placeholder="Search for..." name="data"></td>
										<td><span class="input-group-btn">
												<button class="btn btn-default" type="button">
													<a href="javascript:sendCheck()"> Search</a>
												</button>
										</span></td>
										<div style="postion: relative; left: 100px;">
											<td><a href="masterOrder.jsp?page=1"><button
														type="button" class="btn btn-default">새로고침</button></a></td>
											<td>
										</div>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
					<!-- /input-group -->
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
								//out.println(bean);
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

							<%
								if (bean.getState().equals("승인대기")) {
							%>
							<td align="center"><a
								href="/BaegopangMaster/jsp/update/orderUpdate.jsp?flag=check&ordernumber=<%=bean.getOrdernumber()%>"
								class="btn btn-primary btn-success"><span
									class="glyphicon glyphicon-ok"></span> 승인</a> <a
								href="/BaegopangMaster/jsp/update/orderUpdate.jsp?flag=refuse&ordernumber=<%=bean.getOrdernumber()%>"
								class="btn btn-primary btn-danger"><span
									class="glyphicon glyphicon-remove"></span> 거절</a></td>
							<%
								} else if (bean.getState().equals("승인완료")) {
							%>
							<td align="center"><a
								href="javascript:update(<%=i %>)"
								class="btn btn-block btn-primary"><span
									class="glyphicon glyphicon-ok"></span> 발송</a> <%
 	} else if (bean.getState().equals("배달완료")) {
 %>
							<td>&nbsp;</td>
							<%
								}
							%>

						</tr>

						<tr>
							<td colspan="7">
								<div id="collapse<%=i%>" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item" style="background-color: #f1f0ef">메뉴
											: <%=bean.getMenuname()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											수량 : <%=bean.getAmount()%></li>
									</ul>
								</div>
							</td>
							<td>
							<form action="/BaegopangMaster/jsp/update/orderUpdate.jsp?flag=del&ordernumber=<%=bean.getOrdernumber()%>" method="post" id="orderfrm<%=i%>" name="orderfrm<%=i%>">
							<input type="hidden" name="amount" value="<%=bean.getAmount()%>">
							<input type="hidden" name="price" value="<%=bean.getPrice()%>">
							<input type="hidden" name="menuname" value="<%=bean.getMenuname()%>">
							<input type="hidden" name="storename" value="<%=bean.getStorename()%>">
							<input type="hidden" name="ordertime" value="<%=bean.getOrdertime()%>">							
							<input type="hidden" name="memberid" value="<%=bean.getMemberid()%>">							
							</form></td>
						</tr>										

						<%
							}
						%>

					</tbody>
				</table>



				<!-- 페이지이동페이징 -->
				<div class="paging" style="text-align: center;">
					<ul class="pagination">
						<ul class="pager">
							<li><a href="/BaegopangMaster/jsp/masterOrder.jsp?page=1"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li>
							<li>
								<%
									if (currentBlock > 1) {
										if (currentPage != startPage) {
								%> <a
								href="/BaegopangMaster/jsp/masterOrder.jsp?page=<%=startPage - 1%>&query=<%=query%>&data=<%=data%>">
									Previous </a> <%
 	} else {
 %> <a href="#">Previous</a> <%
 	}
 	} else {
 		if (currentPage != startPage) {
 %> <a
								href="/BaegopangMaster/jsp/masterOrder.jsp?page=<%=currentPage - 1%>&query=<%=query%>&data=<%=data%>">
									Previous </a> <%
 	} else {
 %> <a href="#">Previous</a> <%
 	}
 	}
 %>
							</li>
							<span> <%
 	if (data != null) {
 		data = URLEncoder.encode(request.getParameter("data"), "UTF-8");
 	}

 	for (int i = startPage; i <= endPage; i++) {
 		if (i == currentPage) {
 %>
								<li><a href="#"><strong><%=i%></strong></a></li> <%
 	} else {
 %>
								<li><a
									href="/BaegopangMaster/jsp/masterOrder.jsp?page=<%=i%>&query=<%=query%>&data=<%=data%>">
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
								href="/BaegopangMaster/jsp/masterOrder.jsp?page=<%=currentPage + 1%>&query=<%=query%>&data=<%=data%>">
									Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	} else {
 		if (currentPage != endPage) {
 %> <a
								href="/BaegopangMaster/jsp/masterOrder.jsp?page=<%=currentPage + 1%>&query=<%=query%>&data=<%=data%>">
									Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	}
 %>
							</li>

							<li><a
								href="/BaegopangMaster/jsp/masterOrder.jsp?page=<%=totalPage%>&query=<%=query%>&data=<%=data%>"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
				</div>





			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-12" style="height: 100px;"></div>
		</div>
	</div>


	<jsp:include page="masterOrder2.jsp"></jsp:include>








	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
</html>