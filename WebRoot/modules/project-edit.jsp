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
<link rel="stylesheet" type="text/css" media="screen" href="Flat-UI-master/css/flat-ui.css" />
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
<script defer="defer" type="text/javascript" src="editor/lib/tools.js"></script>

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
	

<script type="text/javascript" src="modules/js/project_edit.js"></script>
<script type="text/javascript" src="modules/js/proper.js"></script>
<script type="text/javascript" src="modules/js/dmuploader.js"></script>
<script src="js/jqGrid/js/i18n/grid.locale-cn.js" type="text/javascript"></script>
<script src="js/jqGrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="js/upload/uploadify.css">
	<!--[if lt IE 9]>
	<style type="text/css" media="screen">
	#backtotop > span,
	.shortcodeviewer,
	.social-icon a,
	#main .social-icon,
	#footer-wrapper .social-icon,
	.kwicks-info,
	.kwicks li:first-child,
	.kwicks li.last,
	.kwicks .kwicks-caption.kwicks1,
	.kwicks .kwicks-caption.kwicks5,
	.roundabout-moveable-item,
	.roundabout-moveable-item img,
	#liteaccordion,
	#liteaccordion.rounded,
	#liteaccordion.rounded ol li > h2.first,
	#liteaccordion.rounded ol li > h2.last,
	#liteaccordion.rounded ol li > h2.last.selected,
	.sliderNav #nav ul li a,
	#main,
	#main.main-transparent,
	.service-2 .icon,
	.service-3 .icon,
	.testimonial-widget-nav .prev,
	.testimonial-widget-nav .next,
	.sidebar #widget-contactForm li.buttons,
	#footer-wrapper #widget-contactForm li.buttons,
	.sidebar .widget_calendar tbody td a,
	#footer-wrapper div[id|="calendar"] tbody td a,
	.featured-thumbnail .zoom-icon.gallery-port .iconcontainer span,
	.faq_list dt,
	#contact-form .error-message.php-message,
	.contact-info,
	.testimonial,
	.testimonial .testi-pic a,
	.testimonial-bubble,
	.table,
	.dropcaps.circle,
	.dropcaps.hbar,
	.dropcaps.vbar,
	.dropcaps.square,
	.shortcode-button,
	.message-box,
	.message-box.small-icon,
	.message-box.no-icon,
	.shortcodeslider .nivo-controlNav a,
	.progress-bar.radius,
	.progress-bar.radius .progress-bar-meter,
	.progress-bar.radius .progress-bar-meter img,
	.personnel-shortcode .personnel-post,
	.personnel-shortcode .personnel-details strong,
	.tabs li a.active,
	.price-title-wrapper-left,
	.price-button-wrapper-left,
	.container_12 {
	position:relative;
	behavior:url(css/PIE.php);
	}
	</style>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--[if lt IE 8]>
	<div style="clear:both; text-align:center; position:relative;">
		<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode">
			<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" alt="" />
		</a>
	</div>
<![endif]-->
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
			<div id="sub-main" class="container_12">
				<div id="content">
					<div style=" width:100%; padding-right:0; padding-left:0;">
						<div class="grid_6" style="width: 920px;">
							<div class="h-wrapper">
								<h3 id="h3proname">项目<span class="line"></span></h3>
							</div>
						</div>

                        <div class="grid_6" style="width: 920px;">
                        	<div id="tab-container" class='tab-container'>  
							  <ul class='etabs'>
							    <li class='tab'><a href="#tab-vertexList">点列表</a></li>
							    <li class='tab'><a href="#tab-edgeList">边列表</a></li>	
							  </ul>  
							  <div class="panel-container">
								  <div id="tab-vertexList">
								    <table id="vertexList" class="table table-striped table-bordered table-hover datatable " ></table>
	                            	<div id="vertextPager" ></div>
								  </div>
								    <div id="tab-edgeList">
								    <table id="edgeList" class="table table-striped table-bordered table-hover datatable " ></table>
	                            	<div id="edgePager" ></div>
								  </div>
							  </div>		
							</div>
							<div id="excelQueue" class="fileQueue"></div>
            				  <div>
            				  <div id="excelQueue" class="fileQueue"></div>            				
            				  	<a href="modules/map.jsp" class="btn btn-large btn-block btn-primary" style="width:100px;height:30px;float:left;margin-left:5px;margin-top:5px;">图形化展示</a>					
						 	 	<a href="modules/editor.jsp" class="btn btn-large btn-block btn-primary" style="width:100px;height:30px;float:left;margin-left:5px;">笛卡尔建模</a>					
						 	 	<a href="javascript:exportPro()" class="btn btn-large btn-block btn-primary" style="width:100px;height:30px;float:left;margin-left:5px;">导出项目</a>
								<div id="impdiv" style="width:100px;height:30px;float:left;margin-left:2px;"><input type="file" name="importExcel" id="importExcel"/></div>
								
						 	 </div>	
                        </div>
                        
                        
					</div>

					<div class="clear mb20"></div>


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
			<div class="input-box">
				<select name="layout">
					<option value="boxed">Boxed</option>
					<option value="wide">Wide</option>
					<option value="block">Block</option>
				</select>
				<select name="bar">
					<option value="off">Bar Off</option>
					<option value="on">Bar On</option>
				</select>
				<select name="info">
					<option value="on">Info On</option>
					<option value="off">Info Off</option>
				</select>
			</div>
			<div class="style-title">Predefined Colors</div>
			<div class="blocks skins">
				<a href="#" title="blueviolet"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="cadetblue"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="coral"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="crimson"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="deeppink"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="firebrick"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="gold"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="mediumaquamarine"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="olive"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="palevioletred"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="redviolet"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="rosybrown"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="royalblue"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="skyblue"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="teal"><span class="color"></span><span class="black"></span></a>
				<a href="#" title="yellowgreen"><span class="color"></span><span class="black"></span></a>
			</div>
			<div class="style-title">Predefined Patterns</div>
			<div class="blocks patterns">
				<a href="#" title="pattern1"></a>
				<a href="#" title="pattern2"></a>
				<a href="#" title="nopattern">No Pattern</a>
			</div>
		</div>
	</div>
	<div class="style-toggle"></div>
</div>
	<div class="modal fade" id="list_nodeproper_modal">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        <h4 class="modal-title" style="font-weight:bold;font-family:幼圆">节点属性</h4>
		      </div>
		      <div class="modal-body">
		     	 <form id="listnodeproperForm" action="addBasicNodeProper.action" method="post"> 
		     	 	<div class="grid_6">
                            <table id="nodeProperList" class="table table-striped table-bordered table-hover datatable " ></table>
                            <div id="nodeProperPager" ></div>
						</div>
				   <div class="modal-footer">
				       
				   </div>
				 </form> 
		      </div>
		     
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
</body>
</html>