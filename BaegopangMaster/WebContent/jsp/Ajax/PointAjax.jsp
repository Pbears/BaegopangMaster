<%@page import="mgopang.dao.PointDao"%>
<%@page import="mgopang.bean.PointBean"%>
<%@page import="mgopang.bean.MasterBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<style type="text/css">
#rank {
	display: inline-block;
	width: 280px;
	height: 230px;
	border: 2px solid rgba(255, 140, 0, 0.34);
	margin-right: 20px;
	background: white;
	border-radius: 15px; 
}

#rankdiv {
	width: 920px;
	margin: 40px auto;
}
#rank_subcon > img{
	width:70px; 
	height:70px; 
	margin-left: 60px;
	border-radius: 50px; 
}
#srank {
	margin-top: 20px;
	width: 97%;
	height: 100px;
	border: 2px solid rgba(255, 140, 0, 0.34);
	background: white;
}
#myrank{
	width: 700px;
	margin: 40px auto;
	text-align: center;
}
#myBrank, #myGrank{
	display: inline-block;
	width: 45%;
	height: 280px;
	border: 2px solid rgba(255, 140, 0, 0.34);
	margin-right: 20px;
	background: white;
	border-radius: 15px; 
}
#rank_con{
	text-align: center;
	margin-top: 30px;
}
#rank_con > img{
	border-radius: 50px; 
	margin-bottom: 15px;
}
#myBrank > h4, #myGrank > h4{
	font-weight: bold;
	font-size: 20px;
	font-family: sans-serif;
	margin: 15px 0;
} 
#rank > img{
	position: absolute;
	width: 38px;
	margin: 5px;
	height: 50px;
}
#srank > h4{
	color: #FF8C00; 
	margin-left: 10px; 
	font-weight: bold;
	display: inline-block;
	position: absolute;
}
#rank_subcon{
	margin-top: 15px;
}
#rank_subcon_title_4, #rank_subcon_title_5{
	font-weight: bold; 
	margin-top: 10px; 
	display: inline-block; 
	margin-left: 15px;
	font-size: 18px;
} 
#rank_subcon_point_4, #rank_subcon_point_5{
	font-weight: bold; 
	font-style: italic; 
	color: red; 
	font-size: 15px;
	display: inline-block; 
	float: right; 
	margin-right: 50px;
	margin-top: 25px;
}
</style>
</head>
<body>
	<%
		int flag = Integer.parseInt(request.getParameter("flag"));
		MasterBean mbean = (MasterBean)session.getAttribute("master");
		String storename = mbean.getStorename();
		List<PointBean>list = null;
		PointDao pdao = new PointDao();
	%>

	<div id="rankdiv">
		<%
			if (flag != 3) {
				if(flag==1){
					list = pdao.brandPoint(storename);
				}else{
					list = pdao.guPoint(storename);
				}
				for (int i = 0; i < list.size(); i++) {
					PointBean bean = list.get(i);
					if(i<3){
		%>
		<div id="rank">
			<%-- <h4 style="color: #FF8C00; margin-left: 10px; font-weight: bold;"><%=i+1 %>등</h4> --%>
			<img src="/BaegopangMaster/img/medal/pmedal<%=i+1 %>.png">
		<div id="rank_con">
			<img src="/BaegopangMaster/img/noimg.jpg" width="100px" height="100px">
			<div >
			<h4 style="font-weight: bold; margin-top: 10px;"><%=bean.getStorename() %></h4>
			<h4 style="font-weight: bold; font-style: italic; color: red; font-size: 15px;"><%=bean.getPoint()%>팡</h4>
			</div>
		</div>
		</div>
		<%
			}
		else{ 
		%>
		<div id="srank"><h4><%=i %></h4>
		<div id="rank_subcon">
			<img src="/BaegopangMaster/img/noimg.jpg">
			<h3 id="rank_subcon_title_4"><%=bean.getStorename()%></h3>
			<h3 id="rank_subcon_point_4"><%=bean.getPoint()%>팡</h3>
		</div>
		</div>	
		<%		}
			}
		}
		%>
	</div>
		<%
			if (flag == 3) {
				PointBean bbean = pdao.mybrandPoint(storename);
				PointBean gbean = pdao.myguPoint(storename);
		%>
		<div id="myrank">
			<div id="myBrank">
				<h4>브랜드별 순위</h4>
				<img src="/BaegopangMaster/img/noimg.jpg" width="100px" height="100px" style="border-radius: 50px; ">
				<h4 style="font-weight: bold; font-style: italic; color:#FF8C00;  font-size: 20px;"><%=bbean.getNum() %>등</h4>
				<h4 style="font-weight: bold; margin-top: 10px;"><%=bbean.getStorename() %></h4>
				<h4 style="font-weight: bold; font-style: italic; color: red; font-size: 15px;"><%=bbean.getPoint() %>팡</h4>
			</div>
			<div id="myGrank">
				<h4>구 별 순위</h4>
				<img src="/BaegopangMaster/img/noimg.jpg" width="100px" height="100px" style="border-radius: 50px; ">
				<h4 style="font-weight: bold; font-style: italic; color:#FF8C00;  font-size: 20px;"><%=gbean.getNum() %>등</h4>
				<h4 style="font-weight: bold; margin-top: 10px;"><%=gbean.getStorename() %></h4>
				<h4 style="font-weight: bold; font-style: italic; color: red; font-size: 15px;"><%=gbean.getPoint() %>팡</h4>
			</div>
		</div>
		<%		
			}
		%>

</body>
</html>