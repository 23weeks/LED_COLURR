<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>COLURR</title>

    <!--== Favicon ==-->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon" />

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
<div class="wrapper home-default-wrapper">

  <c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>
  
  <main class="main-content site-wrapper-reveal">
    <!--== Start Page Title Area ==-->
    <div class="page-title-area page-title-area2">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-title-content content-style-2">
              <div class="bread-crumbs"><a href="index.html">${showProductBean.product_gender}<span class="breadcrumb-sep">></span></a><a href="index.html">${showProductBean.product_colortype}<span class="breadcrumb-sep">></span></a><span class="active">${showProductBean.product_name}</span></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--== End Page Title Area ==-->

    <!--== Start Shop Area ==-->
    <section class="product-area shop-single-product">
      <div class="container">
        <div class="row">
          <div class="col-lg-6" style="padding-top:50px">
            <div class="single-product-slider ml-0">
              <div class="product-dec-slider-right w-100">
                <div class="single-product-thumb pl-0">
                  <div class="single-product-thumb-slider">
                    <div class="thumb-item">
                      <a class="lightbox-image" data-fancybox="gallery" href="assets/img/product/${showProductBean.product_img1}">
                        <img src="assets/img/product/${showProductBean.product_img1}">
                      </a>
                    </div>
                  </div>
                  <div class="product-gallery-actions">
                    <a class="lightbox-image" data-fancybox="gallery" href="assets/img/product/${showProductBean.product_img1}">
                      <i class="lastudioicon-full-screen"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="single-product-info">
              <h4 class="title">${showProductBean.product_name}</h4>
              <div class="product-rating">
                <div class="review">
                  <p><span></span>99 in stock</p>
                </div>
              </div>
              <div class="prices">
                <span class="price">${showProductBean.product_price}</span>
              </div>
              <div class="quick-product-action">
                <div class="action-top">
                  <div class="pro-qty-area">
                    <div class="pro-qty">
                      <input type="text" id="quantity1" title="Quantity" value="1" />
                    </div>
                  </div>
                  <a class="btn-theme btn-black" href="${root}add_cart">Add to cart</a>
                </div>
                <div class="action-bottom">
                  <a class="btn-wishlist" href="${root}add_wishlist"><i class="labtn-icon labtn-icon-wishlist"></i>Add to wishlist</a>
                </div>
              </div>
              <div class="product-categorys">
                <div class="product-category">
                  ColorType: <span>${showProductBean.product_colortype}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Shop Area ==-->

    <!--== Start Shop Tab Area ==-->
    <section class="product-area product-description-review-area">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="product-description-review">
              <ul class="nav nav-tabs product-description-tab-menu" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="product-desc-tab" data-bs-toggle="tab" data-bs-target="#productDesc" type="button" role="tab" aria-controls="productDesc" aria-selected="true">Description</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="product-review-tab" data-bs-toggle="tab" data-bs-target="#productReview" type="button" role="tab" aria-controls="productReview" aria-selected="false">Reviews (0)</button>
                </li>
              </ul>
              <div class="tab-content product-description-tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="productDesc" role="tabpanel" aria-labelledby="product-desc-tab">
                  <div class="product-desc">
                    <div class="product-desc-row">
                      <img src="assets/img/product/${showProductBean.product_img2}"/>
                    </div>
                  </div>
                </div>
                <!-- 리뷰 -->
                <div class="tab-pane fade" id="productReview" role="tabpanel" aria-labelledby="product-review-tab">
                  <div class="product-review">
                    <div class="product-review-comments">
                      <h4 class="title">1 review for <span>Product Simple</span></h4>
                      <div class="comment-item">
                        <div class="thumb">
                          <img src="assets/img/icons/s1.jpg" alt="Moren-Shop">
                        </div>
                        <div class="content">
                          <div class="rating">
                            <span class="lastudioicon-star-rate-1"></span>
                            <span class="lastudioicon-star-rate-1"></span>
                            <span class="lastudioicon-star-rate-1"></span>
                            <span class="lastudioicon-star-rate-1"></span>
                            <span class="lastudioicon-star-rate-1"></span>
                          </div>
                          <h5 class="meta"><span>Agnes Wilson </span> – December 24, 2020</h5>
                          <span class="review">There are no reviews yet.</span>
                        </div>
                      </div>
                    </div>
                    <div class="product-review-form">
                      <h3 class="title">Add a review</h3>
                      <p>Your email address will not be published. Required fields are marked <span>*</span></p>
                      <div class="rating">
                        <span class="rating-title">Your rating *</span>
                        <span class="lastudioicon-star-rate-2"></span>
                        <span class="lastudioicon-star-rate-2"></span>
                        <span class="lastudioicon-star-rate-2"></span>
                        <span class="lastudioicon-star-rate-2"></span>
                        <span class="lastudioicon-star-rate-2"></span>
                      </div>
                      <form action="#" method="post">
                        <div class="review-form-content">
                          <div class="row">
                            <div class="col-md-12">
                              <div class="form-group">
                                <label for="reviewFormTextarea">Your review *</label>
                                <textarea class="form-control" id="reviewFormTextarea" name="comment" rows="7" required></textarea>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-group">
                                <label for="reviewFormName">Name *</label>
                                <input class="form-control" id="reviewFormName" type="text" required />
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-group">
                                <label for="reviewFormEmail">Email *</label>
                                <input class="form-control" id="reviewFormEmail" type="email" required />
                              </div>
                            </div>
                            <div class="col-md-12">
                              <div class="form-check pl-0">
                                <input class="form-check-input position-static ml-0" type="checkbox" value="" id="reviewFormCheck"><br>
                                <label class="form-check-label" for="reviewFormCheck">Save my name, email, and website in this browser for the next time I comment.
                                </label>
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-12">
                              <div class="form-group">
                                <button class="btn btn-theme btn-black" type="submit">Submit</button>
                              </div>
                            </div>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Shop Tab Area ==-->

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