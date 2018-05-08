
$(function(){
	$(".nava").load("nava.jsp")
	$(".header").load("header.jsp")
	$(".bottom").load("footer.jsp")
}
);

function a1(){
		 $(".formBox").css("display","none");
		 $(".formBox2").css("display","none");
		 $(".formBox1").css("display","");
		 $("#a1").addClass("active");
		 $("#a").removeClass("active");
		 $("#a2").removeClass("active");
}
function a(){
		 $(".formBox").css("display","");
		 $(".formBox2").css("display","none");
		 $(".formBox1").css("display","none");
		 $("#a").addClass("active");
		 $("#a1").removeClass("active");
		 $("#a2").removeClass("active");
		 
}
function a2(){
		 $(".formBox").css("display","none");
		 $(".formBox2").css("display","");
		 $(".formBox1").css("display","none");
		 $("#a2").addClass("active");
		 $("#a").removeClass("active");
		 $("#a1").removeClass("active");
}
