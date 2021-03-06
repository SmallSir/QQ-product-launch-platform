<%@ page contentType="text/html; charset=utf-8" 
import="com.tencent.dao.DownInfo"%>
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

    .users{
    	margin:0;
    	margin-left:90%;
    	position:absolute;
    	width:137px;
    	height:50px;
    }
    .daohanglan{
    	width:12%;
    	height:800px;
    	float:left;
    	background:#e2e2e2;
    }
    .biaoqian
    {
    	    width: 100%
    		height: 20px;
   			margin: 0;
    		margin-left: 12%;
    		background: #7e967e;
    }
    .tu
    {
    	margin:0;
    	width:88%;
    	margin-left:12%;
    	height:800px;
    }
    .tu1
    {
    	margin:0;
    	width:100%;
    	height:400px;
    }
    .xiabu
    {
    	width:100%;
    	height:800px;
    }
    #TIMandQQ
    {
    	display:inline;
    	background:black;
    	margin:0;
		width:50%;
		float:left;
		height:400px;    	
    }
    #download-xitong
    {
    	display:inline;
    	float:right;
    	margin:0;
		width:50%;
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
				<div id="TIMandQQ">	</div>
				<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('TIMandQQ'));

        // 指定图表的配置项和数据
        var option = {
        	    title: {
        	        text: '产品下载量'
        	    },
        	    tooltip: {
        	        trigger: 'axis'
        	    },
        	    legend: {
        	        data:['QQ','TIM']
        	    },
        	    grid: {
        	        left: '3%',
        	        right: '4%',
        	        bottom: '3%',
        	        containLabel: true
        	    },
        	    toolbox: {
        	        feature: {
        	            saveAsImage: {}
        	        }
        	    },
        	    xAxis: {
        	        type: 'category',
        	        boundaryGap: false,
        	        data: ['周一','周二','周三','周四','周五','周六','周日']
        	    },
        	    yAxis: {
        	        type: 'value'
        	    },
        	    series: [
        	        {
        	            name:'TIM',
        	            type:'line',
        	            stack: '总量',
        	            data:[
        	            <% out.print(DownInfo.getTIMweekinfo(1)); %>,
        	            <% out.print(DownInfo.getTIMweekinfo(2)); %>, 
        	            <% out.print(DownInfo.getTIMweekinfo(3)); %>, 
        	            <% out.print(DownInfo.getTIMweekinfo(4)); %>, 
        	            <% out.print(DownInfo.getTIMweekinfo(5)); %>, 
        	            <% out.print(DownInfo.getTIMweekinfo(6)); %>, 
        	            <% out.print(DownInfo.getTIMweekinfo(7)); %>
        	            ]
        	        },
        	        {
        	            name:'QQ',
        	            type:'line',
        	            stack: '总量',
        	            data:[
						<% out.print(DownInfo.getQQweekinfo(1)); %>,
						<% out.print(DownInfo.getQQweekinfo(2)); %>,
						<% out.print(DownInfo.getQQweekinfo(3)); %>,
						<% out.print(DownInfo.getQQweekinfo(4)); %>,
						<% out.print(DownInfo.getQQweekinfo(5)); %>, 
						<% out.print(DownInfo.getQQweekinfo(6)); %>, 
						<% out.print(DownInfo.getQQweekinfo(7)); %>
						]
        	        }
        	    ]
        	};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
				<div id="download-xitong"></div>
				<script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('download-xitong'));

        // 指定图表的配置项和数据
        var option = {
        	    backgroundColor: '#2c343c',

        	    title: {
        	        text: '访问来源',
        	        left: 'center',
        	        top: 20,
        	        textStyle: {
        	            color: '#ccc'
        	        }
        	    },

        	    tooltip : {
        	        trigger: 'item',
        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
        	    },

        	    visualMap: {
        	        show: false,
        	        min: 80,
        	        max: 600,
        	        inRange: {
        	            colorLightness: [0, 1]
        	        }
        	    },
        	    series : [
        	        {
        	            name:'访问来源',
        	            type:'pie',
        	            radius : '55%',
        	            center: ['50%', '50%'],
        	            data:[
        	                {value:
        	                <% out.print(DownInfo.getSourseinfo(3)); %>, 
        	                name:'PC端'},
        	                {value:
        	                <% out.print(DownInfo.getSourseinfo(2)); %>, 
        	                name:'安卓'},
        	                {value:
        	                <% out.print(DownInfo.getSourseinfo(1)); %>, 
        	                name:'IOS'},
        	            ].sort(function (a, b) { return a.value - b.value; }),
        	            roseType: 'radius',
        	            label: {
        	                normal: {
        	                    textStyle: {
        	                        color: 'rgba(255, 255, 255, 0.3)'
        	                    }
        	                }
        	            },
        	            labelLine: {
        	                normal: {
        	                    lineStyle: {
        	                        color: 'rgba(255, 255, 255, 0.3)'
        	                    },
        	                    smooth: 0.2,
        	                    length: 10,
        	                    length2: 20
        	                }
        	            },
        	            itemStyle: {
        	                normal: {
        	                    color: '#c23531',
        	                    shadowBlur: 200,
        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
        	                }
        	            },

        	            animationType: 'scale',
        	            animationEasing: 'elasticOut',
        	            animationDelay: function (idx) {
        	                return Math.random() * 200;
        	            }
        	        }
        	    ]
        	};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
			</div>
			<div id="download-people"></div>
			 <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('download-people'));

        // 指定图表的配置项和数据
        var option = {
        		title: {
        	        text: '每年下载量'
        	    },
        	    xAxis: {
        	        type: 'category',
        	        boundaryGap: false,
        	        data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月','8月', '9月', '10月', '11月', '12月']
        	    },
        	    yAxis: {
        	        type: 'value'
        	    },
        	    series: [{
        	        data: [
        	        <% out.print(DownInfo.getinfo(1)); %>, 
        	        <% out.print(DownInfo.getinfo(2)); %>, 
        	        <% out.print(DownInfo.getinfo(3)); %>, 
        	        <% out.print(DownInfo.getinfo(4)); %>, 
        	        <% out.print(DownInfo.getinfo(5)); %>, 
        	        <% out.print(DownInfo.getinfo(6)); %>, 
        	        <% out.print(DownInfo.getinfo(7)); %>,
        	        <% out.print(DownInfo.getinfo(8)); %>, 
        	        <% out.print(DownInfo.getinfo(9)); %>, 
        	        <% out.print(DownInfo.getinfo(10)); %>, 
        	        <% out.print(DownInfo.getinfo(11)); %>, 
        	        <% out.print(DownInfo.getinfo(12)); %>,],
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