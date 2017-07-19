<%@page import="mgopang.bean.MasterReplyBean"%>
<%@page import="mgopang.dao.MasterReplyDao"%>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<title>Insert title here</title>
<style>
tr {
	height: 50px;
}

td {
	text-align: center;
	vertical-align: middle;
}

td.headTd {
	font-weight: bold;
	font-size: medium;
}

table {
	font-size: small;
}

div.storeInsertDiv {
	width: 90%;
	text-align: right;
}

div.answerDiv {
	width: 90%;
}

button.answerInsertBtn {
	width: 90px;
	height: 70px;
}

button.questionDeleteBtn {
	width: 100px;
}
.btn btn-sm btn-primary{
	margin-top: 15px !important;
}
textarea {
	resize: none;
	width: 90%;
}
</style>
<script>
	$(function() {
		$("tr.answerTr, tr.completeTr").hide();
		$("button.answerInsertBtn").click(function() {
			$("form[id='" + $(this).attr("id") + "']").submit();
		});
		$("tr.QeustionTr").click(function() {
			var trId = $(this).attr('id');
			var inputv = $('input[id="' + trId + '"]').attr('value');
				
				if(inputv==-1){
					$(this).next().toggle(500);
				}else{
					$(this).next().next().toggle(500);
				}
	
		});
	});
	
	
	function insertBtn(i){
		var contents = document.getElementById("contents"+i);
		var pnum = document.getElementById("pnum"+i);
	
		document.location="insert/insertReply.jsp?contents="+contents.value+"&pnum="+pnum.value;
	}
	
</script>
</head>
<body>
	<%
		MasterBean mbean = (MasterBean) session.getAttribute("master");
		String id=mbean.getId();
		String storename = mbean.getStorename();
		MasterReplyDao dao = new MasterReplyDao();

		List<MasterReplyBean> list = null;

		HashMap<String, Object> map = new HashMap<String, Object>();
	
		map.put("storename", storename);
		map.put("id", id);
		int pageScale = 6;

		int currentPage = 0;
		int totalRow = dao.getRTotalRows(storename);
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
	<div id="wrapper">
		<div id="page-wrapper">

			<div class="container-fluid">

				<div class="row">
					<div class="col-lg-12">
						<div class="table-responsive">
							<table class="table table-hover">
								<thead>
									<tr>
										<td class="headTd" width="10%">No</td>
										<td class="headTd" width="10%">작성자</td>
										<td class="headTd" width="30%">댓글 내용</td>
										<td class="headTd" width="10%">날 짜</td>
										<td class="headTd" width="10%">상태</td>
									</tr>
								</thead>
								<tbody>
								<%
									HashMap<String, Object> ckmap = new HashMap<String, Object>();
									MasterReplyBean replybean=null;
									list = dao.selectReply(map);
									int num=0;
									ckmap.put("storename", storename);
									ckmap.put("id", id);
								for(int i=0; i<list.size(); i++){
									HashMap<String, Object> omap = new HashMap<String, Object>();
									MasterReplyBean bean = list.get(i);
								//	System.out.print(bean);
									ckmap.put("pnum",bean.getPnum());
									
								%>
									<tr class="QeustionTr" id="replyCheck<%=bean.getNo()%>">
										<td><%=bean.getRM() %></td>
										<td><%=bean.getId() %></td>
										<td><%=bean.getContents() %></td>
										<td><%=bean.getRegDate() %></td>
										<td id=""><%=(dao.checkReply(ckmap)==-1)?"댓글 달기":"댓글 완료"%></td>
										<input type="hidden" name="replyList" id="replyCheck<%=bean.getNo()%>" value=<%=dao.checkReply(ckmap)%> />
										<input type="hidden" id="pnum<%=i %>" value="<%=bean.getPnum()%>" />
									</tr>
									<tr class="completeTr">
										<td colspan="4"><textarea rows="3"  id="contents<%=i %>"></textarea></td>
										<td colspan="1">
											<button type="button" id="insertReply" class="btn btn-sm btn-primary" onclick="insertBtn(<%=i %>)">
											답변하기</button></td>
									</tr>
									<%
										omap.put("pnum",bean.getPnum());
										omap.put("id",mbean.getId());
									%>
									<tr class="answerTr">
										<td colspan="5"><%=dao.selectOneRep(omap) %></td>
									</tr>
								<%} %>
								</tbody>
							</table>
						</div>
					</div>
			</div>
				<!-- /.container-fluid -->

			</div>
			<!-- /#page-wrapper -->
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
	</div>
		<!-- /#wrapper -->
		<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
</html>