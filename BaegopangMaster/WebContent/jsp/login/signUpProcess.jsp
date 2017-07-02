<%@page import="mgopang.dao.MemberDao"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("UTF-8");
%>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String address = request.getParameter("address1")+" "+request.getParameter("address2");
	String tel = request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
	String birth = request.getParameter("birth");
	
	MasterBean bean = new MasterBean();
	
	bean.setId(id);
	bean.setPw(pw);
	bean.setName(name);
	bean.setAddress(address);
	bean.setTel(tel);
	bean.setBirth(birth);
	
	MemberDao dao = new MemberDao();
	dao.masterInsert(bean);
	
	response.sendRedirect("/BaegopangMaster/jsp/login/signIn.jsp");
%>

</body>
</html>