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
  <c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>
<div class="wrapper page-blog-wrapper">

  
  <main class="main-content">
    <!--== Start Page Title Area ==-->
    <section class="page-title-area bg-img" data-bg-img="assets/img/photos/bg-page1.jpg">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-title-content">
              <h2 class="title">Blog</h2>
              <div class="bread-crumbs"><a href="${root }main">Home<span class="breadcrumb-sep">></span></a><a href="${root }main">Blog</a><span class="breadcrumb-sep">></span><span class="active">Blog Details</span></div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--== End Page Title Area ==-->

    <!--== Start Blog Area Wrapper ==-->
    <section class="blog-details-area">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="blog-content-column">
              <div class="blog-content-area no-sidebar">
                <div class="post-details-content">
                  <div class="post-details-body">
                    <div class="content" style="text-align:center">
                      
                      
                      <!-- 여기 -->
                      <div class="category">
                        <a href="blog.html">답변대기 / 답변완료</a>
                      </div>
                      <h4>제목</h4>
                      <p class="author" style="font-size: 14px" >작성자</p>
                      <input type="text" id="author" name="author" class="form-control" value="${readQuestionBean.writer_name }" readonly="readonly" />
                      
                      <p class="date" style="font-size: 14px">작성날짜</p>
                      <input type="text" id="date" name="date" class="form-control" value="${readQuestionBean.question_date }" readonly="readonly" />
                      <hr />
                      <c:if test="${readQuestionBean.question_img != null }">
                      <ul class="meta">
                        <li class="file">첨부 이미지</li>
                        <li> | </li>
                        <li><img src="${root }upload/${readQuestionBean.question_img}" width="20%"/></li>
                      </ul>
                      </c:if>
                      
                      <p class="question_content" style="text-align:left">글 내용</p>
                      <textarea id="question_content" name="question_content" class="form-control" rows="10" disabled="disabled">"${readQuestionBean.question_content }"</textarea>
                      
                      <p class="m-0"></p>
                      <hr />
                      
                	 <div>
                        <<a href="${root }board_list" class="btn-theme btn btn-black" >목록보기</a> 
                        <c:if test="${loginUserBean.user_idx == readContentBean.writer_name}">
                      <a href="${root }board_modify?question_idx=${question_idx}" class="btn-theme btn btn-black">수정하기</a>
                      <a href="${root }board_delete?question_idx=${question_idx}" class="btn-theme btn btn-black" >삭제하기</a>
                      </c:if>
                    </div>
                    
                    </div>
                    <div class="comments-area" style="margin:30px">
                      <h2>답변 작성</h2>
                      <div class="comments-form-wrap">
                        <div class="clearfix"></div>
                        <form action="#" method="post">
                          <div class="comments-form-content">
                            <div class="row row-gutter-20">
                              <div class="col-md-12">
                                <div class="form-group">
                                  <textarea class="form-control textarea" name="comment" rows="5" placeholder="답변을 작성해주세요"></textarea>
                                </div>
                              </div>
                              <div class="col-md-12">
                                <div class="form-group">
                                  <div class="comment-form-cookies"><input id="comment-cookies" name="comment-cookies" type="checkbox" value="yes"> <label for="comment-cookies">동의 체크</label></div>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-md-12">
                                <div class="form-group" style="text-align:center">
                                  <button class="btn-theme btn btn-black" type="submit">제출</button>
                                  
                                  
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
      </div>
    </section>
    <!--== End Blog Area Wrapper ==-->

  </main>

  
</div>
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