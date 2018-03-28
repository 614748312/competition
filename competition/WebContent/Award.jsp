<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
	
		<title>获奖动态</title>
		<link rel="stylesheet" href="<%=basePath%>/css/base/my.css" />
		<link rel="stylesheet" href="<%=basePath%>/css/base/index.css" />
		<link rel="stylesheet" href="<%=basePath%>/css/base/bootstrap.css" />
	  
	</head>
	<body>
	    <div class="nava"></div>
	    <div class="myinfo_center1">
	      <div class="myinfo_left">
	          <h2>关于第四届中国“互联网+”大学生创新创业获奖情况详情</h2>
	          <p>发布时间:2018-01-01</p>
          
	      </div>
	      <div class="myinfo_right">
						<div><a href="javascript:void(0);" class="thumbnail">
	                      <img src="img/58f827499f333_1024.png" alt="">
	                    </a></div>
	                	<div><a href="javascript:void(0);" class="thumbnail">
	                      <img src="img/58f827499f333_1024.png" alt="">
	                    </a></div>				
		 		
		 </div>
		 </div>
    
		<div class="bottom"></div>
	</body>
	 <script type="text/javascript" src="<%=basePath%>/js/jquery.min.js" ></script>
     <script type="text/javascript" src="<%=basePath%>/js/index.js" ></script>
</html>
