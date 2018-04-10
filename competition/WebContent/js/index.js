
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

$(function(){

	$(".section ul li .rsp").hide();

	$(".section	 ul li").hover(function(){

		$(this).find(".rsp").stop().fadeTo(500,0.5)

		$(this).find(".text").stop().animate({left:'0'}, {duration: 500})

	},function(){

		$(this).find(".rsp").stop().fadeTo(500,0)

		$(this).find(".text").stop().animate({left:'318'}, {duration: "fast"})

		$(this).find(".text").animate({left:'-318'}, {duration: 0})

	});

});