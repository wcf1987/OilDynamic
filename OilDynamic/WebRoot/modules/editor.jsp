<%@ page language="java" import="java.util.*,cn.edu.cup.manage.business.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!--Copyright 2010 Scriptoid s.r.l-->
<head>
<title>HTML5 diagram editor</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=9" />

<script type="text/javascript" src="../editor/lib/kinetic-v5.1.0.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="../js/jqGrid/css/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen" href="../js/jqueryUI/themes/redmond/jquery.ui.theme.css" />  
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../bootstrap/css/carousel.css">
<link rel="stylesheet" media="screen" type="text/css"	href="../editor/assets/css/style.css" />
<link rel="stylesheet" media="screen" type="text/css"	href="../editor/assets/css/minimap.css" />



<script type="text/javascript" src="../editor/assets/javascript/json2.js"></script>
<script type="text/javascript" src="../editor/assets/javascript/jquery-1.11.0.min.js"></script>
<script src="../js/jquery/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript" src="../editor/assets/javascript/ajaxfileupload.js"></script>
<script src="../js/jqGrid/js/i18n/grid.locale-cn.js" type="text/javascript"></script>
<script src="../js/jqGrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../bootstrap/js/holder.min.js"></script>
<script type="text/javascript" src="../js/jquery-validation-1.11.1/dist/jquery.validate.js"></script>
<script src="../js/easytabs/jquery.hashchange.min.js" type="text/javascript"></script>
<script src="../js/easytabs/jquery.easytabs.js" type="text/javascript"></script>
<script src="../js/jqueryPlug/jquery.mousewheel.min.js" type="text/javascript"></script>

<script defer="defer" type="text/javascript" src="../editor/lib/init2.js"></script>
<script defer="defer" type="text/javascript" src="../editor/lib/platform.js"></script>
<script defer="defer" type="text/javascript" src="../editor/lib/leftpoly.js"></script>
<script defer="defer" type="text/javascript" src="../editor/lib/Paintings.js"></script>
<script defer="defer" type="text/javascript" src="../editor/lib/tools.js"></script>
<script defer="defer" type="text/javascript" src="../editor/lib/kinecttab.js"></script>
	<!-- <script  type="text/javascript" src="../editor/lib/pipe.js"></script> -->
	
<link type='text/css' href='../editor/assets/simplemodal/css/diagramo.css' rel='stylesheet' media='screen' />
<link rel="stylesheet" media="screen" type="text/css" href="../editor/assets/css/colorPicker_new.css" />



</head>
<body onload="initLight('');" id="body">

	<div id="header">
		
	</div>

	
	<div id="inputDcMap" class="inputDataDiv" >
		<%@ include file="dcmodel.jsp" %>
	</div>
   
		
		
		
	<!-- 新建图形项目的模态框 -->   	
		<div class="modal fade" id="add_GUI_modal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        <h4 class="modal-title" style="font-weight:bold;font-family:幼圆">添加图形文件</h4>
		      </div>
		      <div class="modal-body">
		     	 <form id="addGUIForm" action="addGUIPro.action" method="post"> 
		     	 	<table width="100%" cellpadding="0" cellspacing="0" class="post_table">		      		
		      			<tr>
		      				<td><label width="30%" align="right"style="font-weight:bold;font-family:黑体;font-size:20px;" >名称:</label></td>
				            <td><input id="proname" type="text" class="input2" name="proname" maxlength="30"/><em style="color:red">*</em></td>
		      			</tr>
		      			<tr>
		      				<td><label align="right" style="font-weight:bold;font-family:黑体;font-size:20px;" >描述：</label></td>
		      				<td><input id="description" type="text" class="input2" name="description" maxlength="10" /></td>
		      			</tr>
		      			<tr>
		      				<td><label align="right" style="font-weight:bold;font-family:黑体;font-size:20px;" >类型：</label></td>
		      				<td><input id="type" type="text" class="input2" name="type" maxlength="10" /></td>
		      			</tr>
		      			<tr>
		      				<td><label align="right" style="font-weight:bold;font-family:黑体;font-size:20px;">作者：</label></td>
			        		<td><select id="authorID" name="authorID"></select><em style="color:red">*</em></td>   						
		      			</tr>
		      				    				
				   </table>
				   <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				        <button type="submit" class="btn btn-primary"  >保存</button>
				   </div>
				 </form> 
		      </div>
		     
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
					
    		<!-- 查看图形项目列表的模态框 -->   	
		<div class="modal fade" id="listGUIPro_modal">
		  <div class="modal-dialog">
		    <div class="modal-content" style="width:1300">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		       <!--  <h4 class="modal-title" style="font-weight:bold;font-family:幼圆">查看输入</h4> -->
		      </div>
		      <div class="modal-body">  
		      	<div class="container-fluid">
					<div class="row-fluid">
						<div class="span12">
							<table id="GUIProList" class="table table-striped table-bordered table-hover datatable " ></table>
				      		<div id="GUIProPager" ></div>      		
						</div>
					</div>
				</div>  
		      </div>
		     
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		

		
		
</body>
</html>
	
	
