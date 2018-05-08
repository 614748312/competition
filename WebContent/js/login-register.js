
function showRegisterForm(){
    $('.loginBox').fadeOut('fast',function(){
        $('.registerBox').fadeIn('fast');
        $('.login-footer').fadeOut('fast',function(){
            $('.register-footer').fadeIn('fast');
        });
        $('.modal-title').html('Register with');
    }); 
    $('.error').removeClass('alert alert-danger').html('');
       
}
function showLoginForm(){
    $('#loginModal .registerBox').fadeOut('fast',function(){
        $('.loginBox').fadeIn('fast');
        $('.register-footer').fadeOut('fast',function(){
            $('.login-footer').fadeIn('fast');    
        });
        
        $('.modal-title').html('Login with');
    });       
     $('.error').removeClass('alert alert-danger').html(''); 
}

function openLoginModal(){
    showLoginForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    $('#aa').css('display:none');
    
}
function openRegisterModal(){
    showRegisterForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    
}
function check(){	
	var tel=logform.tel.value;
	var password=logform.password.value;
	logform.submit();
	if(tel==""||tel==null){
		alert("用户名不能为空");
	    logform.tel.focus();
	    return false;
	}
	else if(password==""||password==null){
		alert("密码不能为空");
		logform.password.focus();
		 return false;
		 
	}
	
}

function validateForm(){
	var tel=myForm.tel.value;
	var password=myForm.password.value;
	var password_confirmation=myForm.password_confirmation.value;
	var reg=/^\d{6,10}$/;
	var reg1=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$/;
	if(tel==""||tel==null){
		alert("用户名不能为空");
	    myForm.username.focus();
	    return false;
	}
	else if(password==""||password==null){
		alert("密码不能为空");
		 return false;
	}
	else  if(!reg.test(tel)){
		alert("用户名格式不正确");
		 return false;
	
	}
	else if(!reg1.test(password)){
		alert("密码格式不正确");
		 return false;
	}
	else if(password!=password_confirmation){
	   alert("两次密码不一致"); 
	   return false;
   }
	else{
		alert("注册成功");
		myForm.submit();
	}
}
