<%@page import="java.util.HashMap"%>
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
MasterBean mbean=(MasterBean)request.getSession().getAttribute("master");
String storename=mbean.getStorename();


String pw=request.getParameter("pw");
String maddress=request.getParameter("maddress1").concat(" "+request.getParameter("maddress2"));
String mtel=request.getParameter("mtel1").concat("-"+request.getParameter("mtel2")).concat("-"+request.getParameter("mtel3"));

String stel=request.getParameter("stel1").concat("-"+request.getParameter("stel2")).concat("-"+request.getParameter("stel3"));
String hours=request.getParameter("hours");
String info=request.getParameter("info");

//master
HashMap<String,Object> store=new HashMap<String,Object>(); 

store.put("hours", hours);
store.put("info", info);
store.put("storename", storename);
store.put("tel", stel);



//store

HashMap<String,Object> master=new HashMap<String,Object>(); 

master.put("pw", pw);
master.put("address", maddress);
master.put("tel", mtel);
master.put("storename", storename);


OrderDao dao=new OrderDao();

dao.updateMaster(master);
dao.updateStore(store);

response.sendRedirect("/BaegopangMaster/jsp/masterInfo.jsp");









%>

</body>
</html>