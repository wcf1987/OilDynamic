<%@ page language="java" import="java.util.*,cn.edu.cup.manage.business.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <%
//User userlogin=(User)(session.getAttribute("user"));
%> 
    <base href="<%=basePath%>">
    
    <title>系统优化</title>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	

<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap/css/carousel.css">
	 
<link rel="stylesheet" href="modules/css/normalize.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/960.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/superfish.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/prettyPhoto.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/fix.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/tipsy.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/style.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/skins/skyblue.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/responsive.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/options.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/map.css" type="text/css" media="all" />
<link rel="stylesheet" href="modules/css/oil_style.css" type="text/css" media="all"/>
<link rel="stylesheet" type="text/css" media="screen" href="js/jqueryUI/css/jquery-ui-1.10.3.custom.css" />
<link rel="stylesheet" type="text/css" media="screen" href="js/jqGrid/css/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen" href="js/jqueryUI/themes/redmond/jquery.ui.theme.css" />


<script type="text/javascript" src="modules/js/jquery.min.js"></script>
<script type="text/javascript" src="modules/js/superfish.js"></script>
<script type="text/javascript" src="modules/js/supersubs.js"></script>
<script type="text/javascript" src="modules/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="modules/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="modules/js/jquery.masonry.min.js"></script>
<script type="text/javascript" src="modules/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="modules/js/jcarousellite.js"></script>
<script type="text/javascript" src="modules/js/selectnav.min.js"></script>
<script type="text/javascript" src="modules/js/jquery.tipsy.js"></script>
<script type="text/javascript" src="modules/js/jquery.custom.js"></script>
<script type="text/javascript" src="modules/js/jquery.search.js"></script>

	<script type="text/javascript" src="js/upload/jquery.uploadify.min.js"></script>
	<script type="text/javascript" src="js/jquery-validation-1.11.1/dist/jquery.validate.js"></script>
	<script type="text/javascript" src="js/jquery/jquery.message.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/holder.min.js"></script>
	
	
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=4bfe7b8632739c89a1b8e95529da1d97"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/library/TextIconOverlay/1.2/src/TextIconOverlay_min.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/library/MarkerClusterer/1.2/src/MarkerClusterer_min.js"></script>
	 <script type="text/javascript" src="http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager_min.js"></script>
	<script type="text/javascript" src="http://developer.baidu.com/map/jsdemo/demo/changeMore.js"></script>
	<link rel="stylesheet" href="http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager_min.css" />		
	<script type="text/javascript" src="http://api.map.baidu.com/library/MapWrapper/1.2/src/MapWrapper.min.js"></script>  


	<!-- <script type="text/javascript" src="http://developer.baidu.com/map/jsdemo/demo/changeMore.js"></script> -->
	<script type="text/javascript" src="modules/js/map_gis.js"></script>	
	
	 <script src="js/jqGrid/js/i18n/grid.locale-cn.js" type="text/javascript"></script>
	 <script src="js/jqGrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
	<!-- <link rel="stylesheet" media="screen" type="text/css" href="editor/assets/css/processui.css" />  -->
	<!-- 自定义 -->


  </head>
    
  
  <body  id="body" onload="initMapGis(5);">

	<div id="head">
		
	</div>  
		<div class="container marketing condiv" style="width:1200px;margin-top:1px;">
	    	<div class="row" style="margin-bottom:-50px;">
	      		<!-- 地图 -->
	      		<div id="mapDyn" class="maprounded"></div>
	      	</div><!-- /.row -->
	    	
	    </div><!-- /.container -->		
	    </div>
  
	<hr> 
    <div id="footer">
        
        <%@include file="foot.jsp"%>
    </div>
	 


	<script type="text/javascript">
	 /* $('#load_modal').modal({
		     backdrop:'static',
		     keyboard:false,
		     show:true
		 }); */ 
		 	
	</script>

			   
  </body>
  
</html>

	
