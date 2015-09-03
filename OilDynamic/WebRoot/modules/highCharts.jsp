<%@ page language="java" import="java.util.*,cn.edu.cup.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
<base href="<%=basePath%>">
<meta name="keywords" content="unique, wordpress theme">
<meta name="description" content="wordpress theme">
<meta name="author" content="PersianArt">
<meta name="viewport" content="initial-scale=1.0, width=device-width">
<meta charset="UTF-8">
<link rel="shortcut icon" href="modules/images/favicon.html" type="image/x-icon">
<title>拓扑结构后台管理</title>
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

<link rel="stylesheet" href="modules/css/oil_style.css" type="text/css" media="all"/>
<link rel="stylesheet" type="text/css" media="screen" href="js/jqueryUI/css/jquery-ui-1.10.3.custom.css" />
<link rel="stylesheet" type="text/css" media="screen" href="js/jqGrid/css/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen" href="js/jqueryUI/themes/redmond/jquery.ui.theme.css" />
<link rel="stylesheet" type="text/css" media="screen" href="css/tabs.css" />

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
	
	<script src="js/easytabs/jquery.hashchange.min.js" type="text/javascript"></script>
	<script src="js/easytabs/jquery.ba-hashchange.js" type="text/javascript"></script>
	<script src="js/easytabs/jquery.easing.1.3.js" type="text/javascript"></script>
	
	<script src="js/easytabs/jquery.easytabs.js" type="text/javascript"></script>
	<script src="js/easytabs/jquery.raptorize.1.0.js" type="text/javascript"></script>
	
	<script src="http://code.highcharts.com/highcharts.js"></script>
	<script src="modules/js/Highcharts-4.0.1/js/modules/exporting.js"></script>
	<script type="text/javascript" src="modules/js/Highcharts-4.0.1/js/themes/gray.js"></script>
	

<script type="text/javascript" src="modules/js/GraphiCharts.js"></script>

<script src="js/jqGrid/js/i18n/grid.locale-cn.js" type="text/javascript"></script>
<script src="js/jqGrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
	
<script type="text/javascript">
	jQuery(function(){
		jQuery('ul.sf-menu').supersubs({ 
			minWidth:18.4,   // minimum width of sub-menus in em units 
			maxWidth:27,	// maximum width of sub-menus in em units 
			extraWidth:1     // extra width can ensure lines don't sometimes turn over due to slight rounding differences and font-family 
		}).superfish({	// main navigation init
			delay:200,		// one second delay on mouseout 
			animation:{opacity:'show',height:"show"}, // fade-in and slide-down animation 
			speed:'normal',  // faster animation speed 
			autoArrows:false,   // generation of arrow mark-up (for submenu) 
			dropShadows:false   // drop shadows (for submenu)
		});
	});
</script>
<script type="text/javascript">
	jQuery(document).ready(function() {
		// nivoslider init
		jQuery('#nivoslider').nivoSlider({
			effect:'random',
			slices:15,
			boxCols:8,
			boxRows:4,
			animSpeed:500,
			pauseTime:5000,
			directionNav:false,
			directionNavHide:false,
			controlNav:true,
			controlNavThumbs:false,
			pauseOnHover:true,
			randomStart:false,
			manualAdvance:false
		});
		$('#tab-container').easytabs();
	});
</script>
</head>
<body>
<div class="body-background">
	<div class="body-wrapper">
        <%@ include file="head.jsp"%>
		<!-- end of #header -->
		<div id="main">
		<div id="graphiDraw" style="width:100%; height:auto;margin-left:200px;" onclick="graphiDraw();"></div> 		
  
			<div id="sub-main" class="container_12">
				<div id="content">
					 

				</div>
				<!-- end of #content -->
			</div>
		</div>
		<!-- end of #main -->
	    <%@include file="foot.jsp"%>
	</div>
	<!-- end of .body-wrapper -->
</div>
<link rel="stylesheet" href="modules/style-selector/style-selector.css" type="text/css" media="all" />
<link rel="stylesheet" href="#" type="text/css" media="all" id="style-selector-css" />
<script type="text/javascript" src="modules/style-selector/jquery.cookie.js"></script>
<script type="text/javascript" src="modules/style-selector/style-selector.js"></script>
<div id="style-selector" style="display: none">
	<div id="style-selector-wrap">
		<div class="header">Style Selector
			<a href="#" class="reset">Reset</a>
		</div>
		<div class="body">

	</body>
</html>