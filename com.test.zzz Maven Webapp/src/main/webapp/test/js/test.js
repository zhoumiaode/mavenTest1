function test(){
	var test="sss";
	var t="ss2222222";
	$.ajax({    
        async:true,    
        type: "POST",
        contentType:"application/json",
        url: "child/gift?td="+"你好",//注意路径       
        data:JSON.stringify({"id":"122333333","name":"其实"}),
        dataType:"json",    
        success:function(data){
        	
        	console.log(data);
        	alert("ssssdddd");
        },    
        error:function(data){    
            console.log(data); 
        }    
    });    
}
function conss(){
	var td="这是地址栏的参数";
	/*if(1){
		debugger;
	}*/
	console.log($("#fo").serialize());
	$.ajax({    
        async:false,   
        type: "POST",
        url: "child/hello?td="+td,//注意路径    
        data:$("#fo").serialize(),
        dataType:"json",    
        success:function(data){
        	alert("ajax请求成功");
        	console.log(data);
        	/*var name=data.name;
        	var id=data.id;
        	var list=data.list;
        	var list1=data.list1;
        	console.log(name);
        	console.log(id);
        	console.log(list);
        	console.log(list1);*/
        	if(1){
        		debugger;
        	}
        	$("#tt").hide();
        	var s="你哈";
        	var ssss=$("#pu").val();
        	console.log(ssss);
        	$("#pu").show();
        	$("#ttt").html(s);
        },    
        error:function(data){    
            alert("ajax请求失败");
        }    
    });    
}