<%@page import="mgopang.dao.MemberDao"%>
<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		MemberDao dao = new MemberDao();
		if(dao.memberCheck(userId, userPw)==true){
			session.setAttribute("id", userId);
			response.sendRedirect("/BaegopangMaster/jsp/main.jsp");
		}
		else{
			response.sendRedirect("/BaegopangMaster/jsp/login/signIn.jsp?check=fail");
		}
	%>
</body>
</html>