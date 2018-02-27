//上传文件插件必需
//用于给id
var count=1;
//用于存储礼品图片列表 
var imgUrls=new Array();
$(function(){
	var datas=$("#f1").serialize();
	console.log(datas);
	uploadGiftFile("attach","img"+count);
	uploadGiftFile1("guanggao","guanggaoImg"+count)
});


function uploadGiftFile(idStr,imgId){
	var url=$("#basePath").val()+'upload/uploadfile';
	console.log(url);
	$("#"+idStr).uploadify({
		method:"post",
		'uploader':url,
       'swf':$("#basePath").val()+'source/uploadify.swf',
       'preventCaching':true,
       'fileSizeLimit':"1MB",
       'fileObjName':'attach', //对应input中的value值
       'width':'80',
       'multi': false,  
       'fileTypeExts':"*.gif;*.jpeg;*.jpg;*.png;*.bmp;",
       'height':'35',
       'auto': true,
       'buttonText': "上传图片",
       'onUploadSuccess':function(file,data,response){
       		console.log(typeof data);
       		console.log(JSON.parse(data));
       		var data=JSON.parse(data);
       		var imgurl=$("#basePath").val()+data.filepath;
       		console.log(imgurl);
       		$("#"+imgId).attr("src",imgurl);
       		$("#imgname").val(data.filepath);
       		console.log($("#imgname").val());
       },
       'onSelectError': function (file, errorCode, errorMsg) {  
           switch (errorCode) {  
                  case -100:  
                      alertMsg("上传的文件数量已经超出系统限制的" + $('#'+idStr).uploadify('settings', 'queueSizeLimit') + "个文件!");  
                      break;  
                  case -110:  
                	  alertMsg("文件大小超出系统限制的" + $('#'+idStr).uploadify('settings', 'fileSizeLimit') + "大小!");  
                      break;  
                  case -120:  
                	  alertMsg("文件大小异常!");  
                      break;  
                  case -130:  
                	  alertMsg("上传文件类型不正确!<br>请上传:gif,jpeg,jpg,png,bmp,mp4!");  
                      break;  
               }  
        }
	});	
}

function uploadGiftFile1(idStr,imgId){
	var url=$("#basePath").val()+'upload/uploadfile1';
	console.log(url);
	$("#"+idStr).uploadify({
		method:"post",
		'uploader':url,
       'swf':$("#basePath").val()+'source/uploadify.swf',
       'preventCaching':true,
       'fileSizeLimit':"100MB",
       'fileObjName':'guanggao', //对应input中的value值
       'width':'80',
       'multi': false,  
       'fileTypeExts':"*.mp4;",
       'height':'35',
       'auto': true,
       'buttonText': "上传视频",
       'onUploadSuccess':function(file,data,response){
       		console.log(typeof data);
       		console.log(JSON.parse(data));
       		var data=JSON.parse(data);
       		var imgurl=$("#basePath").val()+data.filepath;
       		console.log(imgurl);
       		$("#"+imgId).attr("src",imgurl);
       		$("#imgname").val(data.filepath);
       		console.log($("#imgname").val());
       },
       'onSelectError': function (file, errorCode, errorMsg) {  
           switch (errorCode) {  
                  case -100:  
                      alertMsg("上传的文件数量已经超出系统限制的" + $('#'+idStr).uploadify('settings', 'queueSizeLimit') + "个文件!");  
                      break;  
                  case -110:  
                	  alertMsg("文件大小超出系统限制的" + $('#'+idStr).uploadify('settings', 'fileSizeLimit') + "大小!");  
                      break;  
                  case -120:  
                	  alertMsg("文件大小异常!");  
                      break;  
                  case -130:  
                	  alertMsg("上传文件类型不正确!<br>请上传:gif,jpeg,jpg,png,bmp,mp4!");  
                      break;  
               }  
        }
	});	
}


function ff(){
	$.ajax({    
        async:false,    
        type: "POST",
        url:$("#basePath").val()+"upload/uploadfile1",//注意路径
        data:$("#f1").serialize(),
        dataType:"json",    
        success:function(data){
        	console.log("11");
        },    
        error:function(data){    
            console.log(data); 
        }    
    });    
}




