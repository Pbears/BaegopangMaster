<%@page import="java.util.HashMap"%>
<%@page import="mgopang.bean.NoticeBean"%>
<%@page import="java.util.List"%>
<%@page import="mgopang.dao.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
	function NoticeOne(i){
		var obj=document.getElementById("notitle"+i).value;
		 window.location.href="Notice.jsp?title="+encodeURI(obj); 
	}
</script>
<body>
<%
	NoticeDao dao =new NoticeDao();
	List<NoticeBean>list = null;
	
	HashMap<String, Object> map = new HashMap<String, Object>();
	//map.put("masterid", masterid);
	int pageScale = 5;

	int currentPage = 0;
	int totalRow = dao.getNTotalRows();
	try {
		currentPage = Integer.parseInt(request.getParameter("page"));
	} catch (Exception e) {
		currentPage = 1;
	}
	int totalPage = totalRow % pageScale == 0 ? totalRow / pageScale : totalRow / pageScale + 1;
	if (totalRow == 0)
		totalPage = 1;
	int start = 1 + (currentPage - 1) * pageScale;
	int end = pageScale + (currentPage - 1) * pageScale;
	//out.print(query+"   "+data ); //출력확인
	int currentBlock = currentPage % pageScale == 0 ? (currentPage / pageScale) : (currentPage / pageScale + 1);
	int startPage = 1 + (currentBlock - 1) * pageScale;
	int endPage = pageScale + (currentBlock - 1) * pageScale;
	//   out.println(startPage+" "+endPage+ " "+currentBlock+" "+totalPage);
	if (totalPage <= endPage)
		endPage = totalPage;
	map.put("start", start);
	map.put("end", end);
%>


<div class="container">
  <h2>공지사항</h2>          
  <table class="table table-hover">
    <thead>
      <tr>
        <th>No</th>
        <th>날짜</th>
        <th>글 제목</th>
      </tr>
    </thead>
    <tbody>
    <%
    	list = dao.selectPage(map);
    	for(int i=0; i<list.size(); i++){
    		NoticeBean bean = list.get(i);
    %>
      <tr tabindex="1">
        <td><%=bean.getNo() %></td>
        <td><%=bean.getRegdate() %></td>
        <td id="ntitle<%=i%>" onclick="NoticeOne(<%=i%>)"><%=bean.getTitle() %></td>
      </tr>
        <input type="hidden" id="notitle<%=i%>" value="<%=bean.getTitle() %>">
	<%
    	}
	%>
    </tbody>
  </table>
</div>
	<!-- 페이지이동페이징 -->
			<div class="paging" style="text-align: center;">
				<ul class="pagination">
					<ul class="pager">
						<li><a href="/BaegopangMaster/jsp/NoticeList.jsp?page=1"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<li>
						<li>
							<%
								if (currentBlock > 1) {
									if (currentPage != startPage) {
							%> <a
							href="/BaegopangMaster/jsp/NoticeList.jsp?page=<%=startPage - 1%>">
								Previous </a> 
								<%
								 	} else {
								 %> <a href="#">Previous</a> <%
								 	}
								 	} else {
								 		if (currentPage != startPage) {
								 %> <a
							href="/BaegopangMaster/jsp/NoticeList.jsp?page=<%=currentPage - 1%>">
								Previous </a> <%
 	} else {
 %> <a href="#">Previous</a> <%
 	}
 	}
 %>
						</li>
						<span> <%


 	for (int i = startPage; i <= endPage; i++) {
 		if (i == currentPage) {
 %>
							<li><a href="#"><strong><%=i%></strong></a></li> <%
 	} else {
 %>
							<li><a
								href="/BaegopangMaster/jsp/NoticeList.jsp?page=<%=i%>">
									<%=i%>
							</a></li> <%
 	}
 	}
 %>
						</span>
						<li>
							<%
								if (totalPage > endPage) {
									if (currentPage != endPage) {
							%> <a
							href="/BaegopangMaster/jsp/NoticeList.jsp?page=<%=currentPage + 1%>">
								Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	} else {
 		if (currentPage != endPage) {
 %> <a
							href="/BaegopangMaster/jsp/NoticeList.jsp?page=<%=currentPage + 1%>">
								Next </a> <%
 	} else {
 %> <a href="#">Next</a> <%
 	}
 	}
 %>
						</li>

						<li><a
							href="/BaegopangMaster/jsp/NoticeListn.jsp?page=<%=totalPage%>"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
			</div>

		</div>
</body>
</html>