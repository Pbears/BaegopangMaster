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
		request.setCharacterEncoding("euc-kr");
		String title = request.getParameter("title");
		System.out.print(title);
		NoticeDao dao = new NoticeDao();
		NoticeBean bean;
		bean = dao.selNoticeOne(title);
	%>

	<!-- UI Object -->
	<h1>공지사항</h1>
	<table cellspacing="0" border="1" summary="글 내용을 표시" class="tbl_type">
		<caption>글 읽기</caption>
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
				<th scope="row">제목</th>
				<td colspan="5"><%=bean.getTitle()%></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">작성자</th>
				<td>Admin</td>
				<th scope="row">작성일</th>
				<td><%=bean.getRegdate()%></td>
				<th scope="row">조회</th>
				<td>19</td>
			</tr>
			<tr>
				<td colspan="6" rowspan="6" class="cont" style="padding-bottom: 200px;"><span style="font-size: 20px; line-height: 30px" ><%=bean.getInfo() %>.</span>
				</td>
			</tr>
		</tbody>
	</table>
	<div>
	<form action="NoticeList.jsp">
		<input type="submit" value="목록보기" style="float: right; margin-top:20px;">
	</form>
	</div>
	<!-- //UI Object -->
</body>
</html>