function chec(){
	bootbox.confirm("你确定发送吗", function(result) {
		 if(result) {
				test();
				
	    }else{
	    	
	    }
	})
}

function test(){
	var name="mike";
	$.ajax({    
        async:false,    
        type: "POST",
        url:$("#basePath").val()+"child/box?name="+name,//注意路径       
        dataType:"json",    
        success:function(data){
        	var code=data.code;
        	if(code=="000"){
        		Msg(data.msg);
        	}       	
        },    
        error:function(data){    
            console.log(data); 
        }    
    });    
}
function Msg(msg){
	BootstrapDialog.show({
	    title: '系统提示',
	    message: msg
	});
}
function Msg(){
	BootstrapDialog.show({
	    title: '系统提示',
	    message: "你好"
	});
}

function modal(){
	$("#modalTest").modal("show");
}

function add(){
	var name=$("#name").val();
	console.log(name);
;	console.log($("#addTest").serialize());
	$.ajax({    
        async:false,    
        type: "POST",
        url:$("#basePath").val()+"child/modal",//注意路径
        data:$("#addTest").serialize(),
        dataType:"json",    
        success:function(data){
        	$("#modalTest").modal("hide");
        	var code=data.code;
        	if(code=="000"){
        		Msg(data.msg);
        	}       	
        },    
        error:function(data){    
            console.log(data); 
        }    
    });    
}

function ff(){
	console.log("11");
	$.ajax({    
        async:false,    
        type: "POST",
        
        url:$("#basePath").val()+"user/select",//注意路径
        dataType:"json",    
        success:function(data){  	
        	console.log(data
        			);
        },    
        error:function(data){    
            console.log(data); 
        }    
    });    
}