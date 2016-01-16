var proID=0;
$(
	

	
	function() {
		
		
		
		
		list_project();
		

	
}//function结束
);//$()结束


function list_project(nodeid){
	/*
	 * 节点管理列表
	 */
	var datagrid = jQuery("#projectList")
	.jqGrid(
			{
				url : "listGraphiProjects.action",// 后端的数据交互程序，改为你的
				datatype : "json",// 前后交互的格式是json数据
				mtype : 'POST',// 交互的方式是发送httpget请求					
				
				colNames : ['编号','名称','作者','创建时间','最后修改时间','打开'],// 表格的列名
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
							name : 'proName',
							index : 'proName',
							width : 100,
							align : "center",
							sortable:true,
							editable:true,
							 editor:'text',
							sorttype:'int'
						},
						
						{
							name : 'authorName',
							index : 'authorName',
							width : 50,
							align : "center",
							sortable:true
						},
						{
							name : 'createTime',
							index : 'createTime',
							width : 70,
							align : "center",
							 formatter:'date',
							   formatoptions: {srcformat:'Y-m-d H:i:s',newformat:'Y-m-d H:i:s'},
							sortable:true
						},
						
						{
							name : 'modifyTime',
							index : 'modifyTime',
							width : 70,
							align : "center",
							 formatter:'date',
							   formatoptions: {srcformat:'Y-m-d H:i:s',newformat:'Y-m-d H:i:s'},
							sortable:true
						},
						
						{
							name : 'open',
							index : 'open',
							width : 50,
							align : "center",
							formatter : function(value, grid, rows,
									state) {
								
//								alert(rows.ID);
								return "<a href=\"javascript:void(0)\" style=\"color:#798991\" onclick=\"openProject("
										+ rows.id+ ","+rows.proName+")\">打开</a>"
										
							},
							sortable:true
						}
						
				
						],
//				autowidth:true,
				rowNum:10,//每一页的行数
				height: 'auto',
				width:950,
				rowList:[10,20,30],
				cellEdit:true,
				cellsubmit : 'remote',
				cellurl : 'modifyGraphiProjects.action',				
				beforeSubmitCell : function(rowid,celname,value,iRow,iCol) { 
					var index_ID=$("#projectList").jqGrid("getRowData", iRow).id;
					var colModels=$("#projectList").jqGrid('getGridParam','colModel');
					var p=colModels[iCol].name;
					var z={
							id:index_ID,				
							proper:p,
							value:value					
						};
					return  z;
					
					} ,
				pager: '#projectPager',
				sortname: 'ID',
				viewrecords: true,
				sortorder: "desc",
				multiselect: true,  //可多选，出现多选框 
			    multiselectWidth: 35, //设置多选列宽度 
				jsonReader: {//读取后端json数据的格式
					root: "projects",//保存详细记录的名称
					total: "total",//总共有多少页
					page: "page",//当前是哪一页
					records: "records",//总共记录数
					repeatitems: false
				},
				caption: "项目管理"//表格名称
				
			});
	
	
	$("#projectList").jqGrid('navGrid', '#projectPager', {
		
		add : true,
		edit : false,
		del : false
	},{},{
		addCaption: "添加属性",
		url:'addGraphiProject.action',
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
					proName:posdata['proName'],
					authorID:1,
					id:0
			}
			return data; 
			},
			afterSubmit : function(response, postdata) 
			{ 
	
				//alert(/xs/);
				alert("添加成功！");

				return [true,"",""] 
			}
	}).jqGrid('navButtonAdd',"#projectPager",{
				title:'删除',
				caption:"删除",	
				id:"delete_Project2",
				onClickButton:deleteProject2,
				position:"first"
			});
}


function deleteProject2() {
    var sels = $("#projectList").jqGrid('getGridParam','selarrrow'); 
    if(sels==""){ 
       //$().message("请选择要删除的项！"); 
       alert("请选择要删除的项!");
    }else{ 
    	var selectedIDs={};
    	for(var i in sels){
    	  var rowData = $("#projectList").jqGrid("getRowData", sels[i]);
      	   selectedIDs["ids[" + i + "]"]=rowData.id;
    	}
    	

       if(confirm("您是否确认删除？")){ 
        $.ajax({ 
          type: "POST", 
          url: "delGraphiProjects.action", 
          data: selectedIDs, 
          
          
          success: function(msg){ 
        	alert("删除成功！");
			$("#projectList").trigger("reloadGrid");
               if(msg!=0){ 
                   var arr = msg.split(','); 
                   $.each(arr,function(i,n){ 
                         if(arr[i]!=""){ 
                             $("#projectList").jqGrid('delRowData',n);  
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

function openProject(proid,proname){
	$.cookie('proid',proid);
	$.cookie('proname',proname);
	location.href="modules/project-edit.jsp?proid="+proid+"&proname="+proname;
	proID=proid;
}