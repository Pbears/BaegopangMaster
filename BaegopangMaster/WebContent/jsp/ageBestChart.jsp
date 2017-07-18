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

var chart2;
var legend2;
var selected2;

var types2;

function generateChartData2() {
	$.ajax({
		url : "/BaegopangMaster/jsp/chartdata/ageData.jsp",
		async : false,
		dataType : "json",
		success : function(data) {
			types2 = data;
		}
	});	
  var chartData = [];
  for (var i = 0; i < types2.length; i++) {
    if (i == selected2) {
      for (var x = 0; x < types2[i].subs.length; x++) {
        chartData.push({
          type: types2[i].subs[x].type,
          percent: types2[i].subs[x].percent,
          color: types2[i].color,
          pulled: true
        });
      }
    } else {
      chartData.push({
        type: types2[i].type,
        percent: types2[i].percent,
        color: types2[i].color,
        id: i
      });
    }
  }
  return chartData;
}

AmCharts.makeChart("chartdiv2", {
  "type": "pie",
"theme": "light",

  "dataProvider": generateChartData2(),
  "labelText": "[[title]]: [[value]]",
  "balloonText": "[[title]]: [[value]]",
  "titleField": "type",
  "valueField": "percent",
  "outlineColor": "#FFFFFF",
  "outlineAlpha": 0.8,
  "outlineThickness": 2,
  "colorField": "color",
  "pulledField": "pulled",
  "titles": [{
    "text": "자세한 내용을 보려면 슬라이스를 클릭하십시오."
  }],
  "listeners": [{
    "event": "clickSlice",
    "method": function(event) {
      var chart2 = event.chart;
      if (event.dataItem.dataContext.id != undefined) {
        selected2 = event.dataItem.dataContext.id;
      } else {
        selected2 = undefined;
      }
      chart2.dataProvider = generateChartData2();
      chart2.validateData();
    }
  }],
  "export": {
    "enabled": true
  }
});

</script>
<body>

	<div class="col-sm-12">
		<div class="col-sm-12" align="center">
		</div>
			<h1>나이별BEST</h1>
		<div class="col-sm-12">
			<div id="chartdiv2" class="chartdiv"></div>

		</div>
	</div>
</body>
</html>