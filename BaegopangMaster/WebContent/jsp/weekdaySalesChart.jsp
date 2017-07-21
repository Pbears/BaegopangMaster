<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>Insert title here</title>

<style>
#chartdiv2 {
  width: 100%;
  height: 500px;
}
.amcharts-export-menu-top-right {
  top: 10px;
  right: 0;
}
</style>
</head>

<script>

var loaddata2;

function getnewdata2(){
	$.ajax({
		url : "/BaegopangMaster/jsp/chartdata/weekdaySalesData.jsp",
		async : false,
		dataType : "json",
		success : function(data) {
			loaddata2 = data;
		}
	});	
	return loaddata2;
}


var chart = AmCharts.makeChart("chartdiv2", {
  "type": "serial",
  "theme": "light",
  "marginRight": 70,
  "dataProvider": getnewdata2(),
  "startDuration": 1,
  "graphs": [{
    "balloonText": "<b>[[category]]: [[value]]</b>",
    "fillColorsField": "color",
    "fillAlphas": 0.9,
    "lineAlpha": 0.2,
    "type": "column",
    "valueField": "visits"
  }],
  "chartCursor": {
    "categoryBalloonEnabled": false,
    "cursorAlpha": 0,
    "zoomable": false
  },
  "categoryField": "country",
  "categoryAxis": {
    "gridPosition": "start",
    "labelRotation": 45
  },
  "export": {
    "enabled": true
  }

});
</script>

<body>

<div class="col-sm-12">
		<div class="col-sm-12" align="center">
			<h1>요일별 평균매출</h1><br><br>
		</div>
		<div class="col-sm-12">
		
			<div id="chartdiv2"></div>

		</div>
	</div>



</body>
</html>