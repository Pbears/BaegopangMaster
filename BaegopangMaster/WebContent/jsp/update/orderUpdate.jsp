<%@page import="mgopang.dao.OrderDao"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%
   request.setCharacterEncoding("EUC-KR");
%>
</head>
<body>
<%
    OrderDao dao=new OrderDao();
    String bstate=request.getParameter("state");
    String ordernumber=request.getParameter("ordernumber");
    HashMap<String,Object>map=new HashMap<String,Object>();
    	map.put("ordernumber", ordernumber);
    if(bstate.equals("승인대기")){
    	map.put("state", "승인완료");
    	dao.updateOrder(map);
    }else if(bstate.equals("승인완료")){
    	map.put("state", "배달완료");
    	dao.updateOrder(map);   	
    }
     
    response.sendRedirect("/BaegopangMaster/jsp/masterOrder.jsp");
    
    
    
    


%>
</body>
</html>