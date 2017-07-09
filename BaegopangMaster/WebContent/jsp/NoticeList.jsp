<%@page import="mgopang.bean.NoticeBean"%>
<%@page import="java.util.List"%>
<%@page import="mgopang.dao.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
	NoticeDao dao =new NoticeDao();
	List<NoticeBean>list = null;
%>
<div class="container">
  <h2>공지사항</h2>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>No</th>
        <th>날짜</th>
        <th>글 제목</th>
      </tr>
    </thead>
    <tbody>
    <%
    	list = dao.noticeSel();
    	for(int i=0; i<list.size(); i++){
    		NoticeBean bean = list.get(i);
    %>
      <tr tabindex="1">
        <td><%=bean.getNo() %></td>
        <td><%=bean.getRegdate() %></td>
        <td><%=bean.getTitle() %></td>
      </tr>
	<%
    	}
	%>
    </tbody>
  </table>
</div>

</body>
</html>