<%@page import="java.util.HashMap"%>
<%@page import="mgopang.dao.MasterReplyDao"%>
<%@page import="mgopang.bean.MasterReplyBean"%>
<%@page import="java.util.List"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	#userName > h3{
		display: inline-block;
		margin: 0;
		font-weight: bold;
		font-size: 15px;
	}
	
	th{
		height: 30px;
		text-align: center !important;
	}
	#userCon > h6{
		margin-left: 10px;
	}
	#userDate > h4{
		text-align: center;
		font-size: 15px;
	}
	#table_con{
		width: 900px;
		margin: auto;
	}
</style>
<script type="text/javascript">
	function mouseOv(i){
		var obj=document.getElementById("attrTr"+i);
		obj.style.background="white";
		
	}
	function mouseOt(i){
		var obj=document.getElementById("attrTr"+i);
		obj.style.background="#f1f0ef";
	}
</script>
</head>
<body>
	<%
		MasterBean mbean = (MasterBean)session.getAttribute("master");
		String storename = mbean.getStorename();
		List<MasterReplyBean> list = null;
		MasterReplyDao mdao = new MasterReplyDao();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("storename", storename);
		//map.put("masterid", masterid);
		int pageScale = 5;

		int currentPage = 0;
		int totalRow = mdao.getRTotalRows();
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
	<div>
		<div id="table_con">
			<table border="1">
				<col width="200">
				<col width="600">
				<col width="150">
				<thead>
					<tr>
						<th>작성자</th>
						<th>댓글 내용</th>
						<th>날 짜</th>
					</tr>
				</thead>
				<tbody>
				<%
					list = mdao.selectReply(map);
					for(int i = 0; i < list.size(); i++){
						MasterReplyBean bean = list.get(i);
				%>
					<tr id="attrTr<%=i %>" onmouseover="mouseOv(<%=i %>)" onmouseout="mouseOt(<%=i %>)">
						<td>
							<div id="userName">
								<img src="/BaegopangMaster/img/noimg.jpg" align="top"
									style="width: 70px; height: 70px; display: inline-block; padding: 10px;">
								<h3><%=bean.getId() %></h3>
							</div>
						</td>
						<td>
							<div id="userCon">
								<h6><%=bean.getContents() %></h6>
							</div>
						</td>
						<td>
							<div id="userDate">
								<h4><%=bean.getRegDate() %></h4>
							</div>
						</td>
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
						<li><a href="/BaegopangMaster/jsp/ReplyManage.jsp?page=1"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<li>
						<li>
							<%
								if (currentBlock > 1) {
									if (currentPage != startPage) {
							%> <a
							href="/BaegopangMaster/jsp/ReplyManage.jsp?page=<%=startPage - 1%>">
								Previous </a> 
								<%
								 	} else {
								 %> <a href="#">Previous</a> <%
								 	}
								 	} else {
								 		if (currentPage != startPage) {
								 %> <a
							href="/BaegopangMaster/jsp/ReplyManage.jsp?page=<%=currentPage - 1%>">
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
								href="/BaegopangMaster/jsp/ReplyManage.jsp?page=<%=i%>">
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
							href="/BaegopangMaster/jsp/ReplyManage.jsp?page=<%=currentPage + 1%>">
								Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	} else {
 		if (currentPage != endPage) {
 %> <a
							href="/BaegopangMaster/jsp/ReplyManage.jsp?page=<%=currentPage + 1%>">
								Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	}
 %>
						</li>

						<li><a
							href="/BaegopangMaster/jsp/ReplyManage.jsp?page=<%=totalPage%>"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
			</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>