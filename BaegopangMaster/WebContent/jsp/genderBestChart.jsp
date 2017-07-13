<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/BaegopangMaster/css/Main.css" rel="stylesheet" />
<link rel="stylesheet" href="/BaegopangMaster/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	
		<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/pie.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<title>Insert title here</title>
<style type="text/css">
.chartdiv {
  width: 100%;
  height: 700px;
}												

  
</style>
</head>
<script type="text/javascript">

var chart1;
var legend11;
var selected1;


var types1;



function generateChartData1() {

	$.ajax({
			url : "/BaegopangMaster/jsp/chartdata/genderData.jsp",
			async : false,
			dataType : "json",
			success : function(data) {
				types1 = data;
			}
		});
	
		var chartData = [];
		 for (var i = 0; i < types1.length; i++) {
		  if (i == selected1) {
		    for (var x = 0; x < types1[i].subs.length; x++) {
		      chartData.push({
		        type: types1[i].subs[x].type,
		        percent: types1[i].subs[x].percent,
		        color: types1[i].color,
		        pulled: true
		      });
		    }
		  } else {
		    chartData.push({
		      type: types1[i].type,
		      percent: types1[i].percent,
		      color: types1[i].color,
		      id: i
		    });
		  }
		} 
		return chartData;
	}

	AmCharts.makeChart("chartdiv1", {
		"type" : "pie",
		"theme" : "light",

		"dataProvider" : generateChartData1(),
		"labelText" : "[[title]]: [[value]]",
		"balloonText" : "[[title]]: [[value]]",
		"titleField" : "type",
		"valueField" : "percent",
		"outlineColor" : "#FFFFFF",
		"outlineAlpha" : 0.8,
		"outlineThickness" : 2,
		"colorField" : "color",
		"pulledField" : "pulled",
		"titles" : [ {
			"text" : "자세한 내용을 보려면 슬라이스를 클릭하십시오."
		} ],
		"listeners" : [ {
			"event" : "clickSlice",
			"method" : function(event) {
				var chart1 = event.chart;
				if (event.dataItem.dataContext.id != undefined) {
					selected1 = event.dataItem.dataContext.id;
				} else {
					selected1 = undefined;
				}
				chart1.dataProvider = generateChartData1();
				chart1.validateData();
			}
		} ],
		"export" : {
			"enabled" : true
		}
	});
</script>
<body>

	<div class="col-sm-12">
		<div class="col-sm-12" align="center">
			<h1>성별BEST</h1>
		</div>
		<div class="col-sm-12">
			<div id="chartdiv1" class="chartdiv"></div>

		</div>
	</div>
</body>
</html>