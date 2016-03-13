

		
		

	
function openproper(nodeid){
	
	$('#list_nodeproper_modal').modal();
	//$('#list_project_modal').modal('hide');
	listnodepropers(nodeid);
	
	$("#nodeProperList").jqGrid("setGridParam", {
		postData : {
			nodeID : nodeid		
		}
	}).trigger("reloadGrid");
}		
	
/*
 * 打开节点列表
 */
function listnodepropers(nodeid){
	/*
	 * 节点管理列表
	 */
	
	var datagrid = jQuery("#nodeProperList")
	.jqGrid(
			{
				url : "listNodePropers.action",// 后端的数据交互程序，改为你的
				datatype : "json",// 前后交互的格式是json数据
				mtype : 'POST',// 交互的方式是发送httpget请求					
				postData : {
					nodeID : nodeid					
				}, 
				colNames : [ '编号','属性名','属性值','属性单位'],// 表格的列名
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
							name : 'properName',
							index : 'properName',
							width : 50,
							align : "center",
							sortable:true,
							sorttype:'int'
						},
						{
							name : 'properValue',
							index : 'properValue',
							width : 50,
							align : "center",
							 editor:'text',
							 editable:true,
							sortable:true
						},
						{
							name : 'properUnit',
							index : 'properUnit',
							width : 50,
							align : "center",
							sortable:true
						}
						
					
						],
//				autowidth:true,
				rowNum:10,//每一页的行数
				height: 'auto',
				width:500,
				rowList:[10,20,30],
				cellEdit:true,
				cellsubmit : 'remote',
				cellurl : 'modifyNodePropers.action',				
				beforeSubmitCell : function(rowid,celname,value,iRow,iCol) { 
					var index_ID=$("#nodeProperList").jqGrid("getRowData", iRow).id;
					var colModels=$("#nodeProperList").jqGrid('getGridParam','colModel');
					var p=colModels[iCol].name;					
					var z={
							id:index_ID,				
							proper:p,
							value:value					
						};
					return  z;
					
					} ,
				pager: '#nodeProperPager',
				sortname: 'id',
				viewrecords: true,
				sortorder: "desc",
				jsonReader: {//读取后端json数据的格式
					root: "nodePropers",//保存详细记录的名称
					total: "total",//总共有多少页
					page: "page",//当前是哪一页
					records: "records",//总共记录数
					repeatitems: false
				},
				caption: "项目管理"//表格名称
				
			});
	
}
