jQuery.ajaxSettings.traditional = true;
var platform;
var leftpoly;
var tabtools;


function initLight() {
	
			
		
	


	$("inputDcMap").show();
	
	platform=new Platform();
	platform.init();
	leftpoly=new Leftpolys();
	leftpoly.init();
	platform.addLeft(leftpoly);
	//paintings=new Paintings();
	//platform.addPainting(paintings.init());

	tabtools=new TabTools(); 
	
	initMouseWheel();
	tabtools.load();
//	var curl=window.location.pathname;
//	if(curl=="/OilManage/pages/simulate_wellbore.jsp"){
//		listProjectModal();	 
//	}

}

