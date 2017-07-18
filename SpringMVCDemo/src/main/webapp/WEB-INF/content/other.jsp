<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix= "form" uri= "http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>万能配件</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='https://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/function.js"></script>
</head>
<body>
  <!--header-->
	<div class="header">
		<div class="header-top">
			<div class="container">	
			<div class="header-top-in">			
				<div class="logo">
					<a href="index"><img src="images/logo.png" alt=" " ></a>
				</div>
				<div class="header-in">
					<ul class="icon1 sub-icon1">
							<li  ><a href="myorder">我的订单</a> </li>
							<li  ><a href="updatepwd">修改密码</a> </li>
							<li ><a href="mycart" > 我的购物车</a></li>
							<li > <a href="mycollect" >我的收藏</a> </li>	
							<li><div class="cart">
									<a href="mycart" class="cart-in"> </a>
								</div>
							</li>
						</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
		</div>
	<div class="header-bottom">
		<div class="container">
			<div class="h_menu4">
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a href="index"><i> </i>首页</a></li>
					<li ><a href="clothes">精选童装</a>
						<ul class="drop">
							<li><a href="clothes1">上衣</a></li>
							<li><a href="clothes2">裤子</a></li>
							<li><a href="clothes3">套装</a></li>
							<li><a href="clothes4">裙子</a></li>
							<li><a href="clothes5">亲子装</a></li>
						</ul>
					</li>
					<li ><a href="shoes" >潮流童鞋</a>
						<ul class="drop">
							<li><a href="shoes1">凉鞋</a></li>
							<li><a href="shoes2">帆布鞋</a></li>
						</ul>
						</li> 						
					<li><a href="sport" >儿童运动</a>
						<ul class="drop">
							<li><a href="sport1">运动上衣</a></li>
							<li><a href="sport2">运动裤</a></li>
						</ul>
					</li>            
					<li><a href="other" >内衣配件</a>
						<ul class="drop">
							<li><a href="other1">内裤</a></li>
							<li><a href="other2">袜子</a></li>
						</ul>						
					</li>
						<li><a href="contact" >联系我们 </a></li>
				</ul>
				<script type="text/javascript" src="js/nav.js"></script>
			</div>
		</div>
		</div>
	
		<div class="container">
			<div class="products">
					<h2 class=" products-in">内衣配件</h2>
					<c:forEach items="${requestScope.other_list }" var="other" varStatus="stat">
						<div class="col-md-3 md-col" style="margin-bottom:30px;">
							<div class="col-md">
								<a href="single?id=${other.id}" class="compare-in"><img  src="images/${other.img1 }.jpg"  alt="" /></a>	
								<div class="top-content">
									<h5><a href="single?id=${other.id}">${other.name } </a></h5>
									<div class="white">
										<a href="single?id=${other.id}" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2">页面详情</a>
										<p class="dollar">${other.price }</p>
										<div class="clearfix"></div>
									</div>
								</div>							
							</div>
						</div>
						</c:forEach>
						
			</div>
		</div>
		<!---->
				<div class="footer">
			<div class="footer-top">
				<div class="container">
					<div class="col-md-4 footer-in">
					<br /><br />
						<h4><i> </i>卖家实名认证</h4>
						</div>
					<div class="col-md-4 footer-in">
					<br /><br />
						<h4><i class="cross"> </i>专业团队支持</h4>
					</div>
					<div class="col-md-4 footer-in">
					<br /><br />
						<h4><i class="down"> </i>客服</h4>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!---->
<div class="footer-middle">
				<div class="container">
					<div class="footer-middle-in">
						<h6>关于我们</h6>
						<p>专注于精品，注重舒适，给孩子以舒适体验</p>
					</div>
					<div class="footer-middle-in">
						<h6>信息</h6>
						<ul>
							<li><a href="contact">关于我们</a></li>
							<p>配送信息以商家发布信息为主</p>
						</ul>
					</div>
					<div class="footer-middle-in">
						<h6>客户服务</h6>
						<ul>
							<li><a href="contact">联系我们</a></li>
						</ul>
					</div>
					<div class="footer-middle-in">
						<h6>我的账户</h6>
						<ul>
							<li><a href="mycart">我的购物车</a></li>
							<li><a href="myorder">订单历史</a></li>
							<li><a href="mycollect">愿望清单</a></li>
					</div>
					<div class="footer-middle-in">
						<h6>额外功能</h6>
						<p>暂时未开放，敬请期待！</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>

				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

		</div>
</body>
</html>