<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/radar.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<script src="http://www.amcharts.com/lib/3/plugins/dataloader/dataloader.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<title>Insert title here</title>
</head>
<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 500px;
}				
</style>
<!-- Chart code -->
<script>
var chart = AmCharts.makeChart( "chartdiv", {
	"type": "radar",
	"theme": "light",
	"dataLoader": {
		"url": "/premierLeague/jsp/data/personalValue.jsp",
	    "format": "json"
	},
	"valueAxes": [ {
		// 그래프와 value 의 거리		
		"axisTitleOffset": 20,
		// 값의 최소값  
		"minimum": 0,
		// 중앙점에서 value를 연결한 선 굵기
		"axisAlpha": 0.15
	} ],
	// 그래프가 그려지는 속도
	"startDuration": 2,
	"graphs": [ {
			"balloonText": "[[ability]] - [[value]]",
			// 점 모양
			"bullet": "round",
			// 그래프 선 굵기
			"lineThickness": 2,
			"valueField": "value"
	} ],
	"categoryField": "ability"
} );
</script>
<body>
<!-- HTML -->

<div id="chartdiv"></div>
</body>
</html>