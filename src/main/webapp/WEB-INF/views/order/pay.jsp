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
<c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>

  <main class="main-content">
    <!--== Start Page Title Area ==-->
    <section class="page-title-area bg-img" data-bg-img="assets/img/photos/bg-page1.jpg">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-title-content">
              <h2 class="title">Pay</h2>
              <div class="bread-crumbs"><a href="${root }main">Home<span class="breadcrumb-sep">></span></a><span class="active">Pay</span></div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Page Title Area ==-->

    <!--== Start Shop Checkout Area ==-->
    <section class="shop-checkout-area">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="shop-return-login" id="returnloginAccordion">
              <div class="card">
                <div id="returnloginaccordion" class="collapse" data-bs-parent="#returnloginAccordion">
                  <div class="card-body">
                    <p>If you have shopped with us before, please enter your details in the boxes below. If you are a new customer, please proceed to the Billing & Shipping section.</p>
                    <form action="#" method="post">
                      <div class="form-group">
                        <label for="rl_username">Username or email <span class="required">*</span></label>
                        <input class="form-control" id="rl_username" type="text">
                      </div>
                      <div class="form-group">
                        <label for="rl_password">Password <span class="required">*</span></label>
                        <input class="form-control" id="rl_password" type="text">
                      </div>
                      <button class="btn btn-coupon w-100">Login</button>
                      <div class="remember-lostpassword">
                        <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" id="RadioRememberMe">
                          <label class="custom-control-label ps-1" for="RadioRememberMe">Remember me</label>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="shop-checkout-coupon" id="checkoutloginAccordion">
              <div class="card">
                <div id="couponaccordion" class="collapse" data-bs-parent="#checkoutloginAccordion">
                  <div class="card-body">
                    <p>If you have a coupon code, please apply it below.</p>
                    <form action="#" method="post">
                      <div class="form-group">
                        <input class="form-control" type="text" placeholder="Enter Your Coupon Code">
                      </div>
                      <button class="btn btn-coupon">Apply Coupon</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row ">
          <div class="col-lg-8 col-md-12">
            <div class="shop-billing-form">
              <form action="${root }order_list" method="post">
                <h4 class="title">Billing details</h4>
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group" style="width:100%">
                      <label for="cf_name">Name <abbr class="required" title="required"></abbr></label>
                      <input class="form-control" id="cf_name" type="text" readonly="true" style="width:770px">
                    </div>
                  </div>
                </div>
                
                <div class="form-group">
                  <label for="cf_street_address">Address <abbr class="required" title="required"></abbr></label>
                  <input class="form-control" id="cf_street_address" type="text" readonly="true">
                </div>

                <div class="form-group">
                  <label for="cf_zip">ZIP <abbr class="required" title="required"></abbr></label>
                  <input class="form-control" id="cf_zip" type="text" readonly="true">
                </div>

                <div class="form-group">
                  <label for="cf_phone">Phone <abbr class="required" title="required"></abbr></label>
                  <input class="form-control" id="cf_phone" type="text" readonly="true">
                </div>

                <div class="form-group">
                  <label for="cf_email">Email address <abbr class="required" title="required"></abbr></label>
                  <input class="form-control" id="cf_email" type="text" readonly="true">
                </div>
              </form>
            </div>
          </div>
		<!-- =================================주문목록================================= -->
          <div class="col-lg-4 col-md-12">
            <h4 class="title">Your order</h4>
            <div class="order-review-details">
              <table class="table">
                <thead>
                  <tr>
                    <th>Product</th>
                    <th>Subtotal</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <span class="product-title">상품1</span>
                      <span class="product-quantity"> × (수량)</span>
                    </td>
                    <td>가격</td>
                  </tr>
                  <tr>
                    <td>
                      <span class="product-title">상품2</span>
                      <span class="product-quantity"> × (수량)</span>
                    </td>
                    <td>가격</td>
                  </tr>
                </tbody>
                <tfoot>
                  <tr class="cart-subtotal">
                    <th>Subtotal</th>
                    <td>총합</td>
                  </tr>
                  <tr class="final-total">
                    <th>Total</th>
                    <td><span class="total-amount">£148.90</span></td>
                  </tr>
                </tfoot>
              </table>
              <div class="shop-payment-method">
                <div id="accordion">
                  <div class="card">
                    <div class="card-header" id="direct_bank_transfer">
                      <h4 class="title" data-bs-toggle="collapse" data-bs-target="#itemOne" aria-controls="itemOne" aria-expanded="false">결제방법1</h4>
                    </div>
                    <div id="itemOne" class="collapse" aria-labelledby="direct_bank_transfer" data-bs-parent="#accordion">
                      <div class="card-body">
                        <p>결제방법1</p>
                      </div>
                    </div>
                  </div>

                  <div class="card">
                    <div class="card-header" id="check_payments">
                      <h5 class="title" data-bs-toggle="collapse" data-bs-target="#itemTwo" aria-controls="itemTwo" aria-expanded="true">결제방법2</h5>
                    </div>
                    <div id="itemTwo" class="collapse show" aria-labelledby="check_payments" data-bs-parent="#accordion">
                      <div class="card-body">
                        <p>결제방법2</p>
                      </div>
                    </div>
                  </div>

                  <div class="card">
                    <div class="card-header" id="cash_on_delivery">
                      <h5 class="title" data-bs-toggle="collapse" data-bs-target="#itemThree" aria-controls="itemThree" aria-expanded="false">결제방법3</h5>
                    </div>
                    <div id="itemThree" class="collapse" aria-labelledby="cash_on_delivery" data-bs-parent="#accordion">
                      <div class="card-body">
                        <p>결제방법3</p>
                      </div>
                    </div>
                  </div>

                  <div class="card">
                    <div class="card-header" id="Pay_Pal">
                      <h5 class="title" data-bs-toggle="collapse" data-bs-target="#item4" aria-controls="item4" aria-expanded="false">결제방법4<img src="assets/img/icons/paypal.png" alt=""> <a href="#/"></a></h5>
                    </div>
                    <div id="item4" class="collapse" aria-labelledby="Pay_Pal" data-bs-parent="#accordion">
                      <div class="card-body">
                        <p>결제방법4</p>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
            </div>
            <button class="btn place-order-btn" type="submit">Pay</button>
          </div>
        </div>
      </div>
    </section>
    <!--== End Shop Checkout Area ==-->
  </main>
<c:import url="/WEB-INF/views/include/bottom_info.jsp"></c:import>
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