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
<title>添加比赛</title>
<link rel="stylesheet" href="../css/borain-timeChoice.css">
<link rel="stylesheet" href="../css/add.css" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" media="screen" />
<!--时间-->
 <link rel="stylesheet" href="../css/borain-timeChoice.css">
 <script src="../js/borain-timeChoice.js"></script>
<!--编辑器-->
<link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="../kindeditor/plugins/code/prettify.css" />
<script charset="utf-8" src="../kindeditor/kindeditor.js"></script>
<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
<script charset="utf-8" src="../kindeditor/plugins/code/prettify.js"></script>
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<script type="text/javascript" src="../../js/ajaxfileupload.js"></script>
<script type="text/javascript">		
			KindEditor.ready(function(K) {
			var editor = K.create('textarea[id="content"]', {
				cssPath : '../kindeditor/plugins/code/prettify.css',
				uploadJson : '../kindeditor/jsp/upload_json.jsp',
				fileManagerJson : '../kindeditor/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterBlur : function() {
					this.sync();
					K.ctrl(document, 13, function() {
					K("form[name='ff']")[0].submit();
					});
					K.ctrl(this.edit.doc, 13, function() {
					K("form[name='ff']")[0].submit();
					});
					}
				});
				prettyPrint();
			});		
		</script>
	<body>
	<div class="matchs_add">
		<p>添加赛事</p>
        <div class="content" >
		   <form action="${path }admin/addMatch" enctype="multipart/form-data">
		   	  <ul>
		   	  	 <li >
                  	 <label >比赛活动时间:</label>
                     <input class="start-two" type="text" value="" name="match_time" />
                  </li>
		   	  	<li >
                  	 <label class="">作品提交截止时间:</label>
                     <input class="start" type="text" value="" name="lastsubmit_time"/>
                </li>
		   	  	<li class="">
                     <label class="">比赛名字:</label>
                     <input class="" id="mytext" onkeydown="controlLen();" type="text" value="" name="match_name"/>
                </li>
               <li>
               	<label class="">图片:</label>
                    <input id="file1" name="file" type="file"  onchange="fileUpload();"/><i></i>
                </li>
                 <img src="" id="pic" width="120px" border="0"/>
                <li><input id="picPath" name="match_picture" type="hidden" /></li>
                 <li class="">
                  	 <label class="">比赛简介:<br>
                  	 <textarea id="content" name="match_info" cols="100" rows="8" style="width:800px;height:400px;" ></textarea></label>
                 </li>
                <li >
                	<label class=""></label>
                 	<button name=""  type="submit" class="determine" onclick="vs()">确认</button>    	
                 </li>
             </ul>
          </form>
	    </div>
    </div>
	</body>
	<script>
//  level分为 YM YMD H HM 四个有效值，分别表示年月 年月日 年月日时 年月日时分,less表示是否不可小于当前时间。年-月-日 时:分 时为24小时制
//  为确保控件结构只出现一次，在有需要的时候进行一次调用。
    onLoadTimeChoiceDemo();
    borainTimeChoice({
        start:".start",
        end:".end",
        level:"H",
        less:true
    });
    borainTimeChoice({
        start:".start-two",
        end:"",
        level:"H",
        less:false
    });
</script>
<!-- 比赛名字字数超过提醒-->
<script type="text/javascript">
function vs(){
	alert("添加成功");
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
 