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
<script src="https://www.amcharts.com/lib/3/themes/none.js"></script>

	
		
<title>Insert title here</title>
<style type="text/css">
.chartdiv {
  width: 100%;
  height: 700px;
}												
  

</style>
</head>
<script>


var loaddata;

function getnewdata(){
	$.ajax({
		url : "/BaegopangMaster/jsp/chartdata/brandBestData.jsp",
		async : false,
		dataType : "json",
		success : function(data) {
			loaddata = data;
		}
	});	
	return loaddata;
}




var chart = AmCharts.makeChart( "chartdiv", {
  "type": "pie",
  "theme": "none",
  "dataProvider":getnewdata(),
  "valueField": "litres",
  "titleField": "country",
   "balloon":{
   "fixedPosition":true
  },
  "export": {
    "enabled": true
  }
} );


function setDataSet(dataset_url) {
	  AmCharts.loadFile(dataset_url, {}, function(data) {
	    chart.dataProvider = AmCharts.parseJSON(data);
	    chart.validateData();
	  });
	}
</script>

<body>

	<div class="col-sm-12">
		<div class="col-sm-12" align="center">
			<h1>브랜드BEST</h1>
		</div>
		<div class="col-sm-12">
		
			<div id="chartdiv" class="chartdiv"></div>

		</div>
	</div>
</body>
</html>