<%@page import="mgopang.bean.NoticeBean"%>
<%@page import="java.util.List"%>
<%@page import="mgopang.dao.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="../css/Notice.css" rel="stylesheet">
</head>
<body>
	<%
		String title = request.getParameter("title");
		NoticeDao dao = new NoticeDao();
		NoticeBean bean;
		bean = dao.selNoticeOne(title);
	%>

	<!-- UI Object -->
	<table cellspacing="0" border="1" summary="�� ������ ǥ��" class="tbl_type">
		<caption>�� �б�</caption>
		<colgroup>
			<col width="80">
			<col>
			<col width="80">
			<col width="150">
			<col width="80">
			<col width="150">
		</colgroup>
		<thead>
			<tr>
				<th scope="row">����</th>
				<td colspan="5"><%=bean.getTitle()%></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">�ۼ���</th>
				<td><%=bean.getAdminid()%></td>
				<th scope="row">�ۼ���</th>
				<td><%=bean.getRegdate()%></td>
				<th scope="row">��ȸ</th>
				<td>19</td>
			</tr>
			<tr>
				<td colspan="6" class="cont"><span style="color: #FF6600;"><%=bean.getInfo() %>.</span>
				</td>
			</tr>
		</tbody>
	</table>

	<!-- //UI Object -->
</body>
</html>