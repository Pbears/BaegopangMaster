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
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart1);
      google.charts.setOnLoadCallback(drawChart2);
      google.charts.setOnLoadCallback(drawChart3);
      google.charts.setOnLoadCallback(drawChart4);
      
      
      function drawChart1() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      2],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);

        var options = {
          title: '요일별 BEST',
          is3D: true,
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d1'));
        chart.draw(data, options);
      }
      
      function drawChart2() {
          var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['Work',     11],
            ['Eat',      2],
            ['Commute',  2],
            ['Watch TV', 2],
            ['Sleep',    7]
          ]);

          var options = {
            title: '날씨별 BEST',
            is3D: true,
          };

          var chart = new google.visualization.PieChart(document.getElementById('piechart_3d2'));
          chart.draw(data, options);
        }
      
      function drawChart3() {
          var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['Work',     11],
            ['Eat',      2],
            ['Commute',  2],
            ['Watch TV', 2],
            ['Sleep',    7]
          ]);

          var options = {
            title: '연령별 BEST',
            is3D: true,
          };

          var chart = new google.visualization.PieChart(document.getElementById('piechart_3d3'));
          chart.draw(data, options);
        }
      
      function drawChart4() {
          var data = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['Work',     11],
            ['Eat',      2],
            ['Commute',  2],
            ['Watch TV', 2],
            ['Sleep',    7]
          ]);

          var options = {
            title: '성별 BEST',
            is3D: true,
          };

          var chart = new google.visualization.PieChart(document.getElementById('piechart_3d4'));
          chart.draw(data, options);
        }
    </script>


<body style="background-color: white;">
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container-fluid">
		<div class="row">
		<div class="col-sm-12" style="height:100px;"></div>
			<div class="col-sm-1" ></div>
			<div class="col-sm-10">


				<!--내부  -->

				<div class="container-fluid" align="center" >
					<div class="row">
						<!-- 차트1-->
						<div class="col-sm-6" >
						<div
								style="width: 630; height: 350; background-color: white; border-radius: 30px; border: 1px solid #ccc;">
						<div id="piechart_3d1" style="width: 630px; height: 350px;"></div>
						</div>
						</div>

						<!--차트2 -->
						<div class="col-sm-6">
						<div
								style="width: 630; height: 350; background-color: white; border-radius: 30px; border: 1px solid #ccc;">
						<div id="piechart_3d2" style="width: 630px; height: 350px;"></div>
						</div>
						</div>
						
						<div class="col-sm-12" style="height: 40px;"></div>						
						<!--차트3 -->
						<div class="col-sm-6" >
						<div
								style="width: 630; height: 350; background-color: white; border-radius: 30px; border: 1px solid #ccc;">
						<div id="piechart_3d3" style="width: 630px; height: 350px;"></div>
						</div>
						</div>
						
						<!--차트4 -->
						<div class="col-sm-6" >
						<div
								style="width: 630; height: 350; background-color: white; border-radius: 30px; border: 1px solid #ccc;">
						<div id="piechart_3d4" style="width: 630px; height: 350px;"></div>
						</div>
						</div>
						
						
					</div>
				</div>


				<!-- 내부끝 -->


			</div>
			<div class="col-sm-1" ></div>
		</div>
		<div class="col-sm-12" style="height:100px;"></div>
	</div>
 
 

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>