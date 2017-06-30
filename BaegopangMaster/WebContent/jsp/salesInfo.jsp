<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/BaegopangMaster/css/Main.css" rel="stylesheet" />
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<script>
	$(function() {
		var chart1 = Highcharts.chart('container', {
			chart : {
				type : 'line'
			},
			title : {
				text : '월별 매출'
			},

			xAxis : {
				categories : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul',
						'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ]
			},
			yAxis : {
				title : {
					text : '매출액'
				}
			},
			plotOptions : {
				line : {
					dataLabels : {
						enabled : true
					},
					enableMouseTracking : false
				}
			},
			series : [
					{
						name : 'Tokyo',
						data : [ 7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5,
								23.3, 18.3, 13.9, 9.6 ]
					},
					{
						name : 'London',
						data : [ 3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6,
								14.2, 10.3, 6.6, 4.8 ]
					} ]
		});
	});
</script>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-1" style="background-color: lavender;">.col-sm-4</div>
			<div class="col-sm-10">


				<!--내부  -->

				<div class="container-fluid">
					<div class="row">
					<!-- 탭 -->
						<div class="col-sm-12" >
							<div class="container" align="center">
								<h1>매출</h1>
								<ul class="nav nav-tabs">
									<li class="active"><a href="#">월매출</a></li>
									<li><a href="#">Menu 1</a></li>
									<li><a href="#">Menu 2</a></li>
									<li><a href="#">Menu 3</a></li>
								</ul>
								<br>

							</div>
						</div>

						<!--차트  -->
						<div class="col-sm-12">
							<div id="container"
								style="min-width: 310px; height: 400px; margin: 0 auto"></div>
						</div>
					</div>
				</div>


				<!-- 내부끝 -->


			</div>
			<div class="col-sm-1" style="background-color: lavender;">.col-sm-4</div>
		</div>
		<div class="col-sm-12" style="background-color: lavender;">.col-sm-4</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>

</body>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
</html>