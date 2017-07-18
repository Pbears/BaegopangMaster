<%@page import="mgopang.dao.MasterReplyDao"%>
<%@page import="java.util.HashMap"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		MasterBean mbean = (MasterBean) session.getAttribute("master");
		String storename = mbean.getStorename();
		int pnum= Integer.parseInt(request.getParameter("pnum")); 
		String contents = request.getParameter("contents");
		System.out.print(storename+" "+pnum+" "+contents);
		HashMap<String,Object>map = new HashMap<String,Object>();
		map.put("storename",storename);
		map.put("pnum",pnum);
		map.put("contents",contents);
		MasterReplyDao dao=new MasterReplyDao();
		dao.insertReply(map);
		
		response.sendRedirect("../ReplyManage.jsp");
	%>
</body>
</html>