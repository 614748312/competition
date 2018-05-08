<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
request.setAttribute("path", basePath);  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>作品添加</title>

<link rel="stylesheet" href="../css/add.css" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" media="screen" />

<!--编辑器-->
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link href="../dist/summernote.css" rel="stylesheet"/>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<script type="text/javascript" src="${path }js/ajaxfileupload.js"></script>  
	<body>
	<div>
		<p>添加作品</p>
        <div class="content" >
		   <form action="${path }admin/updateProducts" enctype="multipart/form-data">
		   	  <ul>
		   	  <li class="">
                     <label class="">作品id:</label>
                     <input class="" type="text" value="${products.products_id}" name="products_id"/>
                </li>
		   	  	  <li class="">
                     <label class="">作品的所属赛事:</label>
                     <input class="" type="text" value="${products.products_match}" name="products_match"/>
                </li>
                <li class="">
                     <label class="">作品名</label>
                     <input class="" type="text" value="${products.products_name}" name="products_name"/>
                </li>
                <li class="">
                     <label class="">作者</label>
                     <input class="" type="text" value="${products.products_author}" name="products_author"/>
                 </li>
               <li>
               	<label class="">图片:</label>
                    <input id="file1" name="file" type="file"  onchange="fileUpload();"/><i></i>
                </li>
                 <img src="${path }${products.pic_path}" id="pic" width="120px" border="0"/>
                <li><input id="picPath" name="pic_path" type="hidden" /></li>
                  <li>
                 	<label class="" style="font-weight:bolder;">比赛简介:<br>
                  	<textarea id="content" name="products_text" cols="100" rows="8" style="width:800px;height:400px;" >${products.products_text}</textarea></label>
                 </li>
                 <li >
                 	<label class=""></label>
                 	<button name=""  type="submit" class="determine" onclick="vs()" >确认</button>
                 </li>
             </ul>
          </form>
	    </div>
    </div>
	</body>	
<!-- 比赛名字字数超过提醒-->
<script type="text/javascript">
function vs(){
	if(("#picPath").val()==""){
		$("#picPath").val("${products.pic_path}");
		}
	alert("添加成功")
}
    function controlLen(){ 
    //获取input输入框元素 
    var inputText = document.getElementById('mytext').value; 
    if(inputText.length > 30){ 
        var text = inputText.substring(0,30); 
        document.getElementById('mytext').value = text;//从新设置input输入框的值 
        alert("最多输入30个字符"); 
    } 
} 
</script>
 <script type="text/javascript">
	function fileUpload() {
	var files = ['file1'];  //将上传三个文件 ID 分别为file2,file2,file3
	$.ajaxFileUpload( {
	url : 'fileUploadAction',     //用于文件上传的服务器端请求地址  
	secureuri : false,            //一般设置为false  
	fileElementId : files,        //文件上传空间的id属性  <input type="file" id="file" name="file" />  
	dataType : 'json',            //返回值类型 一般设置为json  
	success : function(data, status) {
	var fileNames = data.fileFileName; //返回的文件名 
	var filePaths = data.filePath;     //返回的文件地址 
	for(var i=0;i<data.fileFileName.length;i++){
	//将上传后的文件 添加到页面中 以进行下载											
	$("#pic").attr("src","${path }attached/"+filePaths[i]);	
	$("#picPath").val("attached/"+filePaths[i]);	
}
}
})
}
</script>
</html>
