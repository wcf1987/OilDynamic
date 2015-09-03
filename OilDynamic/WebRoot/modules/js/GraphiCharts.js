
var graphiCharts=new GraphiCharts();
graphiCharts.init(26,7);
function getParam()
{
	var aQuery = window.location.href.split("?");  //取得Get参数
    var aGET = new Array();
    if(aQuery.length > 1)
    {
        var aBuf = aQuery[1].split("&");
        for(var i=0, iLoop = aBuf.length; i<iLoop; i++)
        {
            var aTmp = aBuf[i].split("=");  //分离key与Value
            aGET[aTmp[0]] = aTmp[1];
        }
     }
     return aGET;
 }
function GraphiCharts(){
	var id=getParam()["id"];
	this.init=function (){

		this.graphiArray=new Array;
		$.ajax({
			url:'ProGraphiByGraphID.action',
			type:'post',
			dataType:'json',
			data : {
				id:id
			},
			success:function(data){
				//alert(data['listGraphi'].length);
				if(data.msg!="OK"){
					alert(data.msg);
					return
				}
				var Graphi=data['graphi'];
				
					
					 
					var drawnew= document.createElement('div');
					//drawnew.innerHTML = "test";
					drawnew.id="graphi"+Graphi.GraphiName;
					drawnew.style="width:50%; height:400px;margin-top:10px;margin-left:300px;";
					$("#graphiDraw").append(drawnew)
					
					//alert(temp.graphiType);
					if (Graphi.type==1){
						graphiCharts.loadLines(Graphi,drawnew.id);
					}
					if (Graphi.type==2){
						graphiCharts.loadPies(Graphi,drawnew.id);
					}
					if (Graphi.type==3){
						graphiCharts.loadBars(Graphi,drawnew.id);
					}
					
					
					
					
			}
		});
	}
	this.loadLines=function(Graphi,container){
			
					var graphitemp=Graphi;
					var chart=graphiCharts.drawLines(graphitemp['y'][0].messure,container);
					//alert(1);
					var X=graphitemp['x'];
					//var chart=graphiCharts.graphiArray[index];
					chart.xAxis[0].setCategories(X.value,true);
					chart.xAxis[0].setTitle({
						text: X.display+"   "+X.messure				
						},true); 
					
					var Y=graphitemp['y'];
					
					chart.setTitle({text:graphitemp.graphiName});
					chart.yAxis[0].setTitle({
			                text: Graphi.yName+"  "+Y[0].messure
					},true); 
					for(var k=0;k<Y.length;k++){
						var yname=Y[k].display;
						chart.addSeries({
		                    id:k,
		                    name: yname,
		                    data: Y[k].value		
		                    }); 
					}
					
			
	}
	this.drawLines=function(tip,container){
		  var	chart = new Highcharts.Chart({
			  		chart: {
			  			renderTo: container,
				        type: 'line'
				                      },
		            title: {
		                text: '',
		                x: -20 //center
		            },
		            subtitle: {
		                text: '',
		                x: -20
		            },
		            xAxis: {
		               // categories: ['0.1','0.2','0.3','0.4','0.5','0.6']
		            },
		            yAxis: {
		                title: {
		                    text: ''
		                },
		                plotLines: [{
		                    value: 0,
		                    width: 0.01,
		                    color: '#808080'
		                }]
		            },
		            tooltip: {
		                valueSuffix: tip
		            },
		            legend: {
		                layout: 'vertical',
		                align: 'right',
		                verticalAlign: 'middle',
		                borderWidth: 1
		            },
		            series: []
		        });
		     return  chart;
		}
	this.loadPies=function(Graphi,container){
		
		var graphitemp=Graphi;
		if(graphitemp['points']==null){
			return;
		}
		var temp=graphitemp['points'][0];
		var chart=graphiCharts.drawPies(temp.messure,container);					
		temp=graphitemp['points']
		
		chart.setTitle({text:graphitemp.graphiName});
		
		var tempArr=new Array;
		for(var k=0;k<temp.length;k++){
			tempArr[k]=new Array(temp[k].display,temp[k].value);
		}
		chart.addSeries({
                type: 'pie',
                name: '占比',
                data:tempArr
        }); 
		/*chart.addSeries( {
            name: 'London',
            data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
        })*/

}

this.drawPies=function(tip,container){
var	chart = new Highcharts.Chart({
  chart: {
        plotBackgroundColor: null,
        renderTo: container,
        plotBorderWidth: null,
        plotShadow: false
    },
    title: {
        text: 'Browser market shares at a specific website, 2014'
    },
    tooltip: {
	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                color: '#6699ff',
                connectorColor: '#6699ff',
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            },
            showInLegend: true
        }
    },

});
 return  chart;
}


	this.loadBars=function(Graphi,container){
					
				var graphitemp=Graphi;
				var chart=graphiCharts.drawBars(graphitemp['y'][0].messure,container);
				//alert(1);
				var X=graphitemp['x'];
				//var chart=graphiCharts.graphiArray[index];
				chart.xAxis[0].setCategories(X.value,true);
				chart.xAxis[0].setTitle({
					text: X.display+"   "+X.messure				
					},true); 
				
				var Y=graphitemp['y'];
				chart.yAxis[0].setTitle({
	                text: Graphi.yName+"  "+Y[0].messure
				},true); 
				chart.setTitle({text:graphitemp.graphiName});
				for(var k=0;k<Y.length;k++){
					chart.addSeries({
	                    id:k,
	                    name: Y[k].display,
	                    data: Y[k].value		
	                    }); 
				}
				
			
	}
	
	this.drawBars=function(tip,container){
		  var	chart = new Highcharts.Chart({
			  		chart: {
			  			renderTo: container,
				        type: 'column'
				                      },
		            title: {
		                text: '',
		                x: -20 //center
		            },
		            subtitle: {
		                text: '',
		                x: -20
		            },
		            /*xAxis: {
		                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
		                    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
		            },*/
		            
		                  
			        
		            yAxis: {
		                title: {
		                    text: ''
		                },
		                plotLines: [{
		                    value: 0,
		                    width: 1,
		                    color: '#808080'
		                }]
		            },
		            tooltip: {
		                valueSuffix: tip
		            },
		            legend: {
		                align: 'right',
		                borderWidth: 0
		            },
		            series: []
		        });
		     return  chart;
		}



}
$(function () { 
		   /* $('#container0').highcharts({
		        chart: {
		            type: 'bar'
		        },
		        title: {
		            text: 'Fruit Consumption'
		        },
		        lang: {
		            printChart: '打印图表',
		            downloadPNG: '下载JPEG 图片',
		            downloadJPEG: '下载JPEG文档',
		            downloadPDF: '下载PDF 文件',
		            downloadSVG: '下载SVG 矢量图',
		            contextButtonTitle: '下载图片'
		
		        },
		        
		        xAxis: {
		            categories: ['Apples', 'Bananas', 'Oranges']
		        },
		        yAxis: {
		            title: {
		                text: 'Fruit eaten'
		            }
		        },
		        series: [{
		            name: 'Jane',
		            data: [1, 0, 4]
		        }, {
		            name: 'John',
		            data: [5, 7, 3]
		        }]
		    });
		    
		     $('#container1').highcharts({
            title: {
                text: 'Monthly Average Temperature',
                x: -20 //center
            },
            subtitle: {
                text: 'Source: WorldClimate.com',
                x: -20
            },
            xAxis: {
                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
            },
            yAxis: {
                title: {
                    text: 'Temperature (°C)'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: '°C'
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: 'Tokyo',
                data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
            }, {
                name: 'New York',
                data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
            }, {
                name: 'Berlin',
                data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
            }, {
                name: 'London',
                data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
            }]
        });
        
        // Build the chart
        $('#container2').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false
            },
            title: {
                text: 'Browser market shares at a specific website, 2014'
            },
            tooltip: {
        	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
                type: 'pie',
                name: 'Browser share',
                data: [
                    ['Firefox',   45.0],
                    ['IE',       26.8],
                    {
                        name: 'Chrome',
                        y: 12.8,
                        sliced: true,
                        selected: true
                    },
                    ['Safari',    8.5],
                    ['Opera',     6.2],
                    ['Others',   0.7]
                ]
            }]
        });*/
        
        
		});
		