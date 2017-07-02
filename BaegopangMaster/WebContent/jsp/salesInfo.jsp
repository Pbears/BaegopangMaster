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
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart1);
	google.charts.setOnLoadCallback(drawChart2);

	function drawChart1() {
		var data = google.visualization.arrayToDataTable([
				[ 'Year', 'Sales', 'Expenses' ], [ '2004', 1000, 400 ],
				[ '2005', 1170, 460 ], [ '2006', 660, 1120 ],
				[ '2007', 1030, 540 ] ]);

		var options = {
			title : '월 매출',
			curveType : 'function',
			legend : {
				position : 'bottom'
			}
		};

		var chart = new google.visualization.LineChart(document
				.getElementById('curve_chart1'));

		chart.draw(data, options);
	}

	function drawChart2() {
		var data = google.visualization.arrayToDataTable([
				[ 'Year', 'Sales', 'Expenses' ], [ '2004', 1000, 400 ],
				[ '2005', 1170, 460 ], [ '2006', 660, 1120 ],
				[ '2007', 1030, 540 ] ]);

		var options = {
			title : '일 매출',
			curveType : 'function',
			legend : {
				position : 'bottom'
			}
		};

		var chart = new google.visualization.LineChart(document
				.getElementById('curve_chart2'));

		chart.draw(data, options);
	}
</script>
<body style="background-color: white;">
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12" style="height: 100px;"></div>
			<div class="col-sm-1"></div>
			<div class="col-sm-10">


				<!--내부  -->

				<div class="container-fluid" align="center">
					<div class="row">
						<!-- 차트1-->
						<div class="col-sm-12">
							<div
								style="width: 950px; height: 550px; background-color: white; border-radius: 30px; border: 1px solid #ccc;">
								<div id="curve_chart1" style="width: 900px; height: 500px"></div>
							</div>
						</div>
						<div class="col-sm-12" style="height: 100px;"></div>

						<!--차트2 -->
						<div class="col-sm-12">
							<div
								style="width: 950px; height: 550px; background-color: white; border-radius: 30px; border: 1px solid #ccc;">
								<div id="curve_chart2" style="width: 900px; height: 500px"></div>
							</div>
						</div>
					</div>
				</div>


				<!-- 내부끝 -->


			</div>
			<div class="col-sm-1"></div>
		</div>
		<div class="col-sm-12" style="height: 100px;"></div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>

</body>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
</html>