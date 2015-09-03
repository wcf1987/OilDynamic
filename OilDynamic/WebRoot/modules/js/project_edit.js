
$(function(){
		
	var nodeTypes={};
	var allNodes={};

	//alert($.cookie('proname'));
	$("#h3proname").html($.cookie('proname')+"项目");
	loadNodeTypes();
	loadNodes($.cookie('proid'));
	listnodes($.cookie('proid'));
		
	listedge($.cookie('proid'));

function loadNodeTypes(){
	$.ajax({ 
        type: "POST", 
        url: "listBasicNodeTypes.action",  
      
        async:false,
        
        success: function(data){ 
			var temp=data.basicNodes;
			for(var i in temp){				
		    	  var name=temp[i].typeName;
		    	  nodeTypes[temp[i].id]=name;
		    	  
		    	}
        } 
      }); 
	
}

function loadNodes(proid){
		$.ajax({ 
	        type: "POST", 
	        url: "listAllNodes.action",  
	        data : {
				proID : proid					
			}, 

	        async:false,
	        
	        success: function(data){ 
				var temp=data.nodes;
				for(var i in temp){				
			    	  var name=temp[i].nodeNameStr;
			    	  allNodes[temp[i].id]=name;
			    	  
			    	}
	        } 
	      }); 
		
	}
/*
 * 打开节点列表
 */
function listnodes(proid){
	/*
	 * 节点管理列表
	 */
	
	var datagrid = jQuery("#vertexList")
	.jqGrid(
			{
				url : "listNodes.action",// 后端的数据交互程序，改为你的
				datatype : "json",// 前后交互的格式是json数据
				mtype : 'POST',// 交互的方式是发送httpget请求					
				postData : {
					proID : proid					
				}, 
				colNames : [ '编号','节点类型编号','节点名称','节点类型','经度','纬度','大地坐标X','大地坐标Y','相对坐标x','相对坐标y','打开'],// 表格的列名
				colModel : [
						{
							name : 'id',
							index : 'id',
							width : 50,
							align : "center",
							sortable:true,
							
							sorttype:'int'
						},// 每一列的具体信息，index是索引名，当需要排序时，会传这个参数给后端
						
						{
							name : 'basicNodeID',
							index : 'basicNodeID',
							width : 50,
							align : "center",
							sortable:true,
							hidden:true,
							sorttype:'int'
						},
						{
							name : 'nodeNameStr',
							index : 'nodeNameStr',
							width : 150,
							align : "center",
							 editor:'text',
							 editable:true,
							sortable:true
						},
						{
							name : 'typeName',
							index : 'typeName',
							width : 50,
							align : "center",
							editable:true,
							 edittype:"select",
							 editoptions:{value:nodeTypes},
							sortable:true
						},
						
						{
							name : 'latitude',
							index : 'latitude',
							width : 150,
							align : "center",
							editable:true,
							 editor:'text',
							sortable:true
						},
						{
							name : 'longitude',
							index : 'longitude',
							width : 150,
							align : "center",
							editable:true,
							 editor:'text',
							sortable:true
						},
						{
							name : 'x_location_geo',
							index : 'x_location_geo',
							width : 150,
							align : "center",
							editable:true,
							 editor:'text',
							sortable:true
						},
						{
							name : 'y_location_geo',
							index : 'y_location_geo',
							width : 150,
							align : "center",
							editable:true,
							 editor:'text',
							sortable:true
						},
						{
							name : 'x_location',
							index : 'x_location',
							width : 150,
							align : "center",
							editable:true,
							 editor:'text',
							sortable:true
						},
						{
							name : 'y_location',
							index : 'y_location',
							width : 150,
							align : "center",
							editable:true,
							 editor:'text',
							sortable:true
						},
						{				
							name : 'open',
							index : 'open',
							width : 100,
							align : "center",
							formatter : function(value, grid, rows,
									state) {
//								alert(rows.ID);
								return "<a href=\"javascript:void(0)\" style=\"color:#798991\" onclick=\"openproper("
										+ rows.id+ ")\">属性编辑</a>"
							}
						}
						],
//				autowidth:true,
				rowNum:10,//每一页的行数
				height: 'auto',
				width:900,
				rowList:[10,20,30],
				cellEdit:true,
				cellsubmit : 'remote',
				cellurl : 'modifyNodes.action',				
				beforeSubmitCell : function(rowid,celname,value,iRow,iCol) { 
					var index_ID=$("#vertexList").jqGrid("getRowData", iRow).id;
					var colModels=$("#vertexList").jqGrid('getGridParam','colModel');
					var p=colModels[iCol].name;
					if(p=='typeName'){
						p='basicNodeID'
					}
					var z={
							id:index_ID,				
							proper:p,
							value:value					
						};
					return  z;
					
					} ,
				pager: '#vertextPager',
				sortname: 'id',
				viewrecords: true,
				sortorder: "desc",
				multiselect: true,  //可多选，出现多选框 
			    multiselectWidth: 35, //设置多选列宽度 
				jsonReader: {//读取后端json数据的格式
					root: "nodes",//保存详细记录的名称
					total: "total",//总共有多少页
					page: "page",//当前是哪一页
					records: "records",//总共记录数
					repeatitems: false
				},
				caption: "项目管理"//表格名称
				
			});
	
	$("#vertexList").jqGrid('navGrid', '#vertextPager', {		
		add : true,
		edit : false,
		del : false
	},{},{
		addCaption: "添加属性",
		url:'addNode.action',
		width:500,
		left:500,
		height:400,
		top:20,
		editCaption: "Edit Record",
		bSubmit: "提交",
		bCancel: "取消",
		bClose: "Close",
		saveData: "Data has been changed! Save changes?",
		bYes : "Yes",
		bNo : "No",
		closeAfterAdd:true,
		closeOnEscape:true,
		bExit : "Cancel",
		onclickSubmit : function(params, posdata) { 
			
			data={		
					basicNodeID:posdata['typeName'],
					proID:proid,
					id:1
			}
			return data; 
			},
			afterSubmit : function(response, postdata) 
			{ 
	
				//alert(/xs/);
				return [true,"",""] 
			}
	});
	$("#vertexList").jqGrid('navButtonAdd',"#vertextPager",{
				title:'删除',
				caption:"删除",	
				id:"delete_nodes",
				onClickButton:deleteNodes,
				position:"first"
			});
}


/*
 * 删除项目
 */
function deleteNodes() {
    var sels = $("#vertexList").jqGrid('getGridParam','selarrrow'); 
    if(sels==""){ 
       //$().message("请选择要删除的项！"); 
       alert("请选择要删除的项!");
    }else{ 
    	var selectedIDs={};
    	for(var i in sels){
    	  var rowData = $("#vertexList").jqGrid("getRowData", sels[i]);
      	   selectedIDs["ids[" + i + "]"]=rowData.id;
    	}
    	

       if(confirm("您是否确认删除？")){ 
        $.ajax({ 
          type: "POST", 
          url: "delNodes.action", 
          data: selectedIDs, 
          beforeSend: function() { 
              
          }, 
          error:function(){ 
              
          }, 
          
          success: function(msg){ 
        	alert("删除成功！");
			$("#vertexList").trigger("reloadGrid");
             
          } 
        }); 
       } 
    } 
}



function listedge(proid){
	/*
	 * 节点管理列表
	 */
	var datagrid = jQuery("#edgeList")
	.jqGrid(
			{
				url : "listEdges.action",// 后端的数据交互程序，改为你的
				datatype : "json",// 前后交互的格式是json数据
				mtype : 'POST',// 交互的方式是发送httpget请求					
				postData : {
					proID : proid
					
				}, 
				colNames : [ '编号','基本节点编号','连接名称','源节点名称','目的节点名称','源节点编号','目的节点编号','项目编号'],// 表格的列名
				colModel : [
						{
							name : 'id',
							index : 'id',
							width : 50,
							align : "center",
							sortable:true,
						
							sorttype:'int'
						},// 每一列的具体信息，index是索引名，当需要排序时，会传这个参数给后端
						{
							name : 'basicNodeID',
							index : 'basicNodeID',
							width : 50,
							align : "center",
							sortable:true,
							hidden:true,
							sorttype:'int'
						},
						{
							name : 'edgeName',
							index : 'edgeName',
							width : 100,
							align : "center",
							 editor:'text',
							 editable:true,
							sortable:true
						},
						{
							name : 'sourceName',
							index : 'sourceName',
							width : 150,
							align : "center",
							editable:true,
							 edittype:"select",
							 editoptions:{value:allNodes},
							sortable:true
						},
						{
							name : 'targetName',
							index : 'targetName',
							width : 150,
							align : "center",
							editable:true,
							 edittype:"select",
							 editoptions:{value:allNodes},
							sortable:true
						},
						{
							name : 'sourceid',
							index : 'sourceid',
							width : 100,
							align : "center",

							hidden:true,
							sortable:true
						},
						{
							name : 'targetName',
							index : 'targetName',
							width : 100,
							align : "center",

							hidden:true,
							sortable:true
						},
						{
							name : 'proID',
							index : 'proID',
							width : 50,
							align : "center",

							hidden:true,
							sortable:true
						}
						
				
						],
//				autowidth:true,
				rowNum:10,//每一页的行数
				height: 'auto',
				width:900,
				rowList:[10,20,30],
				cellEdit:true,
				cellsubmit : 'remote',
				cellurl : 'modifyEdge.action',				
				beforeSubmitCell : function(rowid,celname,value,iRow,iCol) { 
					var index_ID=$("#edgeList").jqGrid("getRowData", iRow).id;
					var colModels=$("#edgeList").jqGrid('getGridParam','colModel');
					var p=colModels[iCol].name;
					if(p=='sourceName'){
						p="sourceID";
					}
					if(p=='targetName'){
						p="targetID";
					}
						
					var z={
							id:index_ID,				
							proper:p,
							value:value					
						};
					return  z;
					
					} ,
				pager: '#edgePager',
				sortname: 'ID',
				viewrecords: true,
				sortorder: "desc",
				multiselect: true,  //可多选，出现多选框 
			    multiselectWidth: 35, //设置多选列宽度 
				jsonReader: {//读取后端json数据的格式
					root: "edges",//保存详细记录的名称
					total: "total",//总共有多少页
					page: "page",//当前是哪一页
					records: "records",//总共记录数
					repeatitems: false
				},
				caption: "项目管理"//表格名称
				
			});
	
	
	$("#edgeList").jqGrid('navGrid', '#edgePager', {
		
		add : true,
		edit : false,
		del : false
	},{},{
		addCaption: "添加属性",
		url:'addEdge.action',
		width:500,
		left:500,
		height:200,
		top:20,
		editCaption: "Edit Record",
		bSubmit: "提交",
		bCancel: "取消",
		bClose: "Close",
		saveData: "Data has been changed! Save changes?",
		bYes : "Yes",
		bNo : "No",
		closeAfterAdd:true,
		closeOnEscape:true,
		bExit : "Cancel",
		onclickSubmit : function(params, posdata) { 
			
			data={
					sourceID:posdata['sourceName'],
					targetID:posdata['targetName'],
					basicNodeID:0,
					proID:proid,
					id:1
			}
			return data; 
			},
			afterSubmit : function(response, postdata) 
			{ 
	
				//alert(/xs/);
				return [true,"",""] 
			}
	}).jqGrid('navButtonAdd',"#edgePager",{
				title:'删除',
				caption:"删除",	
				id:"delete_propertyProper",
				onClickButton:deletePropertyProper,
				position:"first"
			});
}


function deletePropertyProper() {
    var sels = $("#edgeList").jqGrid('getGridParam','selarrrow'); 
    if(sels==""){ 
       //$().message("请选择要删除的项！"); 
       alert("请选择要删除的项!");
    }else{ 
    	var selectedIDs={};
    	for(var i in sels){
    	  var rowData = $("#edgeList").jqGrid("getRowData", sels[i]);
      	   selectedIDs["ids[" + i + "]"]=rowData.id;
    	}
    	

       if(confirm("您是否确认删除？")){ 
        $.ajax({ 
          type: "POST", 
          url: "delBasicNodesProper.action", 
          data: selectedIDs, 
          beforeSend: function() { 
               $().message("正在请求..."); 
          }, 
          error:function(){ 
               $().message("请求失败..."); 
          }, 
          
          success: function(msg){ 
        	alert("删除成功！");
			$("#edgeList").trigger("reloadGrid");
               if(msg!=0){ 
                   var arr = msg.split(','); 
                   $.each(arr,function(i,n){ 
                         if(arr[i]!=""){ 
                             $("#edgeList").jqGrid('delRowData',n);  
                         } 
                   }); 
                   $().message("已成功删除!"); 
               }else{ 
                   $().message("操作失败！"); 
               } 
          } 
        }); 
       } 
    } 
}
})
