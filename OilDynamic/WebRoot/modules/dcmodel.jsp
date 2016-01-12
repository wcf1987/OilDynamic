<%@ page language="java" import="java.util.*,cn.edu.cup.manage.business.*" pageEncoding="UTF-8"%>

	<script src="js/Highcharts-4.0.1/highcharts.js"></script>
	<script src="js/Highcharts-4.0.1/js/modules/exporting.js"></script>
	
	<script type="text/javascript" src="js/Highcharts-4.0.1/js/themes/gray.js"></script>
  
<div id="actions">					
	<!-- <a href="javascript:createNewModal();" title="新建">
		<img src="editor/icons/sign_add.png" border="0" />
	</a> --> 
	<img class="separator" src="../editor/assets/images/toolbar_separator.gif" border="0" width="1" height="16" /> 
	<a href="javascript:listGUIProGrid();" title="载入">
		<img src="../editor/icons/folder.png" border="0" />
	</a> 
	<!-- <img class="separator" src="editor/assets/images/toolbar_separator.gif" border="0" width="1" height="16" /> 
	<a href="javascript:save();" title="保存">	
		<img src="editor/icons/save_labled.png" border="0" alt="Organic" />
	</a>  -->
	<img class="separator" src="../editor/assets/images/toolbar_separator.gif"	border="0" width="1" height="16" /> 
	<a href="javascript:scaleCenter(1.25);" title="放大画布">
		<img src="../editor/icons/arrow_expand.png" border="0" alt="Container" />
	</a> 
	<img class="separator" src="../editor/assets/images/toolbar_separator.gif" border="0" width="1" height="16" /> 
	<a href="javascript:scaleCenter(0.8);" title="缩小画布">
		<img src="../editor/icons/arrow_contract.png" border="0" alt="Container" />
	</a> 
	<img class="separator" src="../editor/assets/images/toolbar_separator.gif" border="0" width="1" height="16" /> 
		<input type="checkbox" checked=true onclick="showGrid();" id="gridCheckbox" title="显示网格" />
		<span class="toolbarText">显示网格</span> 
	
</div>
<div id="editor" style="background-color:#F6F6F6">
	<input id="selectedID" style="display: none;"/> 
	<div id="tab-container" class="tab-container"  style="position: absolute;z-index:100;margin-left:120px;margin-top:2px;">
	  <ul id="paintingTabs" class='etabs'>
	  </ul>
	</div>

	<div id="container">
	
	</div>		
</div>
<input type="hidden" id="proID" />

<ul id="contextmenu" style="display:none;z-index:100">	
	<li><a>解除锁定</a></li>
	<li><a>顺时针旋转90°</a></li>
	<li><a>逆时针旋转90°</a></li>	
	<!--<li><a>更改颜色</a></li>
	<li><a>放大</a></li>
	<li><a>缩小</a></li>	-->		
	<li><a>删除该节点</a></li>
	<li><a>属性</a></li>
	
   </ul>
   <!-- 属性框 -->
<div id="pointPra"  style=" display: none;z-index:100;position:absolute">
	<div id="pointPraClose" ><span style="font-size:25px;float:right;width:20px;align:center;margin-top:-30px;" onclick="closePraList()">x</span></div>
	<table id="PointPraList" class="table table-striped table-bordered table-hover datatable " >
	</table>
  		<div>
		<div id="PointPraPager" ></div>
	</div>		
</div>

<div id="PipePra"  style=" display: none;z-index:100;position:absolute">
	<div id="PipePraClose" >
	<span style="font-size:25px;float:right;width:20px;align:center;margin-top:-30px;" onclick="closePipeList()">x</span>
	</div>
<div id="pipecontainer" class="tab-container">
  <ul class='etabs'>
    <li class='tab'><a href="#tabs1-Pipe1">参数表</a></li>
    <li class='tab'><a href="#tabs1-Pipe2" onclick="graphiDraw()">分布图</a></li>   
  </ul>
  <div id="tabs1-Pipe1">
   <table id="PipePraList" class="table table-striped table-bordered table-hover datatable " >
	</table>
  	<div>
		<div id="PipePraPager" ></div>
	</div>	
  </div>
  <div id="tabs1-Pipe2">
    <div id="graphiDraw" style="width:100%; height:auto;margin-left:0px;" ></div> 	
    
  </div>
  </div>	
</div>

<script>
$('#pipecontainer').easytabs({
	animate: false
	 }); 
	 function closePraList(){
			$("#pointPra").hide();

		}
/* $('#pipecontainer')
  .bind('easytabs:after', function(event, clicked, targetPanel, settings) {
   
   
  }); */
/*  $('#pipecontainer').bind('tabsselect', function(event, ui) {
  alert(ui.index);
}); */


/* $('#father_tab').easytabs({
	animate: false
}); */
</script>


		