var idArr = [];
$(function(){
	idArr=creatTable();
	
});
function creatTable(){
	var datas = [{field: 'state',checkbox: true,sortable:false}, 
	             {field: 'id',title: 'ID',class: 'nodisplay',switchable:false}, 
					{field: 'name',title: '名称'},
					{field: 'sex',title: '性别'},
					{field: 'age',title: '年龄',
						 formatter:function(value,row,index){
						return [row.id].join("");
					}
					}
				];
	 var idArr = getBootTable("plantTable",datas,$("#basePath").val()+"user/select");
	 return idArr;
}

function getBootTable(tableId,datas,url){   
	$('#'+tableId).bootstrapTable({
		method: 'get',            //数据请求方式
		url:url,                  //数据请求地址
		cache: false,             //是否缓存
		pagination: true,         //是否分页
		striped: true,
		pageList: [1, 2, 5, 10],   
		toolbar:"#toolbar",
		sortable: false, //是否启用排序
		//sortOrder: "ID asc", //排序方式
		search: true,               //是否显示搜索框
		showColumns: false,          //是否显示筛选按钮
		showRefresh: true,          //是否显示刷新按钮
		//sidePagination:'server',
		//showExport: true,         //是否显示下载按钮（需table-export.js支持）
		clickToSelect: true,	       //点击行是否选中行首复选框
		maintainSelected:true,         //选中复选框，换页码后是否保存选中状态
		showToggle:true,
		showExport: true, 
		exportDataType: "all",
		exportTypes:['excel', 'xlsx'],  //导出文件类型
		exportOptions:{  
	           ignoreColumn: [0],  //忽略某一列的索引  
	           worksheetName: 'sheet1',  //表格工作区名称  
	       },  
		columns:datas,                 //处理数据的数组
		onCheck:function(row, $element){         //选中复选框获取id
			var index = $.inArray(row.id,idArr);
			if (index == -1)  idArr.push(row.id);			
		},
		onUncheck:function(row, $element){       //取消复选框移除id
			var index = $.inArray(row.id,idArr);
			if (index > -1)   idArr.splice(index, 1); 			
		},
		onCheckAll:function(rows){	       //选中全选复选框获取全部id		
			for(var i=0;i<rows.length;i++){
				var index = $.inArray(rows[i].id,idArr);
				if (index == -1)  idArr.push(rows[i].id);	
			}			
		},
		onUncheckAll:function(rows){      //取消全选框移除全部id
			for(var i=0;i<rows.length;i++){
				var index = $.inArray(rows[i].id,idArr);
				if (index > -1)   idArr.splice(index, 1); 		
			}				
		},
		responseHandler:function(res){       //返回数据
			return res;
		}
		
	});
	return idArr;               //返回点击复选框后获取的id组
}

function modal(){
	$("#modalTest").modal("show");
}

function del(){
	console.log(idArr);
}