<%@page import="java.util.Calendar"%>
<%@page import="mgopang.bean.OrderBean"%>
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
   request.setCharacterEncoding("UTF-8");
%>
</head>
<body>
<%
    OrderDao dao=new OrderDao();
    String flag=request.getParameter("flag");
    String ordernumber=request.getParameter("ordernumber");
    int amount=Integer.parseInt(request.getParameter("amount"));
    int price=Integer.parseInt(request.getParameter("price"));
    String menuname=request.getParameter("menuname");
    String storename=request.getParameter("storename");
    String ordertime=request.getParameter("ordertime");
    String memberid=request.getParameter("memberid");
    
    HashMap<String,Object>map=new HashMap<String,Object>();
    	map.put("ordernumber", ordernumber);
    if(flag.equals("check")){
    	map.put("state", "승인완료");
    	dao.updateOrder(map);
    }else if(flag.equals("del")){
    	map.put("state", "배달완료");
    	String orderday=ordertime.substring(0, 10);
    	String ordermonth=ordertime.substring(0, 7);
    	map.put("amount", amount);
    	map.put("price", price);
    	map.put("menuname", menuname);
    	map.put("storename", storename);
    	map.put("orderday", orderday);
    	map.put("ordermonth", ordermonth);
    	map.put("memberid", memberid);
    	    	
    	//요일 
    	Calendar cal = Calendar.getInstance();

    	cal.set(Calendar.YEAR, Integer.parseInt(orderday.substring(0,4)));
    	cal.set(Calendar.MONTH, Integer.parseInt(orderday.substring(5,7)) -1);
    	cal.set(Calendar.DATE, Integer.parseInt(orderday.substring(8,10)));

    	String[] dayOfWeek = {"일","월","화","수","목","금","토"};
    	String weekday = dayOfWeek[cal.get(Calendar.DAY_OF_WEEK)-1];
    	
    	map.put("weekday", weekday);    	
    	out.print(memberid);
    	
    	//dao.updateOrder(map); 
    	dao.insertOrderData(map);   	
    	
    }else if(flag.equals("refuse")){
    	map.put("state", "거절");
    	dao.updateOrder(map);   	
    }
     
    response.sendRedirect("/BaegopangMaster/jsp/masterOrder.jsp");
    
    
    
    


%>
</body>
</html>