var connectC=function(){
	this.left=0;
	this.right=0;
}
var Paintings = function() {
	this.points=new Array;
	this.changed=false;
	this.ID=0;
	this.name;//项目名称
	this.index=-1;//初始化序列号为-1
	this.connects=new Array;
	this.addGraphi=function(data){
		this.connects=new Array;
		var pline=this.drawPoints(data);
		this.drawLines(pline);
		this.p.draw();
	}
	this.drawPoints=function(data){
		
		var jsonObject = data;
		var pointArray = new Array();
		var pMap = jsonObject['graphi']['points'];
		var id = -1;
		var pLine = jsonObject['graphi']['lines'];
		for ( var i in pMap) {
			id++;
			p = pMap[i];

			var point;
			
			var ptemp=getPolyByType(p);
			if(ptemp==null){
				continue;
			}
			point=ptemp.clone();
			point.nameStr=p['nodeName'];
			point.ids=p['id'];
			point.id(p['id']);
			point.basicid=p['basicid'];			
			point.TYPE=p['basicid'];	
			this.p.add(point);
			setPointText(point,p['nodeName']);
			point.x(p.x_location);
			point.y(p.y_location);	
			rotateSpesail(point);		
			resizePoint(point);

		}
		return pLine;

	}
	this.drawLines=function(pLine){
		//var jsonObject = data;
		//var pLine = jsonObject['graphi']['lines'];	
		for ( var i=0;i<pLine.length;i++) {
			var l = pLine[i];
			
			
			var ptemp=getPolyPipe();
			if(ptemp==null){
				continue;
			}
			linep=ptemp.clone();
			linep.nameStr=l['edgeName'];
			linep.ids=l['id'];
			linep.id(l['id']);
			linep.basicid=0;			
			
			this.p.add(linep);
			setPointText(linep,l['edgeName']);
				
			
			
			
			
			
			var start=l['sourceid'];
			var end=l['targetid'];
			var pname=l['edgeName'];
			var startP=this.getPointByID(start);
			var endP=this.getPointByID(end);
			if(startP!=null&&endP!=null&&startP!=endP){
				var	lc=getRightPoint(startP);
				var	rc=getRightPoint(endP);

				var dis={
						x:(rc.getAbsolutePosition().x-lc.getAbsolutePosition().x)/this.scaleN,
						y:(rc.getAbsolutePosition().y-lc.getAbsolutePosition().y)/this.scaleN
					}
				
				linep.x(startP.x()+dis.x/2-leftpoly.polylineLength);
				linep.y(startP.y()+dis.y/2+leftpoly.polyhight*1.85);
				resizePoint(linep);
				//连接管道左边点与原件
				var	llp=getLeftPoint(linep);
				var	rlp=getRightPoint(linep);
				
				var  ll=getLeftLine(linep);	
				
				dis={
						x:-(llp.getAbsolutePosition().x-lc.getAbsolutePosition().x)/this.scaleN,
						y:-(llp.getAbsolutePosition().y-lc.getAbsolutePosition().y)/this.scaleN
					}
			
				movePoint(llp,dis,linep.rotation());	
			
				drawLine(ll,dis,linep.rotation());
			
				
				setConned(linep,llp);
				setConned(startP,lc);
				//连接管道右边点与原件
				var  rl=getRightLine(linep);	
				
				dis={
						x:(rc.getAbsolutePosition().x-rlp.getAbsolutePosition().x)/this.scaleN,
						y:(rc.getAbsolutePosition().y-rlp.getAbsolutePosition().y)/this.scaleN
					}
				
				
				movePoint(rlp,dis,linep.rotation());	
				
				drawLine(rl,dis,linep.rotation());
				
				
				
				setConned(endP,rc);
				setConned(linep,rlp);
				
				
					
					
				/*else{
					var dis={
							x:(rc.getAbsolutePosition().x-lc.getAbsolutePosition().x)/this.scaleN,
							y:(rc.getAbsolutePosition().y-lc.getAbsolutePosition().y)/this.scaleN
						}
					var  l=getLeftLine(endP);						
					movePoint(lc,dis,endP.rotation());							
					drawLine(l,dis,endP.rotation());
				
				}*/
				//this.addConnect(startP,endP,pname);
				
				
			}				
		}		
	}
	
	this.addConnect=function(a,b,pname){
		var name='';
		if(a==b){
			return ;
		}
		var name=pname;
		var	rc=getRightPoint(a);
		var	lc=getRightPoint(b);
		setConned(a,rc);
		setConned(b,lc)

		this.addConnectByName(name,a,b);
		
	}
	
	this.addConnectByName=function(name,a,b){
		for(var l3=0;l3<this.connects.length;l3++){
			if(this.connects[l3].name==name&&this.connects[l3].name==a.nameStr){
				this.connects[l3].right=b.nameStr;
				return;
			}
			if(this.connects[l3].name==name&&this.connects[l3].name==b.nameStr){
				this.connects[l3].left=a.nameStr;
				return;
			}	
		}
			var temp=new connectC;
			temp.name=name;
			temp.left=a.nameStr;
			temp.right=b.nameStr;
			this.connects.push(temp);
		
	}
	
	this.getPointByName=function(name){
		var points = this.p.getChildren();
		for (var i1 = 0; i1 < points.length; i1++) {
			if(points[i1].nameStr==name){
				return points[i1];
			}
		}
		return null;
	}
	this.getPointByID=function(id){
		var points = this.p.getChildren();
		for (var i1 = 0; i1 < points.length; i1++) {
			if(points[i1].ids==id){
				return points[i1];
			}
		}
		return null;
	}

	

	this.hasChange=function(){
		this.changed=true;
		var $index=this.index;
		var showobj=$("#"+this.ID).parent().find("a[name='show']");
    	if(showobj.children("span[name='change']").length==0){
    		showobj.append("<span name='change'>*</span>");
    	}
	}
	this.clearChange=function(){
		this.changed=false;
		var $changeobj=$("#"+this.ID).parent().find("span[name='change']");	
    	if($changeobj.length!=0){
    		$changeobj.remove();
    	}	
		
	}
	this.getChange=function(){
		return this.changed;
	}
	this.initPoint=function(){
		pointslist = this.p.getChildren();
		for(var z=0;z<pointslist.length;z++){
			leftpoly.initPoint(pointslist[z]);
		}
	}
	
	this.addPoints=function(p){
		this.points.push(p);
	}

	this.delPoints=function(p){
		this.points.remove(p);
		this.delConnectByOne(p);
	}
	this.updatePoints=function(){
		this.points=new Array;
		points1 = this.p.getChildren();
		for (li = 0; li < points1.length; li++) {
			this.addPoints(points1[li]);
		}
		//this.pointstr=this.points.toJSONString();
	}
	
	this.updateConnects=function(){

		//this.connects=new Array;
		/*points1 = this.p.getChildren();
		for (l2 = 0; l2 < points1.length; l2++) {
			this.checkConn(points1[l2]);
		}*/
		//this.Connstr=this.connects.toJSONString();
		
	}
/*	this.checkConn = function(g) {
		tempArray = g.getChildren(function(node) {
			return node.getName() == 'connPointsLeft'
					|| node.getName() == 'connPointsRight'
		});
		points = this.p.getChildren();
		var re=null;
		var leftconn;
		var rightconn;
		if(checkAllPipe(g)){
		
			for (li = 0; li < points.length; li++) {
			tempArray2 = points[li].getChildren(function(node) {
				return node.getName() == 'connPointsLeft'
						|| node.getName() == 'connPointsRight'
			});
			//&&checkSpecial(points[li])
			if (points[li]!=g&&(checkSpecial(points[li])||checkLinked(points[li]))&&checkCircle(tempArray[0], tempArray2[1],
					tempArray[0].radius() )) {
				this.addConnectByName(g.nameStr,points[li],g);				
			}
			if (points[li]!=g&&(checkSpecial(points[li])||checkLinked(points[li]))&&checkCircle(tempArray[1], tempArray2[0],
					tempArray[0].radius())) {
				this.addConnectByName(g.nameStr,g,points[li]);
				
			}
		}
			
		return re;
	}
		
	}*/


	this.delConnect=function(a){
		for(var i=this.connects.length-1;i>=0;i--){
			var temp=this.connects[i];
			if(temp.left==a.nameStr||temp.right==a.nameStr||temp.name==a.nameStr){
				this.connects.splice(i, 1);
			}
		}
		
	}
/*	this.delConnectByOne=function(a){
		for(var i=0;i<this.connects.length;i++){
			if(this.connects[i]!=undefined&&(this.connects[i].left==a ||this.connects[i].right==a)){
					delete this.connects[i];
			}
		}
		
	}*/
	this.hide=function(){
		this.p.hide();

	}
	this.saveScroll=function(){
		this.hscrollX=platform.hscroll.x();
		this.vscrollY=platform.vscroll.y();
	}
	this.show=function(){
		this.p.show();
		platform.hscroll.x(this.hscrollX);
		platform.vscroll.y(this.vscrollY);
	}
	this.hscrollX=platform.hscroll.x();
	this.vscrollY=platform.vscroll.y();
	this.showSelected=function(){
		this.show();

		for(var i=0;i<platform.paintingArray.length;i++){
			p1=platform.paintingArray[i]
			if (p1!=null&&p1!=this){
				p1.hide();
			}
		}
	
	}
	this.hideSelected=function(){
		this.hide();
	}
	
	this.init=function(){
		this.p = new Kinetic.Layer({
			x : 100,
			y : 100,
			id : 'painting',
			width : 3000,
			height : 2000,
			fill : '#ff33ee',
			
//			fill: 'transparent',
			draggable:true,
			dragBoundFunc: function(pos) {
	              console.log('abc');
	              return pos;
	          }
			
		});
		
		 this.p.draggable(true);
		 
		    //
			this.p.on('mouseover', function() {
				document.body.style.cursor = 'pointer';
			});
			this.p.on('mouseout', function() {
				document.body.style.cursor = 'default';
			});
		    return this;
	}
	this.mx;
	this.my;
	this.showed=false;
	this.showConned=false;
	this.scaleN=1;
	this.deletePainting=function(){
		
	}
	this.update=function(){
		platform.updateBackgroundPos({x:0,y:0});
		platform.centerlayer.draw();
	}
}
