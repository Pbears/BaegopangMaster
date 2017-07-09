<%@page import="mgopang.dao.MasterAskDao"%>
<%@page import="mgopang.bean.MasteraskadminBean"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	opener.parent.location.reload();
	window.close();  
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
		MasterBean mbean= (MasterBean)session.getAttribute("master");
		String masterid = mbean.getId();
		String title = request.getParameter("title");
		String masterinfo = request.getParameter("contents");
		MasteraskadminBean bean = new MasteraskadminBean();
		bean.setTitle(title);
		bean.setMasterinfo(masterinfo);
		bean.setMasterid(masterid);
		
		MasterAskDao dao=new MasterAskDao();
		dao.insertAsk(bean);
	%>
</body>
</html>