<%@page import="mgopang.dao.OrderDao"%>
<%@page import="mgopang.bean.StoreBean"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%
   request.setCharacterEncoding("UTF-8");
%>
</head>
<body>

<%

String pw=request.getParameter("pw");
String maddress=request.getParameter("maddress1").concat(" "+request.getParameter("maddress2"));
String mtel=request.getParameter("mtel1").concat("-"+request.getParameter("mtel2")).concat("-"+request.getParameter("mtel3"));

String stel=request.getParameter("stel1").concat("-"+request.getParameter("stel2")).concat("-"+request.getParameter("stel3"));
String hours=request.getParameter("hours");
String info=request.getParameter("info");

MasterBean mbean=new MasterBean();

mbean.setPw(pw);
mbean.setAddress(maddress);
mbean.setTel(mtel);

StoreBean sbean=new StoreBean();

sbean.setTel(stel);
sbean.setHours(hours);
sbean.setInfo(info);

out.println(mbean);
out.println(sbean);

OrderDao dao=new OrderDao();

dao.updateMaster(mbean);
dao.updateStore(sbean);

response.sendRedirect("/BaegopangMaster/jsp/masterInfo.jsp");









%>

</body>
</html>