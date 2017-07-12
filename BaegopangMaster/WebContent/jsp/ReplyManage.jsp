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
	} 
</style>
</head>
<body>
	<%
		MasterBean mbean = (MasterBean)session.getAttribute("master");
		String storename = mbean.getStorename();
		List<MasterReplyBean> list = null;
		MasterReplyDao mdao = new MasterReplyDao();
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div>
		<div>
			<table border="1" cellpadding="0" cellspacing="0">
				<col width="300">
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
					list = mdao.selectReply(storename);
					for(int i = 0; i < list.size(); i++){
						MasterReplyBean bean = list.get(i);
				%>
					<tr>
						<td>
							<div id="userName">
								<img src="/BaegopangMaster/img/noimg.jpg" align="middle"
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
								<h4><%=bean.getRegdate() %></h4>
							</div>
						</td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>