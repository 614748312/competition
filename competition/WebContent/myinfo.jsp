<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>个人信息</title>
  <link rel="stylesheet" href="./css/myinfo/base.css" type="text/css" />
  <link rel="stylesheet" href="./css/myinfo/moco.min.css" type="text/css" />
  <link rel="stylesheet" href="./css/myinfo/profile-less.css" type="text/css" />
  <link rel="stylesheet" href="./css/base/index.css" />
  <link rel="stylesheet" href="./css/base/bootstrap.css" />
</head>
<body >
<div class="nava"></div>
<div class="myinfo_center">
<div class="bg">
  <img src="./img/背景.png" width="950" height="400"/>
</div>
<div id="main">

  <div class="page-settings">
    <div class="top">
      <div class="w960 mauto top_title">
        <p>个人信息</p>
      </div>
    </div>
    <div class="setting pb10">
      <div class="nav-tabs pa">
        <a href="javascript:;" class="baseinfo fl active" id="a" onclick="a()">基本信息</a>
        <a href="javascript:;" class="countinfo fl" id="a1" onclick="a1()">报名信息</a>

        
      </div>
   <div class="contentBox">
      <div class="formBox">
          <div id="setting-profile" class="setting-wrap setting-profile">
          
            <form id="profile" >
              <div class="wlfg-wrap clearfix">
                <label class="label-name" for="nick" >昵称：</label>
                <div class="rlf-group">
                  <input type="text" name="nickname" id="nick"  autocomplete="off"  data-validate="require-nick"  class="moco-form-control" value="Sequin_YF" placeholder="请输入昵称."/>
                  <p class="rlf-tip-wrap errorHint color-red" ></p>
                </div>
              </div>


              <div class="wlfg-wrap clearfix">
                <label class="label-name h16 lh16" >性别：</label>
                <div class="rlf-group rlf-radio-group">
                  <label  class="lh16"><input type="radio" hidefocus="true" value="0"   name="sex">保密</label>
                  <label  class="lh16"><input type="radio" hidefocus="true" value="1"  name="sex">男</label>
                  <label  class="lh16"><input type="radio" hidefocus="true" value="2" checked="checked" name="sex">女</label>
                  <p class="rlf-tip-wrap errorHint color-red"></p>
                </div>
              </div>
              <div class="wlfg-wrap clearfix">
                <label class="label-name" for="aboutme">个性签名：</label>
                <div class="rlf-group">
                  <div class="pr">
                    <textarea name="aboutme"  id="aboutme"  rows="5" class="noresize js-sign moco-form-control"></textarea>
                    <p class="numCanInput js-numCanInput ">还可以输入128个字符</p>
                  </div>
                </div>
              </div>
               <div class="wlfg-wrap clearfix">
                <label class="label-name" for="aboutme">获奖情况：</label>
                <div class="rlf-group">
                  <div class="pr">
                    <textarea name="aboutme"  id="aboutme"  rows="5" class="noresize js-sign moco-form-control"></textarea>
                  </div>
                </div>
              </div>

              <div class="wlfg-wrap clearfix">
                <label class="label-name" for="profile-submit"></label>
                <div class="rlf-group">
                  <span id="profile-submit"  hidefocus="true"  aria-role="button" class="rlf-btn-green btn-block profile-btn">保存</span>
                </div>
              </div>
              
              
            </form>
            

          </div>
        </div>
      
      <div class="formBox1" style="display:none;">
       <form id="profile" >
              <div class="wlfg-wrap clearfix">
                <label class="label-name" for="nick" >姓名：</label>
                <div class="rlf-group">
                  <input type="text" name="nickname" id="nick"  autocomplete="off"  data-validate="require-nick"  class="moco-form-control" value="默认" placeholder="请输入昵称."/>
                  <p class="rlf-tip-wrap errorHint color-red" ></p>
                </div>
              </div>
       </form>
       <form id="profile" >
              <div class="wlfg-wrap clearfix">
                <label class="label-name" for="nick" >性别：</label>
                <div class="rlf-group">
                  <input type="text" name="nickname" id="nick"  autocomplete="off"  data-validate="require-nick"  class="moco-form-control" value="默认" placeholder="请输入昵称."/>
                  <p class="rlf-tip-wrap errorHint color-red" ></p>
                </div>
              </div>
       </form>
       <form id="profile" >
              <div class="wlfg-wrap clearfix">
                <label class="label-name" for="nick" >学院：</label>
                <div class="rlf-group">
                  <input type="text" name="nickname" id="nick"  autocomplete="off"  data-validate="require-nick"  class="moco-form-control" value="默认" placeholder="请输入昵称."/>
                  <p class="rlf-tip-wrap errorHint color-red" ></p>
                </div>
              </div>
       </form>
       <form id="profile" >
              <div class="wlfg-wrap clearfix">
                <label class="label-name" for="nick" >学号：</label>
                <div class="rlf-group">
                  <input type="text" name="nickname" id="nick"  autocomplete="off"  data-validate="require-nick"  class="moco-form-control" value="默认" placeholder="请输入昵称."/>
                  <p class="rlf-tip-wrap errorHint color-red" ></p>
                </div>
              </div>
       </form>
        <form id="profile" >
              <div class="wlfg-wrap clearfix">
                <label class="label-name" for="nick" >电话号码：</label>
                <div class="rlf-group">
                  <input type="text" name="nickname" id="nick"  autocomplete="off"  data-validate="require-nick"  class="moco-form-control" value="默认" placeholder="请输入昵称."/>
                  <p class="rlf-tip-wrap errorHint color-red" ></p>
                </div>
              </div>
       </form>
       
         <form id="profile" >
              <div class="wlfg-wrap clearfix">
                <label class="label-name" for="nick" >项目名称：</label>
                <div class="rlf-group">
                  <input type="text" name="nickname" id="nick"  autocomplete="off"  data-validate="require-nick"  class="moco-form-control" value="默认" placeholder="请输入昵称."/>
                  <p class="rlf-tip-wrap errorHint color-red" ></p>
                </div>
              </div>
       </form>
       </div>
   
   </div>
  </div>
</div>
</div>
</div>
<div class="bottom"></div>

</body>
<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/index.js" ></script>
</html>
