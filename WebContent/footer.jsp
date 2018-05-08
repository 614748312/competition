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
		<title></title>
		<link rel="stylesheet" href="<%=basePath%>/css/base/index.css" />
	</head>
	<body>
		<div class="bottom">
			        <div class="logo_icon">
			 	      <div class="icon1"></div>
			 	      <div><img src="./img/logo.png" height="30" width="300" class="name"></div>
			        </div>
			        <div class="nav_menu">
			        <a href="index.jsp"><img src="img/footer1.png" width="100" class="menu1"></a>
			        <a href="index.jsp"><img src="img/footer2.png" width="100" class="menu2"></a>
			        <a href="index.jsp"><img src="img/footer3.png" width="100" class="menu3"></a>
			        <a href="index.jsp"><img src="img/footer4.png" width="100" class="footer1"></a>
			        <a href="login.jsp" class="admin">后台管理</a>
			 </div>
	    </div>
	</body>
</html>