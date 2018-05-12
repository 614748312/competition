<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>萍院“互联网+”大赛</title>
		<link rel="stylesheet" href="<%=basePath%>/css/base/index.css" />
		<link rel="stylesheet" href="<%=basePath%>/css/base/bootstrap.css" />
        <link rel="stylesheet" href="<%=basePath%>/css/base/login-register.css" />
	</head>
	<body>
		<div class="top">
			 <div class="logo_icon">
			 	<div class="icon1"></div>
			 	<div><a href="index.jsp"><img src="./img/logo.png" height="30" width="300" class="name"></a></div>
			 </div>
			 <div class="nav_menu">
		     	 <ul style="list-style:none;" >
			       <li> <a href="${path }findAllTypeProductsForShow"><img src="img/nav1.png" width="100" ></a></li>
			        <li><a href="Award.jsp"><img src="img/nav2.png" width="100"></a></li>
			       <s:if test="#session.tel==null">
			       <li> <a data-toggle="modal" onclick="openLoginModal();">
			        <img src="img/nav3.png" width="100" >
			        </a></li>
			       <li> <a data-toggle="modal" onclick="openLoginModal();">
			        <img src="img/nav6.png" width="100">
			        </a></li>
			       <li> <a data-toggle="modal"  onclick="openLoginModal();">
			        <img src="img/nav4.png" width="60"  id="aab">
			        </a></li>
			       <li> <a data-toggle="modal" onclick="openRegisterModal();">
			        <img src="img/nav5.png" width="60">
			        </a></li>
			        </s:if>
			         <s:else>
			        <li> <a href="${path }findUserProductsForShow"><img src="img/nav3.png" width="100" ></a></li>
			        <li> <a href="contest.jsp"><img src="img/nav6.png" width="100"></a></li>		  
			        <li><img  src="img/2.png" width="60" id="aaa"></li>
                    <li><h3 style="color:white;">${session.tel}</h3>            
                    <li id="b"><a href="logout.action" style="font-size:23px;color:white;">注销</a></li>
	                </s:else>	
			        </ul>        
			 </div>
		</div>
		
     <div class="container">
      		 <div class="modal fade login" id="loginModal">
		      <div class="modal-dialog login animated">
    		      <div class="modal-content">     
                       <div class="modal-body">                     
                        <div class="box">
                             <div class="content">                       
                                <div class="form loginBox">
                                	<div class="login-header" align="center" > <h1>登陆</h1></div>
                                    <input id="username" class="form-control" type="text" placeholder="请输入账号" name="tel">
                                    <input id="password" class="form-control" type="password" placeholder="请输入密码" name="password">
                                    <input class="btn btn-default btn-login" type="submit" value="登陆" onclick="check('username','password')">
                                </div>	
                                
                            </div>
                        </div>
                        
                        
                        <!--注册框内的内容-->
                        <div class="box">
                            <div class="content registerBox" >
                             <div class="form">
                             	<div class="login-header" align="center" > <h1>注册</h1></div>
                                <form method="post" action="reg" name="myForm" onsubmit="return validateForm()">
                                <input id="username" class="form-control" type="text" placeholder="账号*请输入6到11位数字*" name="tel">
                                <input id="password" class="form-control" type="password" placeholder="密码 *以字母开头，长度在6~18之间*" name="password">
                                <input id="password_confirmation" class="form-control" type="password" placeholder="重复密码" name="password_confirmation">
                                <input class="btn btn-default btn-register " type="submit" value="注册">
                                </form>
                                </div>
                                
                            </div>
                        </div>

                    </div>
                    
                    
                    <div class="modal-footer">
                        <div class="forgot login-footer">
                            <span>
                                 <a href="javascript: showRegisterForm();">进行注册</a>
                            ?</span>
                        </div>
                        <!--注册的底部，达到跳转到登陆界面的作用-->
                        <div class="forgot register-footer" style="display:none">
                             <span>已经有了一个账号?</span>
                             <a href="javascript: showLoginForm();">登陆</a>
                        </div>
                        
                    </div>        
    		      </div>
		      </div>
		  </div>
    </div>
        <script type="text/javascript" src="<%=basePath%>/js/jquery.min.js" ></script>
		<script type="text/javascript" src="<%=basePath%>/js/bootstrap.js" ></script>
		<script type="text/javascript" src="<%=basePath%>/js/login-register.js" ></script>
		<script type="text/javascript">
		function check(userid,passwordid) { 
		    var username = document.getElementById(userid).value;  
		    var password = document.getElementById(passwordid).value;  
		    if (username.length == 0) {  
		        alert("用户名不能为空");  
		    } else if (password.length == 0) {  
		    	alert("密码不能为空");
		    }else if(username.length != 0 && password.length != 0){  
		        //ajax(user,password);  
		        if(!(/(^[1-9]\d*$)/.test(username))){  
		            document.getElementById("inform").innerHTML="用户名含有非法字符";//有其他字母或者符号型字符的存在  
		        }else{  
		           user=parseInt(username);
		            ajax(user,password);  
		        }  
		          
		    }  
		}  
		function createXMLhttp() {  
		    var xmlhttp;  
		    if (window.XMLHttpRequest)  
		    {  
		        //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码  
		        xmlhttp=new XMLHttpRequest();  
		    }  
		    else  
		    {  
		        // IE6, IE5 浏览器执行代码  
		        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
		    }  
		    return xmlhttp;  
		}
		function ajax(user,password) {  
			console.log("sss");
		    var xmlhttp = createXMLhttp();
		    //发送向指定url发送Ajax请求  
		    var sendData = "Username="+user+"&Password="+password+"&t="+Math.random();//添加Math.random（）后缀消除缓存  
		    var url = "log?"+sendData;  
		    xmlhttp.open("GET",url,true);  
		    xmlhttp.send();  
		    //当请求得到响应时，执行的逻辑  
		    xmlhttp.onreadystatechange=function(){  
		        if (xmlhttp.readyState==4 && xmlhttp.status==200)  
		        {  
		            var logindata = JSON.parse(xmlhttp.responseText);  
		            if(logindata.checkResult == null){  
		                alert("该用户不存在");  
		            }else if (logindata.checkResult == true) {  
		                window.location.href="index.jsp";  
		                //alert("done");  
		            }else if (logindata.checkResult == false){  
		            	alert("密码输入错误");
		            }  
		              
		        }  
		    }  
		   
		}  
		</script>
	</body>
</html>
