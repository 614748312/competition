<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<%=basePath%>/css/base/index.css" />
<link rel="stylesheet" href="<%=basePath%>/css/base/my.css" />
<link rel="stylesheet" href="<%=basePath%>/css/base/bootstrap.min.css" />
<link rel="stylesheet" href="<%=basePath%>/css/base/work.css" type="text/css" media="all" />
<link href="<%=basePath%>/css/base/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="<%=basePath%>/js/wow.min.js"></script>
		<script>
		 new WOW().init();
		</script>
<title>作品展示</title>
</head>
<body>
<div class="nava"></div>
<div class="title_img"></div>
<div class="work_center">
			<div class="portfolio">
					  <div class="portfolio-info">
						<div class="container">
		             		<div id="portfoliolist">
										<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
											<div class="portfolio-wrapper wow bounceIn capt" data-wow-delay="0.4s">		
												<a href="#" class="b-link-stripe b-animate-go">
													 <img src="img/1.jpg"/>
													 <div class="b-wrapper">
													 <h2 class="b-animate b-from-left   b-delay03 ">非遗网站</h2>
													</div>
												</a>
							                </div>   
							             
										</div>
										
										<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
											<div class="portfolio-wrapper wow bounceIn capt" data-wow-delay="0.4s">		
												<a href="#" class="b-link-stripe b-animate-go">
													 <img src="img/7.jpg" alt="" /><div class="b-wrapper">
													 <h2 class="b-animate b-from-left   b-delay03 ">信息与计算机工程学院官网</h2>
													</div>
												</a>
							                </div>   
							             
										</div>
										
										<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
											<div class="portfolio-wrapper wow bounceIn capt" data-wow-delay="0.4s">		
												<a href="#" class="b-link-stripe b-animate-go">
													 <img src="img/22.gif" alt="" /><div class="b-wrapper">
													 <h2 class="b-animate b-from-left   b-delay03 ">党建网站</h2>
													</div>
												</a>
							                </div>   
							             
										</div>
										
										<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
											<div class="portfolio-wrapper wow bounceIn capt" data-wow-delay="0.4s">		
												<a href="#" class="b-link-stripe b-animate-go">
													 <img src="img/7.jpg" alt="" /><div class="b-wrapper">
													 <h2 class="b-animate b-from-left   b-delay03 ">非遗网站</h2>
													</div>
												</a>
							                </div>   
							             
										</div>
										
										<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
											<div class="portfolio-wrapper wow bounceIn capt" data-wow-delay="0.4s">		
												<a href="#" class="b-link-stripe b-animate-go">
													 <img src="img/7.jpg" alt="" /><div class="b-wrapper">
													 <h2 class="b-animate b-from-left   b-delay03 ">非遗网站</h2>
													</div>
												</a>
							                </div>   
							             
										</div>
										
										<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
											<div class="portfolio-wrapper wow bounceIn capt" data-wow-delay="0.4s">		
												<a href="#" class="b-link-stripe b-animate-go">
													 <img src="img/1.jpg"/>
													 <div class="b-wrapper">
													 <h2 class="b-animate b-from-left   b-delay03 ">非遗网站</h2>
													</div>
												</a>
							                </div>   
							             
										</div>
				
										<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
											<div class="portfolio-wrapper wow bounceIn capt" data-wow-delay="0.4s">		
												<a href="#" class="b-link-stripe b-animate-go">
													 <img src="img/7.jpg" alt="" /><div class="b-wrapper">
													 <h2 class="b-animate b-from-left   b-delay03 ">信息与计算机工程学院官网</h2>
													</div>
												</a>
							                </div>   
							             
										</div>
										
										<div class="portfolio icon mix_all" data-cat="icon" style="display: inline-block; opacity: 1;">
											<div class="portfolio-wrapper wow bounceIn capt" data-wow-delay="0.4s">		
												<a href="#" class="b-link-stripe b-animate-go">
													 <img src="img/22.gif" alt="" /><div class="b-wrapper">
													 <h2 class="b-animate b-from-left   b-delay03 ">党建网站</h2>
													</div>
												</a>
							                </div>   
							             
										</div>
										<div class="clearfix"></div>	
			                  </div>
			
									<script type="text/javascript" src="<%=basePath%>/js/jquery.mixitup.min.js"></script>
										<script type="text/javascript">
										$(function () {
											
											var filterList = {
											
												init: function () {
												
													// MixItUp plugin
													// http://mixitup.io
													$('#portfoliolist').mixitup({
														targetSelector: '.portfolio',
														filterSelector: '.filter',
														effects: ['fade'],
														easing: 'snap',
														// call the hover effect
														onMixEnd: filterList.hoverEffect()
													});				
												
												},
												
												hoverEffect: function () {
												
													// Simple parallax effect
													$('#portfoliolist .portfolio').hover(
														function () {
															$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
															$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
														},
														function () {
															$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
															$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
														}		
													);				
												
												}
									
											};
											
											// Run the show!
											filterList.init();	
										});	
										</script>
									<!-- Gallery Script Ends -->
								<div class="clearfix"></div>
						</div>
					 	</div>
					  </div>
			</div>
                       <div class="page">
						      
									<ul class="pagination pagination-lg">
									    <li><a href="#">&laquo;</a></li>
									    <li><a href="#">1</a></li>
									    <li><a href="#">2</a></li>
									    <li><a href="#">3</a></li>
									    <li><a href="#">4</a></li>
									    <li><a href="#">5</a></li>
									    <li><a href="#">&raquo;</a></li>
									</ul>
						      
	                    </div>
	</div>	
<div class="bottom"></div>
<script type="text/javascript" src="<%=basePath%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/index.js"></script>
</body>
</html>