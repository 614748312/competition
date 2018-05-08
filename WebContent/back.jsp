<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title></title>

		<link rel="stylesheet" href="<%=basePath%>/css/base/crowd.css" />
</head>
<body>
<header>
        <div class="bg">
            <canvas id="display"></canvas>
            <div id="blachole"></div>
        </div>

    </header>
	<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>/js/constellation.js"></script>
</body>
</html>