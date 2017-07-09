<%@page import="mgopang.bean.NoticeBean"%>
<%@page import="java.util.List"%>
<%@page import="mgopang.dao.NoticeDao"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@page import="mgopang.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="/BaegopangMaster/css/Main.css" rel="stylesheet" />
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	function mouseOv(obj) {
		obj.style.background = "#84D5CE";
	}
	function mouseOt(obj) {
		obj.style.background = "#44BFB7";
	}
	function noticeView(i){
		var obj=document.getElementById("li"+i).value; 
		//window.open("selectQuestion.jsp?title="+obj,"noticeCk","width=400, height=300")
		alert(obj.value);
	}
</script>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	MemberDao dao = new MemberDao();
	MasterBean bean = (MasterBean)session.getAttribute("master");
	String storename = bean.getStorename();
	NoticeDao ndao = new NoticeDao();
	/* session에 넣지말고 
	 * (MasterBean)session.getAttribute("master") 안에 정보 다 넣어뒀으니까 
	 * 여기서 뽑아서 쓰세용 ~ 확인하시면 이 주석 삭제부탁드립니다.
	 */ 
	session.setAttribute("storename", storename);
%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="mid_contents">
		<div class="container">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
						<img src="../img/main_img.jpg" alt="Los Angeles"
							style="width: 100%;">
					</div>

					<div class="item">
						<img src="../img/main_img2.jpg" alt="Chicago" style="width: 100%;">
					</div>

					<div class="item">
						<img src="../img/main_img3.jpg" alt="New York"
							style="width: 100%;">
					</div>

				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="info_user">
				<img src="../img/noimage.jpg" />
			<div class="myinfo">
				<p>이름 : <%=bean.getName() %></p>
				<p>지점 : <%=bean.getStorename() %></p>
				<p>포인트 : <%=bean.getPoint() %></p>
				<p>댓글 확인</p>
			</div>
		</div>
	</div>
	<div class="bot_contents">
		<div id="notice">
			<p
				style="display: inline-block; margin-bottom: 20px; margin-right: 140px">공지사항</p>
			<a href="#" style="padding: 0px;" class="noti_title">
				<p style="display: inline-block; font-size: 15px; color: #646464;">더보기</p>
			</a>
			<div id="notice_list">
				<ui>
				<%
					List<NoticeBean>list=null;
					list = ndao.noticeSel();
					for(int i=0; i<list.size(); i++){
						NoticeBean nbean = list.get(i);
				%>
				<a id="noticeAll" onclick="window.open('Notice.jsp?title=<%=nbean.getTitle() %>',target='_blank','width=300', 'height=200')" > 
					<li id="li<%=i%>" onclick="noticeView(<%=i%>)" value="<%=nbean.getTitle()%>"><%=nbean.getTitle()%></li>
					
				</a>
				<%
					}
				%>
				</ui>
			</div>
		</div>
		<div id="point">
			<p>포인트</p>
			<div id="wpoint">
				<a href="#"><p>>포인트란?</p></a>
			</div>
			<div id="mpoint">
				<a href="#"><p>>내 포인트 확인하기</p></a>
			</div>
		</div>
		<div id="service">
			<p>입점 안내</p>
			<p
				style="font-size: 25px; color: #646464; margin: 0; padding: 0 50px; font-size: 20px;">음식점
				성장 파트너, 배고팡</p>
			<img src="/BaegopangMaster/img/info.jpg">
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>