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
<title>Insert title here</title>
<style type="text/css">
.panel-title {
	font-size: 13px;
	padding: initial;
}
</style>
<script>
	function sendCheck2() {
		var obj = document.ast2; //form까지의 주소
		if (obj.query2.value == 'empty' || !obj.data2.value) {
			alert('Not Search!');
			obj.query2.selectedIndex = 0;

			obj.data2.value = '';
			obj.data2.focus();
		} else {
			obj.submit();
		}
	}
</script>
</head>
<body style="background-color: white;">
	<%
		request.setCharacterEncoding("UTF-8");
		List<OrderBean> list2 = null;
		String query2 = request.getParameter("query2");
		String data2 = request.getParameter("data2");
		OrderDao dao = new OrderDao();
		HashMap<String, Object> map2 = new HashMap<String, Object>();
		
		MasterBean storename1 = (MasterBean) request.getSession().getAttribute("master");

		map2.put("storename", storename1.getStorename());

		int pageScale = 10;
		map2.put("Q2", query2);
		map2.put("D2", data2);
		int currentPage = 0;
		int totalRow = dao.getTotalRowCom(map2);
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
		map2.put("start2", start);
		map2.put("end2", end);

		if (query2 != null && data2 != null) {
			map2.put("query2", query2);
			map2.put("data2", data2);

			list2 = dao.selectOrderCom(map2);

		} else {
			list2 = dao.selectOrderCom(map2);
		}
	%>





	<div class="container-fluid">
		<div class="col-sm-12" style="height: 100px;"></div>
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-10">

				<h1>주문 완료된 내역</h1>

				<br> <br> <br>


				<!-- 검색바 -->


				<div id="searcher" class="row">
					<div class="input-group">

						<form action="masterOrder.jsp" name="ast2" method="post">
							<table class="bbsWrite mgb35" align="center">
								<colgroup>
									<col width="30" />
									<col width="400" />
									<col width="50" />
								</colgroup>
								<tbody>
									<tr>
										<td height="50"><select name="query2" size="1"
											style="height: 34px;">
												<option value="empty" selected="selected">선택하세요</option>
												<option value="ordernumber">주문번호</option>
												<option value="membername">이름</option>
												<option value="membertel">전호번호</option>
										</select></td>
										<td><input type="text" class="form-control"
											placeholder="Search for..." name="data2"></td>
										<td><span class="input-group-btn">
												<button class="btn btn-default" type="button">
													<a href="javascript:sendCheck2()"> Search</a>
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
							for (int i = 0; i < list2.size(); i++) {
								OrderBean bean = list2.get(i);
						%>

						<tr>

							<td><a class="panel-title" data-toggle="collapse"
								href="#collapse2<%=i%>"><%=bean.getOrdernumber()%></a></td>

							<td><a class="panel-title" data-toggle="collapse"
								href="#collapse2<%=i%>"><%=bean.getOrdertime()%></a></td>

							<td><a class="panel-title" data-toggle="collapse"
								href="#collapse2<%=i%>"><%=bean.getMembername()%></a></td>

							<td><a class="panel-title" data-toggle="collapse"
								href="#collapse2<%=i%>"><%=bean.getMembertel()%></a></td>

							<td><a class="panel-title" data-toggle="collapse"
								href="#collapse2<%=i%>"><%=bean.getMemberaddress()%></a></td>

							<td><a class="panel-title" data-toggle="collapse"
								href="#collapse2<%=i%>"><%=bean.getOrderinfo()%></a></td>

							<td><a class="panel-title" data-toggle="collapse"
								href="#collapse2<%=i%>"><%=bean.getState()%></a></td>

							<%
								if (bean.getState().equals("승인대기")) {
							%>
							<td align="center"><a
								href="/BaegopangMaster/jsp/update/orderUpdate.jsp?state=<%=bean.getState()%>&ordernumber=<%=bean.getOrdernumber()%>"
								class="btn btn-primary btn-success"><span
									class="glyphicon glyphicon-ok"></span> 승인</a> <a href="#"
								class="btn btn-primary btn-danger"><span
									class="glyphicon glyphicon-remove"></span> 거절</a></td>
							<%
								} else if (bean.getState().equals("승인완료")) {
							%>
							<td align="center"><a
								href="/BaegopangMaster/jsp/update/orderUpdate.jsp?state=<%=bean.getState()%>&ordernumber=<%=bean.getOrdernumber()%>"
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
								<div id="collapse2<%=i%>" class="panel-collapse collapse">
									<ul class="list-group">
										<li class="list-group-item" style="background-color: #f1f0ef">메뉴
											: <%=bean.getMenuname()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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



				<!-- 페이지이동페이징 -->
				<div class="paging" style="text-align: center;">
					<ul class="pagination">
						<ul class="pager">
							<li><a href="/Baegoapng/jsp/masterOrder.jsp?page2=1"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li>
							<li>
								<%
									if (currentBlock > 1) {
										if (currentPage != startPage) {
								%> <a
								href="/Baegoapng/jsp/masterOrder.jsp?page2=<%=startPage - 1%>&query2=<%=query2%>&data2=<%=data2%>">
									Previous </a> <%
 	} else {
 %> <a href="#">Previous</a> <%
 	}
 	} else {
 		if (currentPage != startPage) {
 %> <a
								href="/Baegoapng/jsp/masterOrder.jsp?page2=<%=currentPage - 1%>&query2=<%=query2%>&data2=<%=data2%>">
									Previous </a> <%
 	} else {
 %> <a href="#">Previous</a> <%
 	}
 	}
 %>
							</li>
							<span> <%
 	if (data2 != null) {
 		data2 = URLEncoder.encode(request.getParameter("data2"), "UTF-8");
 	}

 	for (int i = startPage; i <= endPage; i++) {
 		if (i == currentPage) {
 %>
								<li><a href="#"><strong><%=i%></strong></a></li> <%
 	} else {
 %>
								<li><a
									href="/Baegoapng/jsp/masterOrder.jsp?page2=<%=i%>&query2=<%=query2%>&data2=<%=data2%>">
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
								href="/Baegoapng/jsp/masterOrder.jsp?page2=<%=currentPage + 1%>&query2=<%=query2%>&data2=<%=data2%>">
									Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	} else {
 		if (currentPage != endPage) {
 %> <a
								href="/Baegoapng/jsp/masterOrder.jsp?page2=<%=currentPage + 1%>&query2=<%=query2%>&data2=<%=data2%>">
									Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	}
 %>
							</li>

							<li><a
								href="/Baegoapng/jsp/masterOrder.jsp?page2=<%=totalPage%>&query2=<%=query2%>&data2=<%=data2%>"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
				</div>





			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-12" style="height: 100px;"></div>
		</div>
	</div>












</body>
</html>