<%@page import="java.util.HashMap"%>
<%@page import="mgopang.dao.MenuManageDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
  
</script>
</head>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	String menuname=request.getParameter("menuname");
	String storename=(String)session.getAttribute("storename");
	MenuManageDao dao=new MenuManageDao(); 
	HashMap<String,String>map=new HashMap<String,String>();
	map.put("menuname", menuname);
	map.put("storename", storename);
	dao.insertMenu(map); 

	response.sendRedirect("../menuManager.jsp");
%>
	
</body>
</html>