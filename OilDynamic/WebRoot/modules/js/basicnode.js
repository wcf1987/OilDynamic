
$(
	

	
	function() {
		
		
		
		
		list_property();
		

	
}//function结束
);//$()结束

/*
 * 打开基础节点列表
 */
function list_property(){
	/*
	 * 节点管理列表
	 */
	var datagrid = jQuery("#propertyList")
	.jqGrid(
			{
				url : "listBasicNodes.action",// 后端的数据交互程序，改为你的
				datatype : "json",// 前后交互的格式是json数据
				mtype : 'POST',// 交互的方式是发送httpget请求					
				
				colNames : [ '编号','类型编号','类型名称','图标名称','编辑属性'],// 表格的列名
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
							name : 'type',
							index : 'type',
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
							 editor:'text',
							sortable:true
						},
						
						{
							name : 'iconFile',
							index : 'iconFile',
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
								return "<a href=\"javascript:void(0)\" style=\"color:#798991\" onclick=\"openbasicproper("
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
				cellurl : 'modifyBasicNode.action',				
				beforeSubmitCell : function(rowid,celname,value,iRow,iCol) { 
					var index_ID=$("#propertyList").jqGrid("getRowData", iRow).id;
					var colModels=$("#propertyList").jqGrid('getGridParam','colModel');
					var p=colModels[iCol].name;
					var z={
							id:index_ID,				
							proper:p,
							value:value					
						};
					return  z;
					
					} ,
				pager: '#propertyPager',
				sortname: 'ID',
				viewrecords: true,
				sortorder: "desc",
				multiselect: true,  //可多选，出现多选框 
			    multiselectWidth: 35, //设置多选列宽度 
				jsonReader: {//读取后端json数据的格式
					root: "basicNodes",//保存详细记录的名称
					total: "total",//总共有多少页
					page: "page",//当前是哪一页
					records: "records",//总共记录数
					repeatitems: false
				},
				caption: "项目管理"//表格名称
				
			});
	
	datagrid.jqGrid('navGrid','#propertyPager',{
		edit : false,
		add : false,
		search:false,
		del : false}).jqGrid('navButtonAdd',"#propertyPager",{
				title:'删除',
				caption:"删除",	
				id:"delete_propertyList",
				onClickButton:deleteProperty,
				position:"first"
			}).jqGrid('navButtonAdd',"#propertyPager",{
				title:'新建',
				caption:"新建",
				id:"add_propertyList",
				onClickButton : function addModal(){
						//createNewProject();	
						openProjectModal();
				},
				position:"first"
			
		
			});
}

function openbasicproper(id){
	$('#add_propertyproper_modal').modal();
	//$('#list_project_modal').modal('hide');
	listbasicProper(id);
	$("#propertyProperList").jqGrid("setGridParam", {
		postData : {
			nodeID : id		
		}
	}).trigger("reloadGrid");
}
/*
 * 添加项目
 */
function openProjectModal(){
	$('#add_property_modal').modal();
	//$('#list_project_modal').modal('hide');
	createNewProject();
}
function createNewProject(){
	//loadAuthorOptions();//加载作者选项		
	$('#add_property_modal').modal();
	$("#addpropertyForm").validate({
		debug:true,
		onsubmit:true,
		onfocusout:false,
		onkeyup:true,
		rules:{
			name:{
				required:true
			}
		},
		messages:{
			type:{
				required:"名称不能为空！"
			},
			typeName:{
			required:"名称不能为空！"
		}
		},
		submitHandler:function(){
			add_property();
		}
		});
}
function add_property() {

	$.ajax({
		type : 'POST',
		url : 'addBasicNode.action',
		data : {
			FilePath:$("#filePath").val(),
			TypeName:$("#typeName").val(),
			Type : $("#type").val()
		},
		success : function(data) {

			alert('基本节点添加成功！');			
			//openProject(data.ID,$("#curAlgID").val());			

			$('#add_property_modal').modal('hide');
			$("#propertyList").trigger("reloadGrid");			
		},
		error:function(msg){
			alert(msg);
			$('#add_property_modal').modal('hide');
			$("#propertyList").trigger("reloadGrid");
		}
	});


	
	}
/*
 * 删除项目
 */
function deleteProperty() {
    var sels = $("#propertyList").jqGrid('getGridParam','selarrrow'); 
    if(sels==""){ 
       //$().message("请选择要删除的项！"); 
       alert("请选择要删除的项!");
    }else{ 
    	var selectedIDs={};
    	for(var i in sels){
    	  var rowData = $("#propertyList").jqGrid("getRowData", sels[i]);
      	   selectedIDs["ids[" + i + "]"]=rowData.id;
    	}
    	

       if(confirm("您是否确认删除？")){ 
        $.ajax({ 
          type: "POST", 
          url: "delBasicNodes.action", 
          data: selectedIDs, 
          beforeSend: function() { 
               $().message("正在请求..."); 
          }, 
          error:function(){ 
               $().message("请求失败..."); 
          }, 
          
          success: function(msg){ 
        	alert("删除成功！");
			$("#propertyList").trigger("reloadGrid");
               if(msg!=0){ 
                   var arr = msg.split(','); 
                   $.each(arr,function(i,n){ 
                         if(arr[i]!=""){ 
                             $("#propertyList").jqGrid('delRowData',n);  
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



function listbasicProper(nodeid){
	/*
	 * 节点管理列表
	 */
	var datagrid = jQuery("#propertyProperList")
	.jqGrid(
			{
				url : "listBasicNodesProper.action",// 后端的数据交互程序，改为你的
				datatype : "json",// 前后交互的格式是json数据
				mtype : 'POST',// 交互的方式是发送httpget请求					
				postData : {
					nodeID : nodeid
					
				}, 
				colNames : [ '所属节点编号','编号','属性名称','属性单位','属性默认值'],// 表格的列名
				colModel : [
						{
							name : 'id',
							index : 'id',
							width : 50,
							align : "center",
							sortable:true,
							hidden:true,
							sorttype:'int'
						},// 每一列的具体信息，index是索引名，当需要排序时，会传这个参数给后端
						{
							name : 'properid',
							index : 'properid',
							width : 50,
							align : "center",
							sortable:true,
							hidden:true,
							sorttype:'int'
						},
						
						{
							name : 'properName',
							index : 'properName',
							width : 100,
							align : "center",
							 editor:'text',
							 editable:true,
							sortable:true
						},
						{
							name : 'properUnit',
							index : 'properUnit',
							width : 100,
							align : "center",
							editable:true,
							 editor:'text',
							sortable:true
						},
						
						{
							name : 'properDefaultValue',
							index : 'properDefaultValue',
							width : 50,
							align : "center",
							editable:true,
							 editor:'text',
							sortable:true
						}
						
				
						],
//				autowidth:true,
				rowNum:10,//每一页的行数
				height: 'auto',
				width:550,
				rowList:[10,20,30],
				cellEdit:true,
				cellsubmit : 'remote',
				cellurl : 'modifyBasicNodeProper.action',				
				beforeSubmitCell : function(rowid,celname,value,iRow,iCol) { 
					var index_ID=$("#propertyProperList").jqGrid("getRowData", iRow).id;
					var colModels=$("#propertyProperList").jqGrid('getGridParam','colModel');
					var p=colModels[iCol].name;
					var z={
							id:index_ID,				
							proper:p,
							value:value					
						};
					return  z;
					
					} ,
				pager: '#propertyProperPager',
				sortname: 'ID',
				viewrecords: true,
				sortorder: "desc",
				multiselect: true,  //可多选，出现多选框 
			    multiselectWidth: 35, //设置多选列宽度 
				jsonReader: {//读取后端json数据的格式
					root: "nodePropers",//保存详细记录的名称
					total: "total",//总共有多少页
					page: "page",//当前是哪一页
					records: "records",//总共记录数
					repeatitems: false
				},
				caption: "项目管理"//表格名称
				
			});
	
	
	$("#propertyProperList").jqGrid('navGrid', '#propertyProperPager', {
		
		add : true,
		edit : false,
		del : false
	},{},{
		addCaption: "添加属性",
		url:'addBasicNodeProper.action',
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
					properName:posdata['properName'],
					properUnit:posdata['properUnit'],
					properDefaultValue:posdata['properDefaultValue'],
					ParentID:nodeid,
					id:1
			}
			return data; 
			},
			afterSubmit : function(response, postdata) 
			{ 
	
				//alert(/xs/);
				return [true,"",""] 
			}
	}).jqGrid('navButtonAdd',"#propertyProperPager",{
				title:'删除',
				caption:"删除",	
				id:"delete_propertyProper",
				onClickButton:deletePropertyProper,
				position:"first"
			});
}


function deletePropertyProper() {
    var sels = $("#propertyProperList").jqGrid('getGridParam','selarrrow'); 
    if(sels==""){ 
       //$().message("请选择要删除的项！"); 
       alert("请选择要删除的项!");
    }else{ 
    	var selectedIDs={};
    	for(var i in sels){
    	  var rowData = $("#propertyProperList").jqGrid("getRowData", sels[i]);
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
			$("#propertyProperList").trigger("reloadGrid");
               if(msg!=0){ 
                   var arr = msg.split(','); 
                   $.each(arr,function(i,n){ 
                         if(arr[i]!=""){ 
                             $("#propertyProperList").jqGrid('delRowData',n);  
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
/*
 * 加载算法下拉列表
 */
function loadAlgorithmOptions(){
	$.ajax({
		url:'listAlgorithmsCycle.action',
		type:'post',
		dataType:'json',
		data : {
			sidx: 'id',
			sord: "desc"
		},
		success:function(data){
			var items="";
			$.each(data.dataList,function(i,algorithm){
				items+= "<option value=\"" + algorithm.ID + "\">" + algorithm.name+" </option>"; 
			});
			$("#algorithmID").html(items);			
		}
	});
	}



