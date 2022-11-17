<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}/"/> 
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>COLURR</title>

<!--== Favicon ==-->
<link rel="shortcut icon" href="assets/img/prelogo.png" type="image/x-icon" />

<!--== Google Fonts ==-->
<link href="https://fonts.googleapis.com/css?family=Abril+Fatface:400" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,400i,500,600,700,900,900i" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,700,900,900i" rel="stylesheet">

<!--== Bootstrap CSS ==-->
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<!--== Font-awesome Icons CSS ==-->
<link href="assets/css/font-awesome.min.css" rel="stylesheet"/>
<!--== Icofont Min Icons CSS ==-->
<link href="assets/css/icofont.min.css" rel="stylesheet"/>
<!--== lastudioIcons CSS ==-->
<link href="assets/css/lastudioIcons.css" rel="stylesheet"/>
<!--== Animate CSS ==-->
<link href="assets/css/animate.css" rel="stylesheet"/>
<!--== Aos CSS ==-->
<link href="assets/css/aos.css" rel="stylesheet"/>
<!--== FancyBox CSS ==-->
<link href="assets/css/jquery.fancybox.min.css" rel="stylesheet"/>
<!--== Slicknav CSS ==-->
<link href="assets/css/slicknav.css" rel="stylesheet"/>
<!--== Swiper CSS ==-->
<link href="assets/css/swiper.min.css" rel="stylesheet"/>
<!--== Slick CSS ==-->
<link href="assets/css/slick.css" rel="stylesheet"/>
<!--== Main Style CSS ==-->
<link href="assets/css/style.css" rel="stylesheet" />

</head>

<body>

<!--wrapper start-->
<div class="wrapper page-blog-wrapper">

  <c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>
  
  <main class="main-content">
  
    <!--== Start Page Title Area ==-->
 <section class="page-title-area bg-img" data-bg-img="assets/img/photos/m3.jpg">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-title-content">
              <h2 class="title">About</h2>
              <div class="bread-crumbs"><a href="index.html">About</a></div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Page Title Area ==-->

    <!--== Start Video Divider Area Wrapper ==-->
    <section class="divider-area divider-about-area-style2">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-7">
            <div class="divider-about-thumb">
              <div class="video-content">
                <div class="thumb">
                  <img src="assets/img/photos/m2.jpg" alt="Moren-Image">
                  <a class="btn-play play-video-popup" href="https://www.youtube.com/watch?v=MLpWrANjFbI">
                 
               
               
               
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-5">
            <div class="divider-about-content">
              <div class="divider-content">
                <h2 class="title">Welcome to COLURR</h2>
                <p>'COLURR'는 개인의 퍼스널 컬러에 맞는 세트 코디 상품을 추천해주는 쇼핑몰입니다. 봄,여름,가을,겨울 4계절 컬러 타입으로 구분되어 본인에게 어울리는 컬러의 상품을 선택할 수 있습니다. 모던한 스타일의 쇼핑몰로 일상속에서 꾸안꾸룩으로 연출하기 좋은 아이템들 위주로 추천을 해줍니다.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Video Divider Area Wrapper ==-->

    <!--== Start Brand Logo Area ==-->
    <section class="brand-logo-area brand-logo-style1-area">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-lg-6 m-auto">
            <div class="section-title text-center">
              <h2 class="title">Our Partners</h2>
            </div>
          </div>
        </div>
        <div class="row align-items-center">
          <div class="col-lg-12">
            <div class="swiper-container brand-logo-slider-container">
              <div class="swiper-wrapper brand-logo-slider">
                <div class="swiper-slide brand-logo-item">
                  <a href="#/"><img src="assets/img/brand-logo/1.webp" alt="Brand-Logo"></a>
                </div>
                <div class="swiper-slide brand-logo-item">
                  <a href="#/"><img src="assets/img/brand-logo/2.webp" alt="Brand-Logo"></a>
                </div>
                <div class="swiper-slide brand-logo-item">
                  <a href="#/"><img src="assets/img/brand-logo/3.webp" alt="Brand-Logo"></a>
                </div>
                <div class="swiper-slide brand-logo-item">
                  <a href="#/"><img src="assets/img/brand-logo/4.webp" alt="Brand-Logo"></a>
                </div>
                <div class="swiper-slide brand-logo-item">
                  <a href="#/"><img src="assets/img/brand-logo/5.webp" alt="Brand-Logo"></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Brand Logo Area ==-->

    
  </main>

  <c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>
  
</div>

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