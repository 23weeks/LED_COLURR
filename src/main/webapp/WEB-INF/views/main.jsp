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
  <c:import url="/WEB-INF/views/include/top_menu.jsp"/>


<div class="wrapper home-default-wrapper">

 


  <main class="main-content">
    <!--== Start Hero Area Wrapper ==-->
    <section class="home-slider-area slider-default">
      <div class="home-slider-content">
        <div class="swiper-container home-slider-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <!-- Start Slide Item -->
              <div class="home-slider-item">
                <div class="bg-thumb bg-overlay bg-img" data-bg-img="assets/img/slider/h1-s1.jpg"></div>
                <div class="slider-content-area">
                  <div class="container">
                    <div class="row align-items-center">
                      <div class="col-md-8 col-lg-5 m-auto">
                        <div class="content">
                          <div class="inner-content">
                            <h2>NEW IN</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla quis ipsum enim viverra Enim in morbi tincidunt ante luctus</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Slide Item -->
            </div>
            <div class="swiper-slide">
              <!-- Start Slide Item -->
              <div class="home-slider-item">
                <div class="bg-thumb bg-overlay bg-img" data-bg-img="assets/img/slider/h1-s2.jpg"></div>
                <div class="slider-content-area">
                  <div class="container">
                    <div class="row align-items-center">
                      <div class="col-md-8 col-lg-5 m-auto">
                        <div class="content">
                          <div class="inner-content">
                            <h2>NEW IN</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla quis ipsum enim viverra Enim in morbi tincidunt ante luctus</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Slide Item -->
            </div>
            <div class="swiper-slide">
              <!-- Start Slide Item -->
              <div class="home-slider-item">
                <div class="bg-thumb bg-overlay bg-img" data-bg-img="assets/img/slider/h1-s3.jpg"></div>
                <div class="slider-content-area">
                  <div class="container">
                    <div class="row align-items-center">
                      <div class="col-md-8 col-lg-5 m-auto">
                        <div class="content">
                          <div class="inner-content">
                            <h2>NEW IN</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla quis ipsum enim viverra Enim in morbi tincidunt ante luctus</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Slide Item -->
            </div>
          </div>
          <!-- Add Arrows -->
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
          <!-- Add Pagination -->
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </section>
    <!--== End Hero Area Wrapper ==-->

    <!--== Start Collection Slider Area Wrapper ==-->
    <section class="collection-slider-area">
      <div class="collection-slider-content">
        <div class="swiper-container collection-slider-container">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <!-- Start Slide Item -->
              <div class="slider-item">
                <div class="thumb">
                  <div class="bg-thumb bg-overlay bg-img" data-bg-img="assets/img/slider/cs1-s1.jpg"></div>
                </div>
                <div class="slider-content-area">
                  <div class="content">
                    <div class="inner-content">
                      <span>Collection 2021</span>
                      <h2>The spectacle before us was indeed sublime</h2>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla quis ipsum enim viverra. Enim in morbi tincidunt ante luctus tincidunt integer. Sed adipiscing vehicula.</p>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Slide Item -->
            </div>
            <div class="swiper-slide">
              <!-- Start Slide Item -->
              <div class="slider-item">
                <div class="thumb">
                  <div class="bg-thumb bg-overlay bg-img" data-bg-img="assets/img/slider/h1-s1.jpg"></div>
                </div>
                <div class="slider-content-area">
                  <div class="content">
                    <div class="inner-content">
                      <span>Collection 2021</span>
                      <h2>The spectacle before us was indeed sublime</h2>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla quis ipsum enim viverra. Enim in morbi tincidunt ante luctus tincidunt integer. Sed adipiscing vehicula.</p>
                    </div>
                  </div>
                </div>
              </div>
              <!-- End Slide Item -->
            </div>
          </div>          
          <!-- Add Arrows -->
          <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div>
        </div>
      </div>
    </section>
    <!--== End Collection Slider Area Wrapper ==-->

    <!--== Start Products Area Wrapper ==-->
    <section class="product-area best-sellers-product-area">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-lg-6 m-auto">
            <div class="section-title text-center" data-aos="fade-up" data-aos-duration="1000">
              <h2 class="title">Best Sellers</h2>
              <h5 class="subtitle">COLLECTION 2021</h5>
            </div>
          </div>
        </div>
        <div class="row row-gutter-60" data-aos="fade-up" data-aos-duration="1000">
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/d1-1.jpg" alt="Moren-Shop">
                  <span class="bg-thumb" data-bg-img="assets/img/shop/d1-2.jpg"></span>
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Strapless crop top</a></h4>
                  <div class="prices">
                    <span class="price">£49.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/d2-1.jpg" alt="Moren-Shop">
                  <span class="bg-thumb" data-bg-img="assets/img/shop/d2-2.jpg"></span>
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Printed surplice blouse</a></h4>
                  <div class="prices">
                    <span class="price">£49.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/d3-1.jpg" alt="Moren-Shop">
                  <span class="bg-thumb" data-bg-img="assets/img/shop/d3-2.jpg"></span>
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Rustic Blouse</a></h4>
                  <div class="prices">
                    <span class="price">£49.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
        </div>
      </div>
    </section>
    <!--== End Products Area Wrapper ==-->

    <!--== Start Category Area Wrapper ==-->
    <section class="category-area category-default-area">
      <div class="container-fluid xs-pr-15 xs-pl-15 p-0" data-aos="fade-up" data-aos-duration="1200">
        <div class="row row-gutter-6 masonry-grid category-masonry-style1">
          <div class="masonry-item">
            <div class="category-item">
              <div class="thumb">
                <img src="assets/img/shop/category/g1.jpg" alt="Moren-Shop">
              </div>
              <div class="content">
                <div class="inner-content">
                  <h4 class="title">SHIRTS | TOPS</h4>
                  <div class="meta">
                    <a href="shop.html">Midi</a>
                    <a href="shop.html">Maxi</a>
                  </div>
                  <a href="shop.html" class="btn-theme btn-white btn-border btn-size-sm">View All</a>
                </div>
              </div>
            </div>
          </div>
          <div class="masonry-item item-size2">
            <div class="category-item">
              <div class="thumb">
                <img src="assets/img/shop/category/g5.jpg" alt="Moren-Shop">
              </div>
              <div class="content">
                <div class="inner-content">
                  <h4 class="title">DRESSES | JUMPSUITS</h4>
                  <div class="meta">
                    <a href="shop.html">Jumpsuits</a>
                    <a href="shop.html">Mini</a>
                    <a href="shop.html">Midi</a>
                    <a href="shop.html">Maxi</a>
                  </div>
                  <a href="shop.html" class="btn-theme btn-white btn-border btn-size-sm">View All</a>
                </div>
              </div>
            </div>
          </div>
          <div class="masonry-item item-size3">
            <div class="category-item">
              <div class="thumb">
                <img src="assets/img/shop/category/g3.jpg" alt="Moren-Shop">
              </div>
              <div class="content">
                <div class="inner-content">
                  <h4 class="title">Knitwear</h4>
                  <div class="meta">
                    <a href="shop.html">Midi</a>
                    <a href="shop.html">Maxi</a>
                  </div>
                  <a href="shop.html" class="btn-theme btn-white btn-border btn-size-sm">View All</a>
                </div>
              </div>
            </div>
          </div>
          <div class="masonry-item item-size3">
            <div class="category-item">
              <div class="thumb">
                <img src="assets/img/shop/category/g4.jpg" alt="Moren-Shop">
              </div>
              <div class="content">
                <div class="inner-content">
                  <h4 class="title">Brazers | Jackets</h4>
                  <div class="meta">
                    <a href="shop.html">Midi</a>
                    <a href="shop.html">Maxi</a>
                  </div>
                  <a href="shop.html" class="btn-theme btn-white btn-border btn-size-sm">View All</a>
                </div>
              </div>
            </div>
          </div>
          <div class="masonry-item">
            <div class="category-item">
              <div class="thumb">
                <img src="assets/img/shop/category/g2.jpg" alt="Moren-Shop">
              </div>
              <div class="content">
                <div class="inner-content">
                  <h4 class="title">T-SHIRTS</h4>
                  <div class="meta">
                    <a href="shop.html">Midi</a>
                    <a href="shop.html">Maxi</a>
                  </div>
                  <a href="shop.html" class="btn-theme btn-white btn-border btn-size-sm">View All</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Category Area Wrapper ==-->

    <!--== Start Category Slider Area Wrapper ==-->
    <section class="category-area category-slider-area">
      <div class="container-fluid pl-xs-15 pr-xs-15 p-0">
        <div class="row">
          <div class="col-md-12">
            <div class="category-slider-content">
              <div class="swiper-container category-shop-slider-container">
                <div class="swiper-wrapper">
                  <div class="swiper-slide">
                    <div class="category-item">
                      <div class="thumb">
                        <img src="assets/img/shop/category/s1.jpg" alt="Moren-Shop">
                      </div>
                      <div class="content">
                        <div class="inner-content">
                          <h4 class="title">PANTS | JEANS</h4>
                          <div class="meta">
                            <a href="shop.html">Midi</a>
                            <a href="shop.html">Maxi</a>
                          </div>
                          <a href="shop.html" class="btn-theme btn-white btn-border btn-size-sm">View All</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="category-item">
                      <div class="thumb">
                        <img src="assets/img/shop/category/s2.jpg" alt="Moren-Shop">
                      </div>
                      <div class="content">
                        <div class="inner-content">
                          <h4 class="title">SHORTS | SKIRTS</h4>
                          <div class="meta">
                            <a href="shop.html">Jumpsuits</a>
                            <a href="shop.html">Mini</a>
                            <a href="shop.html">Midi</a>
                            <a href="shop.html">Maxi</a>
                          </div>
                          <a href="shop.html" class="btn-theme btn-white btn-border btn-size-sm">View All</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="category-item">
                      <div class="thumb">
                        <img src="assets/img/shop/category/s3.jpg" alt="Moren-Shop">
                      </div>
                      <div class="content">
                        <div class="inner-content">
                          <h4 class="title">BAGS</h4>
                          <div class="meta">
                            <a href="shop.html">Midi</a>
                            <a href="shop.html">Maxi</a>
                          </div>
                          <a href="shop.html" class="btn-theme btn-white btn-border btn-size-sm">View All</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="category-item">
                      <div class="thumb">
                        <img src="assets/img/shop/category/s4.jpg" alt="Moren-Shop">
                      </div>
                      <div class="content">
                        <div class="inner-content">
                          <h4 class="title">Accessories</h4>
                          <div class="meta">
                            <a href="shop.html">Midi</a>
                            <a href="shop.html">Maxi</a>
                          </div>
                          <a href="shop.html" class="btn-theme btn-white btn-border btn-size-sm">View All</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Add Arrows -->
                <div class="swiper-button-next"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Category Slider Area Wrapper ==-->

    <!--== Start Products Area Wrapper ==-->
    <section class="product-area new-product-area">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-lg-6 m-auto">
            <div class="section-title text-center" data-aos="fade-up" data-aos-duration="1000">
              <h2 class="title">New Products</h2>
              <h5 class="subtitle">COLLECTION 2021</h5>
            </div>
          </div>
        </div>
        <div class="row row-gutter-60" data-aos="fade-up" data-aos-duration="1000">
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/1.jpg" alt="Moren-Shop">
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Knit cropped cardigan</a></h4>
                  <div class="prices">
                    <span class="price">£29.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/2.jpg" alt="Moren-Shop">
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Tie-dye Wweatshirt</a></h4>
                  <div class="prices">
                    <span class="price">£29.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/3.jpg" alt="Moren-Shop">
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Short lilac ruffled dress</a></h4>
                  <div class="prices">
                    <span class="price">£29.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/4.jpg" alt="Moren-Shop">
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Black check texture shirt</a></h4>
                  <div class="prices">
                    <span class="price">£19.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/5.jpg" alt="Moren-Shop">
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Strapless crop top</a></h4>
                  <div class="prices">
                    <span class="price">£19.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/6.jpg" alt="Moren-Shop">
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Blue wide-leg jeans</a></h4>
                  <div class="prices">
                    <span class="price">£35.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/7.jpg" alt="Moren-Shop">
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Shorts with turn-up hems</a></h4>
                  <div class="prices">
                    <span class="price">£19.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/8.jpg" alt="Moren-Shop">
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Buttoned Waistcoat</a></h4>
                  <div class="prices">
                    <span class="price">£45.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-sm-6 col-lg-4">
            <!-- Start Product Item -->
            <div class="product-item">
              <div class="product-thumb">
                <a href="shop-single-product.html">
                  <img src="assets/img/shop/9.jpg" alt="Moren-Shop">
                  <span class="thumb-overlay"></span>
                </a>
                <div class="product-action">
                  <a class="action-quick-view ht-tooltip" data-tippy-content="Quick View" href="javascript:void(0);" title="Wishlist">
                    <i class="lastudioicon-search-zoom-in"></i>
                  </a>
                  <a class="action-compare ht-tooltip" data-tippy-content="Add to compare" href="shop-compare.html" title="Add to compare">
                    <i class="lastudioicon-compare"></i>
                  </a>
                </div>
              </div>
              <div class="product-info">
                <div class="content-inner">                  
                  <h4 class="title"><a href="shop-single-product.html">Printed surplice blouse</a></h4>
                  <div class="prices">
                    <span class="price">£17.90</span>
                  </div>
                </div>
                <div class="product-info-action">
                  <a class="action-wishlist ht-tooltip" data-tippy-content="Add to wishlist" href="shop-wishlist.html" title="Add to wishlist">
                    <i class="lastudioicon-heart-2"></i>
                  </a>
                  <a class="action-cart ht-tooltip" data-tippy-content="Add to cart" href="shop-cart.html" title="Add to cart">
                    <i class="lastudioicon-bag-3"></i>
                  </a>
                </div>
              </div>
            </div>
            <!-- End Product Item -->
          </div>
          <div class="col-md-12 text-center">
            <a href="shop.html" class="btn-theme btn-black btn-border btn-padding mt-20">View more</a>
          </div>
        </div>
      </div>
    </section>
    <!--== End Products Area Wrapper ==-->

    <!--== Start Video Divider Area Wrapper ==-->
    <div class="divider-area divider-about-area">
      <div class="container-fluid xs-pr-15 xs-pl-15 p-0">
        <div class="row">
          <div class="col-md-12">
            <div class="divider-about-content">
              <div class="divider-content" data-aos="fade-up" data-aos-duration="1000">
                <span>About Us</span>
                <img class="logo-divider" src="assets/img/logo-main.svg" alt="Logo">
                <p>Liber adolescens eos cu. Eu vix habeo rebum elaboraret, ei usu vero ullum. Eam id nobis deleniti persecuti, mazim habemus repudiare ea vim. Ea iriure commune inciderint.</p>
                <a href="about.html" class="btn-theme btn-black btn-border">Read more</a>
              </div>
              <div class="video-content" data-aos="fade-up" data-aos-duration="1000">
                <div class="thumb">
                  <img src="assets/img/photos/video1.jpg" alt="Moren-Image">
                  <a class="btn-play play-video-popup" href="https://www.youtube.com/watch?v=MLpWrANjFbI">
                    <svg class="icon" xmlns="http://www.w3.org/2000/svg" width="110" height="110" fill="none" viewBox="0 0 110 110"><circle cx="55" cy="55" r="54" stroke="currentColor" stroke-width="2" fill="none"></circle><path stroke="currentColor" stroke-width="2" d="M43.5 35.081L78 55 43.5 74.919V35.08z" fill="none"></path></svg>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--== End Video Divider Area Wrapper ==-->

    <!--== Start Trends Social Area Wrapper ==-->
    <section class="gallery-area gallery-trends-area">
      <div class="container-fluid p-0">
        <div class="row">
          <div class="col-md-8 col-lg-6 m-auto">
            <div class="section-title text-center" data-aos="fade-up" data-aos-duration="1000">
              <h2 class="title">Trends</h2>
              <h5 class="subtitle">AS SEEN ON SOCIAL MEDIA</h5>
            </div>
          </div>
        </div>
        <div class="row" data-aos="fade-up" data-aos-duration="1200">
          <div class="col-md-12">
            <div class="gallery-trends-content">
              <div class="swiper-container gallery-trends-container">
                <div class="swiper-wrapper">
                  <div class="swiper-slide">
                    <!-- Start Slide Item -->
                    <div class="slider-item">
                      <div class="bg-thumb" data-bg-img="assets/img/gallery/t1.jpg"></div>
                    </div>
                    <!-- End Slide Item -->
                  </div>
                  <div class="swiper-slide">
                    <!-- Start Slide Item -->
                    <div class="slider-item">
                      <div class="bg-thumb" data-bg-img="assets/img/gallery/t2.jpg"></div>
                    </div>
                    <!-- End Slide Item -->
                  </div>
                  <div class="swiper-slide">
                    <!-- Start Slide Item -->
                    <div class="slider-item">
                      <div class="bg-thumb" data-bg-img="assets/img/gallery/t3.jpg"></div>
                    </div>
                    <!-- End Slide Item -->
                  </div>
                  <div class="swiper-slide">
                    <!-- Start Slide Item -->
                    <div class="slider-item">
                      <div class="bg-thumb" data-bg-img="assets/img/gallery/t4.jpg"></div>
                    </div>
                    <!-- End Slide Item -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Trends Social Area Wrapper ==-->

    <!--== Start Featured Area Wrapper ==-->
    <section class="featured-area">
      <div class="container" data-aos="fade-up" data-aos-duration="1000">
        <div class="row">
          <div class="col-sm-6 col-md-4">
            <div class="featured-item">
              <div class="content">
                <span class="icon">
                  <svg xmlns="http://www.w3.org/2000/svg" width="76" height="46" fill="none" viewBox="0 0 76 46"><path fill="currentColor" d="M74.757 45.702H1.243a1.08 1.08 0 0 1-1.08-1.08V33.593a1.081 1.081 0 0 1 .864-1.06 9.73 9.73 0 0 0 0-19.07 1.081 1.081 0 0 1-.865-1.059V1.378A1.081 1.081 0 0 1 1.243.297h73.514a1.08 1.08 0 0 1 1.08 1.081v11.027a1.082 1.082 0 0 1-.864 1.06 9.73 9.73 0 0 0 0 19.07 1.081 1.081 0 0 1 .865 1.06V44.62a1.08 1.08 0 0 1-1.081 1.081zM2.324 43.54h71.352v-9.097a11.892 11.892 0 0 1 0-22.887V2.46H2.324v9.097a11.892 11.892 0 0 1 0 22.887v9.097z"></path><path fill="currentColor" d="M54.216 6.39a1.081 1.081 0 0 1-1.08-1.081V1.378a1.081 1.081 0 0 1 2.161 0v3.93a1.081 1.081 0 0 1-1.08 1.082zm0 9.828a1.08 1.08 0 0 1-1.08-1.08v-3.932a1.081 1.081 0 0 1 2.161 0v3.931a1.081 1.081 0 0 1-1.08 1.081zm0 9.828a1.08 1.08 0 0 1-1.08-1.081v-3.93a1.081 1.081 0 0 1 2.161 0v3.931a1.081 1.081 0 0 1-1.08 1.08zm0 9.828a1.08 1.08 0 0 1-1.08-1.08v-3.931a1.082 1.082 0 0 1 2.161 0v3.93a1.081 1.081 0 0 1-1.08 1.081zm0 9.828a1.08 1.08 0 0 1-1.08-1.08V40.69a1.082 1.082 0 0 1 2.161 0v3.931a1.081 1.081 0 0 1-1.08 1.081zm-33.59-11.305a1.081 1.081 0 0 1-.764-1.846l20.034-20.045a1.082 1.082 0 1 1 1.529 1.529L21.39 34.08a1.082 1.082 0 0 1-.764.316zm16.704.516a4.993 4.993 0 1 1 4.994-4.994 5 5 0 0 1-4.993 4.994zm0-7.826a2.832 2.832 0 1 0 .001 5.663 2.832 2.832 0 0 0 0-5.663zm-13.796-6.079a4.994 4.994 0 1 1 4.994-4.995 5 5 0 0 1-4.994 4.995zm0-7.826a2.832 2.832 0 1 0 0 5.663 2.832 2.832 0 0 0 0-5.663z"></path></svg>       </span>
                <div class="inner-content">
                  <h4 class="title">NEW DISCOUNT</h4>
                  <p>Lorem ipsum dolor sit amet, id pericula appe llantur eam, mea.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4">
            <div class="featured-item mt-xs-30">
              <div class="content">
                <span class="icon">
                  <svg xmlns="http://www.w3.org/2000/svg" width="76" height="72" fill="none" viewBox="0 0 76 72"><path fill="currentColor" d="M64.733 71.123H11.267a4.432 4.432 0 0 1-4.422-4.42V31.614a1.081 1.081 0 0 1 1.081-1.08h60.147a1.081 1.081 0 0 1 1.082 1.08v35.089a4.432 4.432 0 0 1-4.422 4.42zM9.008 32.695v34.008a2.263 2.263 0 0 0 2.26 2.26h53.465a2.262 2.262 0 0 0 2.26-2.26V32.695H9.007z"></path><path fill="currentColor" d="M73.085 32.695H2.915a2.755 2.755 0 0 1-2.753-2.749v-8.357a2.755 2.755 0 0 1 2.753-2.751h70.17a2.755 2.755 0 0 1 2.753 2.751v8.357a2.755 2.755 0 0 1-2.753 2.75zM2.915 21a.59.59 0 0 0-.59.59v8.356a.59.59 0 0 0 .59.59h70.17a.59.59 0 0 0 .59-.59v-8.357a.59.59 0 0 0-.59-.589H2.915z"></path><path fill="currentColor" d="M40.23 21a1.081 1.081 0 0 1-1.032-1.404c1.336-4.276 3.732-10.054 7.554-13.333A7.946 7.946 0 0 1 57.08 18.34a17.38 17.38 0 0 1-4.117 2.558 1.082 1.082 0 0 1-1.267-1.718c.102-.104.224-.186.36-.242a15.29 15.29 0 0 0 3.614-2.235 5.782 5.782 0 1 0-7.507-8.796C44.55 11 42.29 16.963 41.265 20.242A1.081 1.081 0 0 1 40.23 21z"></path><path fill="currentColor" d="M40.23 21a1.08 1.08 0 0 1-1.031-.757c-1.281-4.094-4.108-11.54-8.636-15.42a7.433 7.433 0 0 0-9.66 11.3 19.242 19.242 0 0 0 4.55 2.816 1.08 1.08 0 1 1-.908 1.962 21.321 21.321 0 0 1-5.052-3.136A9.597 9.597 0 0 1 31.968 3.178c4.695 4.02 7.645 11.147 9.297 16.419A1.081 1.081 0 0 1 40.23 21zm3.932 50.123H31.838a1.081 1.081 0 0 1-1.081-1.08v-38.43a1.081 1.081 0 0 1 1.08-1.08h12.325a1.081 1.081 0 0 1 1.081 1.08v38.428a1.081 1.081 0 0 1-1.08 1.081zM32.92 68.961h10.16V32.695H32.92v36.266z"></path></svg></span>
                <div class="inner-content">
                  <h4 class="title">GIFT VOUCHERS</h4>
                  <p>Lorem ipsum dolor sit amet, id pericula appe llantur eam, mea.</p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-md-4">
            <div class="featured-item mt-sm-30">
              <div class="content">
                <span class="icon">
                  <svg xmlns="http://www.w3.org/2000/svg" width="76" height="74" fill="none" viewBox="0 0 76 74"><path fill="currentColor" d="M74.757 73.649H1.243a1.08 1.08 0 0 1-1.08-1.081V20.4a1.081 1.081 0 0 1 1.08-1.081h73.514a1.08 1.08 0 0 1 1.08 1.081v52.168a1.08 1.08 0 0 1-1.08 1.08zM2.324 71.487h71.352V21.48H2.324v50.006z"></path><path fill="currentColor" d="M74.757 21.481H1.243a1.08 1.08 0 0 1-.865-1.73L14.607.785a1.081 1.081 0 0 1 .864-.432H60.53a1.081 1.081 0 0 1 .865.432l14.228 18.968a1.081 1.081 0 0 1-.865 1.73zM3.405 19.32h69.19L59.988 2.514H16.012L3.405 19.319z"></path><path fill="currentColor" d="M47.19 21.481H28.81a1.082 1.082 0 0 1-1.059-1.297l3.784-18.968a1.08 1.08 0 0 1 1.06-.864h10.81a1.08 1.08 0 0 1 1.06.864l3.784 18.971a1.08 1.08 0 0 1-1.06 1.297v-.003zM30.128 19.32H45.87L42.52 2.514h-9.038L30.13 19.319z"></path><path fill="currentColor" d="M47.19 41.848a1.08 1.08 0 0 1-.685-.245L38 34.653l-8.505 6.95a1.08 1.08 0 0 1-1.765-.836V20.4a1.08 1.08 0 0 1 1.08-1.081h18.38a1.08 1.08 0 0 1 1.08 1.081v20.367a1.08 1.08 0 0 1-1.08 1.08zM38 32.176c.25 0 .491.087.684.245l7.424 6.066V21.48H29.892v17.006l7.424-6.067a1.08 1.08 0 0 1 .684-.244z"></path></svg></span>
                <div class="inner-content">
                  <h4 class="title">FREE DELIVERY</h4>
                  <p>Lorem ipsum dolor sit amet, id pericula appe llantur eam, mea.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Featured Area Wrapper ==-->
  </main>

  
  
</div>

  <c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
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