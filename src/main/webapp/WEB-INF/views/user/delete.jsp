<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var='root' value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>COLURR</title>

<!--== Favicon ==-->
<link rel="shortcut icon" href="assets/img/favicon.ico"
	type="image/x-icon" />

<!--== Google Fonts ==-->
<link href="https://fonts.googleapis.com/css?family=Abril+Fatface:400"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,400i,500,600,700,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,700,900,900i"
	rel="stylesheet">

<!--== Bootstrap CSS ==-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<!--== Font-awesome Icons CSS ==-->
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
<!--== Icofont Min Icons CSS ==-->
<link href="assets/css/icofont.min.css" rel="stylesheet" />
<!--== lastudioIcons CSS ==-->
<link href="assets/css/lastudioIcons.css" rel="stylesheet" />
<!--== Animate CSS ==-->
<link href="assets/css/animate.css" rel="stylesheet" />
<!--== Aos CSS ==-->
<link href="assets/css/aos.css" rel="stylesheet" />
<!--== FancyBox CSS ==-->
<link href="assets/css/jquery.fancybox.min.css" rel="stylesheet" />
<!--== Slicknav CSS ==-->
<link href="assets/css/slicknav.css" rel="stylesheet" />
<!--== Swiper CSS ==-->
<link href="assets/css/swiper.min.css" rel="stylesheet" />
<!--== Slick CSS ==-->
<link href="assets/css/slick.css" rel="stylesheet" />
<!--== Main Style CSS ==-->
<link href="assets/css/style.css" rel="stylesheet" />


<!--wrapper start-->
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
<div class="wrapper">
	<main class="main-content">
		<!--== Start Page Title Area ==-->
		<section class="page-title-area bg-overlay-black2-6 bg-img"
			data-bg-img="assets/img/photos/bg-page2.jpg">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="page-title-content">
							<h2 class="title">회원탈퇴</h2>
							<div class="bread-crumbs">
								<a href="${root }main">Home<span class="breadcrumb-sep">></span></a><span
									class="active">Login</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--== End Page Title Area ==-->

		<!--== Start Contact Area ==-->
		<div class="account-login-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 m-auto">
						<div class="login-bottom">
							<div class="login-form">
								<form:form class="login-form-wrapper"
									action="${root }user_delete_pro" method="post" modelAttribute="deleteUserBean">
									<div class="col-lg-12">
										<div class="row">
											<div class="col-md-12" style="text-align: right">
												<div class="form-group mb-0 form-group-info">
													<a class="btn-forgot" href="${root}modify">정보수정</a>
												</div>

												<div class="col-md-12">
													<div class="form-group" align="left">
														<label for="user_id" class="form-label">ID *</label>
														<div class="input-group" align="left" >
															<form:input class="form-control" path="user_id"/>
															<br />
															<form:errors path="user_id" style='color:red' />
														</div>
													</div>
												</div>

												<div class="col-md-12">
													<div class="form-group mb-0" align="left">
														<label for="user_pw" class="form-label mt-15">Password
															*</label>
														<form:password class="form-control" path="user_pw" />
														<form:errors path="user_pw" style='color:red' />
													</div>

												</div>
												<div class="col-md-12">
													<div class="form-group mb-0" align="left">
														<label for="user_pw2" class="form-label mt-15">Password
															Confirm *</label>
														<form:password class="form-control" path="user_pw2" />
														<form:errors path="user_pw2" style='color:red' />
													</div>
												</div>

												<div class="col-md-12" style="text-align: center">
													<div class="form-group mb-0 form-group-info">
														<form:button class="btn btn-theme btn-black"
															style="margin: 20px">회원탈퇴</form:button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</div>
</head>

<!--== End Contact Area ==-->

<c:import url="/WEB-INF/views/include/bottom_info.jsp" />

<!--=======================Javascript============================-->

<!--=== Modernizr Min Js ===-->
<script src="assets/js/modernizr.js"></script>
<!--=== jQuery Min Js ===-->
<script src="assets/js/jquery-main.js"></script>
<!--=== jQuery Migration Min Js ===-->
<script src="assets/js/jquery-migrate.js"></script>
<!--=== Popper Min Js ===-->
<script src="assets/js/popper.min.js"></script>
<!--=== Bootstrap Min Js ===-->
<script src="assets/js/bootstrap.min.js"></script>
<!--=== jquery Appear Js ===-->
<script src="assets/js/jquery.appear.js"></script>
<!--=== jquery Swiper Min Js ===-->
<script src="assets/js/swiper.min.js"></script>
<!--=== jquery Fancybox Min Js ===-->
<script src="assets/js/fancybox.min.js"></script>
<!--=== jquery Aos Min Js ===-->
<script src="assets/js/aos.min.js"></script>
<!--=== jquery Slicknav Js ===-->
<script src="assets/js/jquery.slicknav.js"></script>
<!--=== jquery Countdown Js ===-->
<script src="assets/js/jquery.countdown.min.js"></script>
<!--=== jquery Tippy Js ===-->
<script src="assets/js/tippy.all.min.js"></script>
<!--=== Isotope Min Js ===-->
<script src="assets/js/isotope.pkgd.min.js"></script>
<!--=== jquery Vivus Js ===-->
<script src="assets/js/vivus.js"></script>
<!--=== Parallax Min Js ===-->
<script src="assets/js/parallax.min.js"></script>
<!--=== Slick  Min Js ===-->
<script src="assets/js/slick.min.js"></script>
<!--=== jquery Wow Min Js ===-->
<script src="assets/js/wow.min.js"></script>
<!--=== jquery Zoom Min Js ===-->
<script src="assets/js/jquery-zoom.min.js"></script>

<!--=== Custom Js ===-->
<script src="assets/js/custom.js"></script>

</body>

</html>