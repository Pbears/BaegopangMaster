<%@page import="mgopang.dao.OrderDao"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
   request.setCharacterEncoding("UTF-8");
%>
<body>
<%

String pw=request.getParameter("pw");
String maddress=request.getParameter("maddress1").concat(" "+request.getParameter("maddress2"));
String mtel=request.getParameter("mtel1").concat("-"+request.getParameter("mtel2")).concat("-"+request.getParameter("mtel3"));
String stel=request.getParameter("stel1").concat("-"+request.getParameter("stel2")).concat("-"+request.getParameter("stel3"));
String name=request.getParameter("name");
String id=request.getParameter("id");
String storename=request.getParameter("storename");
String birth=request.getParameter("birth");

MasterBean mbean=new MasterBean();

mbean.setPw(pw);
mbean.setAddress(maddress);
mbean.setTel(mtel);
mbean.setName(name);
mbean.setId(id);
mbean.setStorename(storename);
mbean.setBirth(birth);


OrderDao dao=new OrderDao();
dao.dropMaster(mbean);
response.sendRedirect("/BaegopangMaster/jsp/login/signIn.jsp");



%>



</body>
</html>