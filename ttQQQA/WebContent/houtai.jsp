<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>腾讯PC产品官宣管理平台</title>
    <!-- zui -->
    <link href="zui/css/zui.min.css" rel="stylesheet">
    <style type="text/css">
    *{margin:0;padding:0;}
    html,body{width:100%;height:100%;background:#e2e2e2}
    .title{
    	width:100%;
    	height:50px;
    	background:rgb(69, 165, 195);
    }
    .title_name h1{
    	font-size:30px;
    	margin:0;
    	margin-left:50px;
    	margin-top:10px;
    }
    .title_name{
    	position:absolute;
    	
    	width:500px;
    	height:50px;
    }
    .users h1{
    	font-size:30px;
    	margin:0;
    	margin-left:50px;
    	margin-top:10px;
    }
    .users{
    	margin:0;
    	margin-left:90%;
    	position:absolute;
    	width:137px;
    	height:50px;
    }
    .daohanglan{
    	width:10%;
    	height:800px;
    	float:left;
    	background:#e2e2e2;
    }
    .daohanglan ul li
    {
    	height:50px;
    	margin:0px;

    }
    .biaoqian
    {
    	    width: 100%;
    		height: 20px;
    		margin: 0;
   	 		margin-left: 10%;
    		background: #7e967e;	
    }
    .tu
    {
    	margin:0;
    	width:100%;
    	margin-left:10%;
    	height:800px;
    }
    .tu1
    {
    	margin:0;
    	width:100%;
    	height:400px;
    }
    .TIMandQQ
    {
    	background:black;
    	margin:0;
		width:50%;
		float:left;
		height:400px;    	
    }
    .download-xitong
    {
    	margin:0;
    	background:orange;
		width:50%;
		float:right;
		height:400px;    	
    }
    #download-people
    {
    	background:red;
    	mRargin:0;
    	width:100%;
    	height:400px;
    }
    </style>
  </head>
<body>
	<script type="text/javascript" src="zui/js/jquery.min.js"></script>
	<script type="text/javascript" src="zui/js/zui.min.js"></script>
	<script type="text/javascript" src="js/echarts.min.js"></script>
	<script type="text/javascript" src="zui/lib/chart/zui.chart.min.js"></script>
	<div class="title">
		<div class="title_name">
			<h1 style="white">腾讯PC产品官宣管理平台</h1>
		</div>
		<div class="users">
			<h1>用户</h1>
		</div>
	</div>
	<div class="biaoqian">
		<font style="color: #e2e2e2;	font-size: 10px;	margin-left: 50px;">首页</font>
		<font style="color: #e2e2e2;	font-size: 10px;	margin-left: 100px;">数据分析</font>
	</div>
	<div class="xiabu">
		<div class="daohanglan">
			<ul class="nav nav-tabs nav-stacked">
  				<li class="active"><a href="your/nice/url">数据分析</a></li>
 				 <li><a href="your/nice/url">产品管理</a></li>
  				 <li><a href="your/nice/url">产品动态</a></li>
  				 <li><a href="your/nice/url">控制台</a></li>	
       		</ul>
		</div>
		<div class="tu">
			<div class="tu1">
				<div class="TIMandQQ">	
				</div>
				<div class="download-xitong"></div>
				</div>
			<div id="download-people"></div>
			<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('download-people'));
        // 指定图表的配置项和数据
        var option = {
        		xAxis: {
        	        type: 'category',
        	        boundaryGap: false,
        	        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        	    },
        	    yAxis: {
        	        type: 'value'
        	    },
        	    series: [{
        	        data: [<% out.print(5); %>, 932, 901, 934, 1290, 1330, 1320],
        	        type: 'line',
        	        areaStyle: {}
        	    }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
		</div>
	</div>
	
</body>
</html>