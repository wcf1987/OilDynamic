var Leftpolys = /**
 * 
 */
function() {
	 var lastsel;
	 var proID=$("#proID").val();
	if(proID==""){
		proID=0;//这样一改，就不会出现属性框时不时无法加载的问题了
	}
	 var datagrid =jQuery("#PointPraList").jqGrid({
		   	url:'listNodePropers.action',
			datatype: "json",
			mtype : 'POST',
			postData : {
				proID : proID
				
			}, 
		   	colNames:['属性','值','单位'],
		   	colModel:[
		   		{name:'properName',index:'properName', width:100,align:"center"},
		   		{name:'properValue',index:'properValue', width:100, align:"center",editable:true},
		   		{name:'properUnit',index:'properUnit', width:100, align:"center"}
		   	],
		   	width:'auto',//530
		   	height:'auto',
		   	rowNum:30,
		   	rowList:[10,20,30],		   	
		   	sortname: 'id',
		    viewrecords: true,
		    sortorder: "desc",
		    cellEdit:true,
			cellsubmit : 'remote',
			cellurl : 'modifyNodePropers.action',
			formatCell : function(rowid, cellname, value, iRow, iCol){
				var proper=jQuery("#PointPraList").jqGrid("getRowData", iRow).name;
				
				
			
			
				jQuery("#PointPraList").setColProp('value',{editable:true,edittype:'text',editoptions:{value:value,maxlength:20} });
				return value;
			},
			beforeSubmitCell : function(rowid,celname,value,iRow,iCol) { 
				//alert(/sd/);
				var type=leftpoly.clickshape.TYPE;
				var name=leftpoly.clickshape.nameStr;
				var bkcolor="#999999";
				var nrcolor="#FFFFFF";
				var proper=jQuery("#PointPraList").jqGrid("getRowData", iRow).name;
				var propervalue=value;
			
				
				if(proper=='名称'){
					
					setPointText(leftpoly.clickshape,value);
					leftpoly.clickshape.nameStr=value;
					platform.draw();
				}
				var z={					
					proID : $("#proID").val(),
					type:type,//元素点的类型
					name:name,
					proper:proper,
					newValue:value					
					};
				return  z;
				
				} ,
			caption: "属性列表",
			jsonReader: {//读取后端json数据的格式
				root: "nodePropers",//保存详细记录的名称
				total: "total",//总共有多少页
				page: "page",//当前是哪一页
				records: "records",//总共记录数
				repeatitems: false
			},
		});
	  	

	this.polys = new Array;
	this.imgobj=new Array;
	this.polyGroups = new Array;
	this.connectionPoints = new Array;
	this.radiusL=5;
	this.polyhight=30;
	this.polywidth=30;
	this.polylineLength=20;
	this.textHeight=20;
	this.lpoints=[ 0, 0, -this.polylineLength, 0];
	this.rpoints=[ 0, 0, this.polylineLength, 0];
	//画布显示时，加大了线的长度
	this.polylineLengthPainting=40;
	this.lpointsPainting=[ 0, 0, -this.polylineLengthPainting, 0];
	this.rpointsPainting=[ 0, 0,this.polylineLengthPainting, 0];
/*	this.polys[0] = new Kinetic.Line({
		x : 5,
		y : 20,
		points : [ 0, 0, 90, 0, 90, 10, 0, 10 ],
		fill : '#00D2FF',
		stroke : 'black',
		strokeWidth : 2,

		name : 'test1',
		closed : true
	});
*/  

	
	this.addPoint=function(type,name,p){
		var proID=$("#proID").val();
		 
		 
        $.ajax({ 
            type: "POST", 
            url: "addNodeByGUI.action",
            data: {
            	proID:proID,				
            	basicNodeID:type,
            	nodeNameStr:name
			 }, 
			 success : function(data) {
            		if(data['msg']==null||data['msg']==""){
            			p.ids=data['re'];
            		}else{
            			alert(data['msg']);
            			p.destroy();
            		}
            } 
          }); 
	}	
	
	this.addConnect=function(type,name,p){
		var proID=$("#proID").val();
		 
		 
        $.ajax({ 
            type: "POST", 
            url: "addEdgeByGUI.action",
            data: {
            	proID:proID,		
            	edgeName:name
			 }, 
			 success : function(data) {
            		if(data['msg']==null||data['msg']==""){
            			p.ids=data['re'];
            		}else{
            			alert(data['msg']);
            			p.destroy();
            		}
            } 
          }); 
	}	
	
	this.delPoint=function(id){
		var proID=$("#proID").val();	
		
        $.ajax({ 
            type: "POST", 
            url: "delNode.action",
            data: {
            	proID:proID,
				
				
				
				id:id
			 }, 
			 success : function(data) {
            		if(data['msg']==null||data['msg']==""){
            			//p.destroy();
            		}else{
            			alert(data['msg']);
            			
            		}
            } 
          }); 
	}	
	this.delConnect=function(id){
		var proID=$("#proID").val();	
		
        $.ajax({ 
            type: "POST", 
            url: "delEdge.action",
            data: {
            	proID:proID,
				
				
				
				id:id
			 }, 
			 success : function(data) {
            		if(data['msg']==null||data['msg']==""){
            			//p.destroy();
            		}else{
            			alert(data['msg']);
            			
            		}
            } 
          }); 
	}	
	this.updateLines=function(g){
		var proID=$("#proID").val();
		var tid=-1;
		var sid=-1
		if(checkSpecial(g)){
			for(var i=0;i<g.rightConnArray.length;i++){
				 rline=g.rightConnArray[i];
				 this.updateConnect(rline.ids,g.ids,-1);
				}
			for(var i=0;i<g.leftConnArray.length;i++){
				 lline=g.leftConnArray[i];
				 this.updateConnect(lline.ids,-1,g.ids);
				}
			
		}
		if(checkLinked(g)){
			rg=g.rightConnArray.pop();
			lg=g.leftConnArray.pop();
			if(rg!=null&&rg.ids!=0){
				tid=rg.ids;
			}
			if(lg!=null&&lg.ids!=0){
				sid=lg.ids;
			}
			this.updateConnect(g.ids,sid,tid);
			
		}
		
         
	}
	this.releaseLines=function(g){
		var tid=-1;
		var sid=-1
		if(checkSpecial(g)){
			var tempR=getRightPoint(g);
			tempR.fill('red');
			for(var i=0;i<g.rightConnArray;i++){
				 rline=g.rightConnArray[i];
				 this.updateConnect(rline.ids,0,-1);
				}
			for(var i=0;i<g.leftConnArray;i++){
				 lline=g.leftConnArray[i];
				 this.updateConnect(lline.ids,-1,0);
				}
			
		}
		if(checkLinked(g)){	
			var tempL=getLeftPoint(g);
			var tempR=getRightPoint(g);
			tempR.fill('red');
			tempL.fill('red');
			
			this.updateConnect(g.ids,0,0);			
		}
		
         
	}
	this.updateConnect=function(id,sid,tid){		
		$.ajax({ 
            type: "POST", 
            url: "updateEdge.action",
            data: {
            	id:id,
            	sourceID:sid,
            	targetID:tid,
			 }, 
			 success : function(data) {
            		if(data['msg']==null||data['msg']==""){
            			
            		}else{
            			alert(data['msg']);
            			p.destroy();
            		}
            } 
          });		
	}
	this.imgLoad = function (url,type,id,i){
		
		this.imgobj[i] = new Image();
	
	    if (this.imgobj[i].complete) {
	        this.createIMG(this.imgobj[i],type,id,i);
	        platform.leftDraw();
	   } else {
	    	
	    	this.imgobj[i].onload = function () {	    		
	    		 //alert('get');
	    		//leftpoly.imgobj[i].src = url;
	    		leftpoly.createIMG(leftpoly.imgobj[i],type,id,i);
	 	        leftpoly.imgobj[i].onload = null;
	        	//alert('in');
	 	       
	        };
	    };
	    //setTimeout("leftpoly.imgobj["+i+"].src = "+url+";",1000); 
	    this.imgobj[i].src = url;
	};
	this.createIMG = function (img,type,id,i){
		
		leftpoly.polys[i] = new Kinetic.Image({
		    x: 35,
		    y: 10+i*60,
		    image: img,
		    width: this.polywidth,
		    name : type,
		    height:this.polyhight
		  });
		leftpoly.polys[i].nameid=id;
		
	}

	this.getImgage=function (g){
		name=g.name();
		index=name.substr(4,1);
		return this.imgobj[index];
	}
	this.reloadIMG=function(){
		for ( var k=0;k<this.polys.length;k++) {
		this.polys[k].setImage(this.imgobj[k]);
		}
		
	}
	this.init = function() {
		var urllist=[];
		var typelist=[];
		var idlist=[];
        $.ajax({ 
            type: "POST", 
            url: "listBasicNodeTypes.action",
            async: false, //改成同步的，也就是Ajax请求完毕，将urllist填充完了再执行下面的程序。
            success: function(data){ 
            		pointTypeList=data.basicNodes;
            		$.each(pointTypeList, function( index, pointType ) {         			
            			//leftpoly.imgLoad(pointType.path,index); //这里用this.imgLoad会提示不存在，改成这样也不行，可能imgLoad里面包含的函数无法调用，但全部改成具体对象.方法 还是不行，浏览器不报错。
            			url="../uploadICONS/"+pointType.iconFile;          				
            			urllist.push(url);
            			typelist.push(pointType.typeName);
            			idlist.push(pointType.id);
            	    	 }); 
            } 
          }); 

        /*
         * 管道
         * */
      
        urllist.push("../uploadICONS/guandao.png");
		typelist.push("管道");
		idlist.push(0);
        for(var j = 0, l = urllist.length; j < l; j++ ){
        	this.imgLoad( urllist[j],typelist[j],idlist[j],j);
        }
	/*	for(var i=0;i<6;i++){
			this.imgLoad('editor/icons/type'+i+'.svg',i);
		}*/
        //this.polys.push(this.polys[0]);
		for ( var k=0;k<this.polys.length;k++) {
			
			this.polyGroups[k] = new Kinetic.Group({
				x : this.polys[k].x(),
				y : this.polys[k].y(),
				name:this.polys[k].name(),
				draggable : true

			});
			this.polyGroups[k].TYPE=this.polys[k].nameid;
			var lineLeft = new Kinetic.Line({
				x : 0,
				y : this.polyhight/2,
				points : 	this.lpoints.concat(),
				 
				 stroke : 'black',
				strokeWidth : 3,

				name : 'lineLeft',
				closed : true
				
			});
			var lineRight = new Kinetic.Line({
				x : this.polywidth,
				y : this.polyhight/2,
				 points : this.rpoints.concat(),
				
				 stroke : 'black',
				strokeWidth : 3,

				name : 'lineRight',
				closed : true
			});
			var connPointsLeft = new Kinetic.Circle({
				x : 0-this.polylineLength,
				y : this.polyhight/2,

				radius : this.radiusL,
				fill : 'red',
				stroke : 'black',
				name : 'connPointsLeft',
				strokeWidth : 2
			});
			var connPointsRight = new Kinetic.Circle({
				x : this.polywidth+this.polylineLength,
				y : this.polyhight/2,
				name : 'connPointsRight',
				radius : this.radiusL,
				fill : 'red',
				stroke : 'black',
				strokeWidth : 2
			});
			var text = new Kinetic.Text({
				  x: -this.polylineLength,
				  y: this.polyhight+5,//55,
				  text: this.polys[k].name(),
				  name:'textLabel',
				  fontSize: 12,
				  width:this.polylineLength+this.polylineLength+this.polywidth,
				  height:this.textHeight,
				  align:'right',
				  fontFamily: '宋体',
				  fill: 'black'
				});
			text.align('center');
			this.polys[k].x(0);
			this.polys[k].y(0);
			this.polyGroups[k].add(this.polys[k]);
			this.polyGroups[k].add(text);
			this.polyGroups[k].basicid=this.polys[k].nameid;
			this.lock=false;
			
		
	
			if(checkSpecial(this.polyGroups[k])){
				this.polyGroups[k].add(lineRight);
				this.polyGroups[k].add(connPointsRight);
				
				this.initPoint(this.polyGroups[k]);
				continue;
			}
			if(checkLinked(this.polyGroups[k])){
				this.polyGroups[k].add(lineRight);
				this.polyGroups[k].add(connPointsRight);
				this.polyGroups[k].add(lineLeft);
				this.polyGroups[k].add(connPointsLeft);	
				this.initPoint(this.polyGroups[k]);
				continue;
			}
			
			
		}
		//pipeInit();
	}
	this.initPoint = function(point){
		
		point.dragBoundFunc(this.dragFun);
		
		point.on('click', this.clickFunc);
//		point.on('dblclick', this.dbclickFun);
		point.on('dragend', this.cloneFun);
		point.on('mousedown touchstart', this.cloneFun2);
		point.on('mouseover', function() {
			document.body.style.cursor = 'pointer';
		});
		point.on('mousemove', function() {
			//alert(/xss/);
		});
		point.on('mouseout', function() {
			document.body.style.cursor = 'default';
		});
	}
	/*
	 * 检查点是否在矩形区域里面
	 */

	// var platform=null;
	this.dragFun = function(pos) {

		if(platform.selectPainting==null){
			alert("您需要打开或新建一个工程");
			return {
				x : this.getAbsolutePosition().x,
				y : this.getAbsolutePosition().y
			};
		}
		
		if (checkPoint(pos, platform.centerlayer)) {		
			if((this.lock==null||this.lock==false)){

				platform.selectPainting.hasChange();		
				resizePoint(this);	
				return {
					x : pos.x,
					y : pos.y
				};
			}else{
				platform.selectPainting.hasChange();				
				dis={
						x:(this.getAbsolutePosition().x-pos.x)/platform.selectPainting.scaleN,
						y:(this.getAbsolutePosition().y-pos.y)/platform.selectPainting.scaleN
					}
				
				l=getLeftLine(this);
				lc=getLeftPoint(this);
				lch=getLeftPointHide(this);
				r=getRightLine(this);
				rc=getRightPoint(this);
				poly=getPoly(this);	
				if(checkSpecial(this)){
					this.setAbsolutePosition(pos);					
					movePoint(rc,dis,this.rotation());					
					drawLine(r,dis,this.rotation());	
								
				}else{
				if(l!=null&&lc.fill()!='red'){
					this.setAbsolutePosition(pos);	
					//logD('一次移动');
					//logD('lch.x:'+lch.x()+' y:'+lch.y());
					//logD('lc.x:'+lc.x()+' y:'+lc.y());
					movePoint(lc,dis,this.rotation());
					//lc.move(point);
					//logD('move to lc.x:'+lc.x()+' y:'+lc.y());
					//logD('');
					drawLine(l,dis,this.rotation());					
				}				
				if(r!=null&&rc.fill()!='red'){
					this.setAbsolutePosition(pos);	
					movePoint(rc,dis,this.rotation());
					drawLine(r,dis,this.rotation());
				}	
				}
				//platform.draw();
				return {
					x : this.getAbsolutePosition().x,
					y : this.getAbsolutePosition().y
				};
			}
			
		}
		return {
			x : this.getAbsolutePosition().x,
			y : this.getAbsolutePosition().y
		};
	};
/*	this.addPointByInput=function(po,name){
		if(name==null||name==''){
			po.destroy();
		}
		po.nameStr=name;
		po.id(name);
		setPointText(po,name);
		po.moveTo(platform.selectPainting.p);
		if(checkSpecial(po)){
			po.rotate(90);
			leftpoly.addPoint(po.TYPE,name,po);
			
		}else{
			leftpoly.addConnect(po.TYPE,name,po);
		}
		
		platform.selectPainting.hasChange();
		poss = checkConn(po);
		if (poss != null) {
			po.lock=true;
			po.x((po.x() - (poss.x/platform.selectPainting.scaleN)));
			po.y((po.y() - (poss.y/platform.selectPainting.scaleN)));
			leftpoly.updateLines();
			
			
		}
		
		platform.draw();
	}*/
	this.cloneFun = function(e) {

		var userPos = platform.stage.getPointerPosition();
		if (platform.selectPainting!=null &&checkPoint(userPos, platform.centerlayer))// 如果在中间画布上面

		{	showConnect(this);
			if (this.getParent() != platform.selectPainting.p) {

				this.x((this.x() - platform.selectPainting.mx)
						/ platform.selectPainting.scaleN);
				this.y((this.y() - platform.selectPainting.my)
						/ platform.selectPainting.scaleN);
				//this.id(getTimeByS());
				
				
											
						var name=prompt("请输入元件名称","");
						//leftpoly.addPointByInput(this,name);
					
					var po=this;
					if(name==null||name==''){
						po.destroy();
					}
					po.nameStr=name;
					po.id(name);
					setPointText(po,name);
					po.moveTo(platform.selectPainting.p);
					
					if(checkSpecial(po)){
						po.rotate(90);
						leftpoly.addPoint(po.TYPE,name,po);
						
					}else{
						leftpoly.addConnect(po.TYPE,name,po);
					}
					
					platform.selectPainting.hasChange();
					
			}
			
			poss = checkConn(this);
			if (poss != null) {
				this.lock=true;
				this.x((this.x() - (poss.x/platform.selectPainting.scaleN)));
			    this.y((this.y() - (poss.y/platform.selectPainting.scaleN)));
				
				
				
			}
			//leftpoly.showALLConnedPoints();
		} else {
			if(platform.selectPainting!=null){
			this.destroy();// 不在中间画布就摧毁
			}

		}
		//checkConn(this);
		//leftpoly.showALLConnedPoints();
		platform.draw();

	};

	this.cloneFun2 = function(e) {

		if (e.type == 'mousedown'
				&&platform.selectPainting!=null &&this.getLayer()!= platform.selectPainting.p) {
			
			var cloneOfItem = this.clone();
			//hideConnection(this);
			
			//hideConnection(cloneOfItem);
			// cloneOfItem.off('mousedown touchstart');
			platform.leftlayer.add(cloneOfItem);
			cloneOfItem.basicid=this.basicid;
			leftpoly.polyGroups[leftpoly.searchPointIndex(this)]=cloneOfItem;
			
		}
		if (e.type == 'dragend') {

		}

	};
	this.searchPointIndex=function(g){
		for(var i=0;i<leftpoly.polyGroups.length;i++){
			if(leftpoly.polyGroups[i]==g){
				return i;
			}
		}
	}
	var TimeFn=null;
	this.dbclickFun = function(e) {
		if (e.type == 'dblclick') {
			// 取消上次延时未执行的方法
		    clearTimeout(TimeFn);//单击事件
		    //双击事件的执行代码
			$("#contextmenu").hide();
			var clickshape = e.target.getParent();
			ids=clickshape.ids;
			point_type=clickshape.TYPE;
			leftpoly.clickshape=clickshape;
		// 当前位置弹出菜单（div）
			var attrtop=this.getAbsolutePosition().y + 100;
			var attrleft=this.getAbsolutePosition().x + 90;		
			pro_id=$(".active > input[name='proID']").val();
			showPrameter(ids,pro_id,point_type,attrtop,attrleft);									
			platform.selectPainting.p.draw();
			
		}

	};

	this.flag = 0;
	this.clickFunc = function(e) {
		if (e.type == 'click') {

			// 取消上次延时未执行的方法
		    clearTimeout(TimeFn);
		    var clickshape = e.target.getParent();
			var point_name=clickshape.id();
			var point_type=clickshape.TYPE;
			var proID=$("#proID").val();
			leftpoly.clickshape=clickshape;
			// 当前位置弹出菜单（div）
			var attrtop=this.getAbsolutePosition().y+260;//300
			var attrleft=this.getAbsolutePosition().x + 250;//450
			var flagin = leftpoly.flag;// 当前序列
			leftpoly.flag++;
			/* 右键菜单处理 */
			$("#contextmenu a").click(
					function() {
						if (flagin != leftpoly.flag - 1) {
							return;
						}		
						var text = $(this).text();
						if (text == '进入站点') {		
							if(point_type=='type5'){
								platform.selectPainting.hasChange();	
								fProID=$(".active > input[name='proID']").val();
//								if(pro_id=null){
//									pro_id=$(".active > input[name='fproID']").val();
//								}
								tabtools.loadSubPro(point_name,fProID);
							}
							
							$("#contextmenu").hide();		
							platform.draw();
						} else if (text == '解除锁定') {		
							clickshape.lock=false;	
							platform.selectPainting.hasChange();	
							$("#contextmenu").hide();	
							leftpoly.releaseLines(clickshape);
							platform.selectPainting.p.draw();
						} else	if (text == '删除该节点') {
							leftpoly.releaseLines(clickshape);
							if(checkSpecial(clickshape)){
								leftpoly.delPoint(clickshape.ids);
							}else{
								leftpoly.delConnect(clickshape.ids);
							}
							platform.selectPainting.hasChange();		
							clickshape.destroy();
							$("#contextmenu").hide();		
							platform.draw();
						} else if (text == '更改颜色') {
							node.style.fillStyle = Math.floor(Math.random() * 250)
									+ "," + Math.floor(Math.random() * 250) + ","
									+ Math.floor(Math.random() * 250);
						} else if (text == '顺时针旋转90°') {
							if(clickshape.lock){
								alert('控件已锁定，无法旋转');
							}else{
								platform.selectPainting.hasChange();	
							clickshape.rotate(90);
							// centerlayer.draw(this);
							platform.selectPainting.p.draw();
							}
						} else if (text == '逆时针旋转90°') {
							if(clickshape.lock){
								alert('控件已锁定，无法旋转');
							}else{
								platform.selectPainting.hasChange();	
							clickshape.rotate(-90);
							// centerlayer.draw(this);
							platform.selectPainting.p.draw();
							}
						} else if (text == '放大') {
							clickshape.scale({
								x : clickshape.scaleX() * 2,
								y : clickshape.scaleY()
							});
							platform.selectPainting.p.draw();
						} else if (text == '缩小') {
							clickshape.scale({
								x : clickshape.scaleX() / 2,
								y : clickshape.scaleY()
							});
							platform.selectPainting.p.draw();
						}else if (text == '属性') {
							
							if(checkSpecial(clickshape)){
								platform.selectPainting.hasChange();	
								$("#contextmenu").hide();
								//pro_id=$(".active > input[name='proID']").val();
								showPrameter(point_name,proID,point_type,attrtop,attrleft);									
								platform.selectPainting.p.draw();
							}
							$("#contextmenu").hide();
							platform.selectPainting.p.draw();
						}if (text == '输出属性') {
							
							$("#contextmenu").hide();
							//pro_id=$(".active > input[name='proID']").val();
							showPrameterOut(point_name,proID,point_type,attrtop,attrleft);									
							platform.selectPainting.p.draw();
						}else if (text == '管道图示') {
							if(point_type=='管道'){	
								$("#contextmenu").hide();
								//pro_id=$(".active > input[name='proID']").val();
								leftpoly.pipeName=point_name;
								leftpoly.pipeProID=proID;
								leftpoly.pipeAlgID=algID;
								showPipe(point_name,proID,algID,attrtop,attrleft);									
								platform.selectPainting.p.draw();
								
							}
							
						}
						//hideALLConnPoints();					
						// $("#contextmenu").hide();
					});
			var shapes = clickshape.getChildren(function(node){
				 if(node.name()!='connPointsRight'){
					 return node;				 
				 }
				});//找出元件group中除了连接点外的真正的图形
			$("#contextmenu").css("position","absolute");
			$("#contextmenu").css({				
				top : clickshape.getAbsolutePosition().y+150,//300
				left : clickshape.getAbsolutePosition().x + 150,//450
			});
			
		    //执行延时
		    TimeFn = setTimeout(function(clickshape){
		        //do function在此处写单击事件要执行的代码		    	
				$("#contextmenu").show();
		    },300);
		}
	};
	unlockConnects=function(g){

	}
	getConnectedStatus=function(g){
		
	}
	this.showALLConnPoints = function() {
		var points = platform.getAllChildren();
		for (i1 = 0; i1 < points.length; i1++) {
			showConnect(points[i1]);

		}
		platform.draw();
		platform.setConnShowed(true);
	}
/*	this.showALLConnedPoints = function() {
		var points = platform.getAllChildren();
		for (i1 = 0; i1 < points.length; i1++) {
			var right=getRightPoint(points[i1]);
			var left=getLeftPoint(points[i1]);
			if (right!=null) right.fill('red');
			if (left!=null) left.fill('red');
			points[i1].lock=false;
		}
		for (i1 = 0; i1 < points.length; i1++) {
			checkConn(points[i1]);
		}
		
	}*/
/*	hideALLConnPoints = function() {//隐藏所有连接点
		points = platform.getAllChildren();
		for (i1 = 0; i1 < points.length; i1++) {
			hideConnection(points[i1]);
		}
		platform.draw();
		platform.setConnShowed(false);
	}*/
	showConnect = function(g) {

		var tempArray = g.getChildren(function(node) {
			return node.getName() == 'connPointsLeft'
					|| node.getName() == 'connPointsRight'
		});
		for(var i=0;i<tempArray.length;i++){
			tempArray[i].show();
		
		}
		
		g.draw();
	}
	hideConnection = function(g) {
		tempArray = g.getChildren(function(node) {
			return node.getName() == 'connPointsLeft'
					|| node.getName() == 'connPointsRight'
		});
		for(var i=0;i<tempArray.length;i++){
			tempArray[i].hide();
		
		}

	}
	
	/*
	 * 检查控件之间连接关系
	 */
	checkConn = function(g) {
		var flag=0;
		var re=null;
		if(checkLinked(g)){
			var leftCir=getLeftPoint(g);
			var rightCir=getRightPoint(g);
			var points = platform.getAllChildren();
			var re=null;
			g.leftConnArray=new Array();
			g.rightConnArray=new Array();			
			var points = platform.getAllChildren();
			
			for (li = 0; li < points.length; li++) {
				if(checkLinked(points[li])){
					continue;
				}
				var tempR=getRightPoint(points[li]);
				if (leftCir.fill()=="red"&&checkCircle(leftCir, tempR,leftpoly.radiusL*platform.selectPainting.scaleN*2)) {
					g.lock=true;
					g.leftConnArray.push(points[li]);
					points[li].lock=true;
					tempR.fill('yellow');
					leftCir.fill('yellow');
					flag=1;
					re= {							
							x : leftCir.getAbsolutePosition().x
									- tempR.getAbsolutePosition().x,
							y : leftCir.getAbsolutePosition().y
									- tempR.getAbsolutePosition().y
						};
					
				}
				if (rightCir.fill()=="red"&&checkCircle(rightCir, tempR,leftpoly.radiusL*platform.selectPainting.scaleN*2)) {
					g.lock=true;
					g.rightConnArray.push(points[li]);
					points[li].lock=true;
					tempR.fill('yellow');
					rightCir.fill('yellow');
					flag=1;
					re= {							
							x : rightCir.getAbsolutePosition().x
									- tempR.getAbsolutePosition().x,
							y : rightCir.getAbsolutePosition().y
									- tempR.getAbsolutePosition().y
						};
				}
			}
			if(flag==1){
				leftpoly.updateLines(g);
			}
		}
		if(checkSpecial(g)){
			var rightCir=getRightPoint(g);
			var points = platform.getAllChildren();
			var re=null;
			g.leftConnArray=new Array();
			g.rightConnArray=new Array();
			for (li = 0; li < points.length; li++) {
				if(checkSpecial(points[li])){
					continue;
				}
				var tempL=getLeftPoint(points[li]);
				var tempR=getRightPoint(points[li]);
				
				if (rightCir.fill()=="red"&&checkCircle(rightCir, tempL,leftpoly.radiusL*platform.selectPainting.scaleN * 2)) {
					g.lock=true;
					g.rightConnArray.push(points[li]);
					points[li].lock=true;
					tempL.fill('yellow');
					rightCir.fill('yellow');	
					flag=1;
					re= {							
							x : rightCir.getAbsolutePosition().x
									- tempL.getAbsolutePosition().x,
							y : rightCir.getAbsolutePosition().y
									- tempL.getAbsolutePosition().y
						};
				}
				if (rightCir.fill()=="red"&&checkCircle(rightCir, tempR,leftpoly.radiusL*platform.selectPainting.scaleN * 2)) {
					g.lock=true;
					g.leftConnArray.push(points[li]);
					points[li].lock=true;
					tempL.fill('yellow');
					rightCir.fill('yellow');	
					flag=1;
					re= {							
							x : rightCir.getAbsolutePosition().x
									- tempR.getAbsolutePosition().x,
							y : rightCir.getAbsolutePosition().y
									- tempR.getAbsolutePosition().y
						
				};
			
				}
				}
			if(flag==1){
				leftpoly.updateLines(g);
			}
			
		}
		return re;
	}


	/*
	 * 属性编辑列表
	 */
	 showPrameter=function(ids,pro_id,type,attrtop,attrleft){

		 $("#tempStr1").val(type);
		 $("#tempStr2").val(ids);
		 var proID=$("#proID").val();

		
		jQuery("#PointPraList").jqGrid("setGridParam", {
			 url: "listNodePropers.action", //设置表格的url 
			 datatype: "json", //设置数据类型 
			postData : {
				proID : proID,
				type:type,//元素点的类型
				nodeID:ids
			}
		}).trigger("reloadGrid");
		
		$("#pointPra").css({
			top :attrtop,
			left : attrleft,
		}).show();	
		
	 }

		 		
	
}

