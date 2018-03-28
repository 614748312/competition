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
		<link rel="stylesheet" href="<%=basePath%>/css/base/index.css" />
		<link rel="stylesheet" href="<%=basePath%>/css/base/bootstrap.css" />
		<title>赛事 新闻</title>
	</head>
	<body>
     <div class="nava"></div>
     <div class="contest_center">
         
		<div class="content-agileits">
			<h1 class="title">报名信息</h1>
			<div class="left1">
				<form action="#" method="post" data-toggle="validator">
					<div class="form-group">
						<label for="firstname" class="control-label">姓名:</label>
						<input type="text" class="form-control" id="firstname" placeholder="姓名" required>
					</div>
					<div class="form-group">
						<label for="lastname" class="control-label">学院:</label>
						<input type="text" class="form-control" id="name" placeholder="学院"  required>
					</div>
					<div class="form-group">
						<label for="inputEmail" class="control-label">学号:</label>
						<input type="text" class="form-control" id="number" placeholder="学号" required>
					</div>
					<div class="form-group">
						<label for="Phone" class="control-label">电话号码:</label>
						<input type="text" class="form-control" id="tel" placeholder="电话号码"  required>
					</div>
					<div class="form-group">
						<label for="inputPassword" class="control-label">比赛名称:</label>
						<input type="text" class="form-control" id="matchid" placeholder="比赛id" required>
					</div>
					<div class="form-group w3ls-opt">
						<label for="Phone" class="control-label">性别:</label>
						<label class="w3layouts">
							<input type="radio" name="work" id="hire" value="male" checked>男
						</label>
						<label class="w3layouts label2">
							<input type="radio" name="work" id="work" value="female">女
						</label>
					</div>
					<div class="form-group" id="submit-match">
						<button type="submit" class="btn btn-success btn-lg">报名参赛</button>
					</div>
				</form>
			</div>
			<div class="right1"></div>
		
		</div>
     
     </div>
   
     
     <div class="bottom"></div>
		<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>/js/index.js" ></script>
	</body>
</html>
