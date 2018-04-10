<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
	
		<title>获奖动态</title>
		<link rel="stylesheet" href="<%=basePath%>/css/base/index.css" />
		<link rel="stylesheet" href="<%=basePath%>/css/base/bootstrap.css" />
	  
	</head>
	<body>
	    <div class="nava"></div>
	    <div class="myinfo_center1">
	      <div class="myinfo_left">
	          <h2>网站作品展示</h2>
				 <div class="row">
						    <div class="col-sm-6 col-md-3">
						         <div class="thumbnail">
						             <img src="img/58f827499f333_1024.png" 
						             alt="通用的占位符缩略图">
						            <div class="caption">
						              <a href="#"><h3>项目名</h3></a>
						            </div>
						         </div>
						    </div>
						     <div class="col-sm-6 col-md-3">
						         <div class="thumbnail">
						             <img src="img/58f827499f333_1024.png" 
						             alt="通用的占位符缩略图">
						            <div class="caption">
						              <a href="#"><h3>项目名</h3></a>
						            </div>
						         </div>
						    </div>
						     <div class="col-sm-6 col-md-3">
						         <div class="thumbnail">
						             <img src="img/58f827499f333_1024.png" 
						             alt="通用的占位符缩略图">
						            <div class="caption">
						              <a href="#"><h3>项目名</h3></a>
						            </div>
						         </div>
						    </div>
						     <div class="col-sm-6 col-md-3">
						         <div class="thumbnail">
						             <img src="img/58f827499f333_1024.png" 
						             alt="通用的占位符缩略图">
						            <div class="caption">
						              <a href="#"><h3>项目名</h3></a>
						            </div>
						         </div>
						    </div>
						     
			    </div>
			    <a class="btn btn-primary btn-lg more">加载更多</a>
	     </div>
	      <div class="myinfo_right">
	                    <h2>获奖作品推荐</h2>
	                    <div class="section">
	                     <ul class="clearfix">			
						    <li>
							<div class="photo"><img src="img/58f827499f333_1024.png" width="200" height="210"/></div>
							<div class="rsp"></div>
							<div class="text"><a href="#"><h3>比赛名称</h3></a></div>
							</li>
							 <li>
							<div class="photo"><img src="img/58f827499f333_1024.png" width="200" height="210"/></div>
							<div class="rsp"></div>
							<div class="text"><a href="#"><h3>比赛名称</h3></a></div>
							</li>
							 <li>
							<div class="photo"><img src="img/58f827499f333_1024.png" width="200" height="210"/></div>
							<div class="rsp"></div>
							<div class="text"><a href="#"><h3>比赛名称</h3></a></div>
							</li>
							
						</ul>
						<div class="clear"></div>
	                    </div>
		 </div>
    </div>
		<div class="bottom"></div>
	</body>
	 <script type="text/javascript" src="<%=basePath%>/js/jquery.min.js" ></script>
     <script type="text/javascript" src="<%=basePath%>/js/index.js" ></script>
</html>
