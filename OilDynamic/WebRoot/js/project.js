
$(
	

	
	function() {
		
		
		$("li>input").blur(function() {
			alert("test");
			value=$(this).val();
			ID=$(this).siblings('input').val();
			alert(value+ID);
			$.ajax({
				type : 'POST',
				url : 'updateProInputs.action',
				data : {
					value:value,
					ID:ID
				},
				success : function(data) {
					alert('参数保存成功!');
			
					//$('#addAlgorithmInput_modal').modal('hide');
					//$("#AlgorithmInputList").trigger("reloadGrid");			
				},
				error:function(msg){
					alert(msg);
					//$('#addAlgorithmInput_modal').modal('hide');
					//$("#AlgorithmList").trigger("reloadGrid");
				}
			});
		});
		
		list_project();
		

	
}//function结束
);//$()结束

/*
 * 打开工程列表
 */
function list_project(){
	/*
	 * 工程管理列表
	 */
	var datagrid = jQuery("#ProjectList")
	.jqGrid(
			{
				url : "listAlgPro.action",// 后端的数据交互程序，改为你的
				datatype : "json",// 前后交互的格式是json数据
				mtype : 'POST',// 交互的方式是发送httpget请求						
				postData : {
					algID :$("#curAlgID").val()				
				},
				colNames : [ '编号','算法ID','算法', '名称', '描述','作者','添加时间','最后运行时间','运行状态','输入文件导出','输出文件导出','打开'],// 表格的列名
				colModel : [
						{
							name : 'ID',
							index : 'ID',
							width : 50,
							align : "center",
							sortable:true,
							sorttype:'int'
						},// 每一列的具体信息，index是索引名，当需要排序时，会传这个参数给后端
						{
							name : 'algID',
							index : 'algID',
							width : 150,
							align : "center",
							sortable:true,
							sorttype:'int',
							hidden:true
						},
						{
							name : 'algName',
							index : 'algName',
							width : 150,
							align : "center",
							sortable:true,
							sorttype:'int'
						},
						{
							name : 'name',
							index : 'name',
							width : 150,
							align : "center",
							sortable:true
						},
						{
							name : 'description',
							index : 'Description',
							width : 50,
							align : "center",
							sortable:true
						},
						{
							name : 'author',
							index : 'Author',
							width : 100,
							align : "center",
							sortable:true
						},
						{
							name : 'addTimes',
							index : 'AddTimes',
							width : 150,
							align : "center",
							
							sortable:true
						},
						{
							name:'lastCalcTimes',
							index:'LastCalcTimes',
							width:150,
							align:'center',
							sortable:true
						},
						{
							name:'statusS',
							index:'statusS',
							width:100,
							align:'center',
							sortable:true
						},
						{				
							name : 'ProfileIn',
							index : 'ProfileIn',
							width : 100,
							align : "center",					
							formatter : function(value, grid, rows,
									state) {
//								alert(rows.ID);
								return "<a href=\"javascript:void(0)\" style=\"color:#798991\" onclick=\"location.href='"
										+ rows.profileIn + "'\">输入导出</a>"
							}
						},
						{				
							name : 'ProfileOut',
							index : 'ProfileOut',
							width :100,
							align : "center",
							formatter : function(value, grid, rows) {
								//alert(value);
								//var z=32;showData
//								alert(value);exportInputExcel ExcelProject/
								return "<a href=\"javascript:void(0)\" style=\"color:#798991\" onclick=\"location.href='"
										+ rows.profileOut + "'\">输出导出</a>";
							}
						},
						{				
							name : 'open',
							index : 'open',
							width : 100,
							align : "center",
							formatter : function(value, grid, rows,
									state) {
//								alert(rows.ID);
								return "<a href=\"javascript:void(0)\" style=\"color:#798991\" onclick=\"openProject("
										+ rows.ID+","+rows.algID + ")\">打开</a>"
							}
						}
						],
//				autowidth:true,
				rowNum:10,//每一页的行数
				height: 'auto',
				width:1070,
				rowList:[10,20,30],
				pager: '#ProjectPager',
				sortname: 'ID',
				viewrecords: true,
				sortorder: "desc",
				multiselect: true,  //可多选，出现多选框 
			    multiselectWidth: 35, //设置多选列宽度 
				jsonReader: {//读取后端json数据的格式
					root: "dataList",//保存详细记录的名称
					total: "total",//总共有多少页
					page: "page",//当前是哪一页
					records: "records",//总共记录数
					repeatitems: false
				},
				caption: "工程管理"//表格名称
				
			});
	
	datagrid.jqGrid('navGrid','#ProjectPager',{
		edit : false,
		add : false,
		search:false,
		del : false}).jqGrid('navButtonAdd',"#ProjectPager",{
				title:'删除',
				caption:"删除",	
				id:"delete_ProjectList",
				onClickButton:deleteProject,
				position:"first"
			}).jqGrid('navButtonAdd',"#ProjectPager",{
				title:'新建',
				caption:"新建",
				id:"add_ProjectList",
				onClickButton : function addModal(){
						//createNewProject();	
						openProjectModal();
				},
				position:"first"
			
		
			});
}
