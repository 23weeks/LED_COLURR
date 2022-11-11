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

    <title>Blog - Moren - Fashion Bootstrap 5 HTML Template</title>

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

<div class="container" >
   <div class="row">         
      <div class="col-sm-3"></div>
      <div class="col-sm-6">
         <div class="card shadow">
            <div class="card-body">
            <div class="form-group">
				
					<div style="text-align: center">
						<h4 class="card-title">Q&A</h4>
						<!-- 타입을 '답변대기 / 답변완료' 두가지로 나누기 c:if랑 인터셉터사용 -->
					</div>
					
					<form action="${root }board_readq" method="get">
					<c:forEach var='obj' items="${questionList }">
						<div class="form-group">
							<form:label path="${obj.user_name}">작성자</form:label>
							<form:input path="${obj.user_name}" class="form-control" readonly="true"/>
						</div>
					</c:forEach>
					
						<div class="form-group">
							<form:label path="question_date">작성날짜</form:label>
							<form:input path="question_date" class="form-control" readonly="true"/>
						</div>
						
						<div class="form-group">
							<form:label path="question_title">제목</form:label>
							<form:input path="question_title" class="form-control" />
							<form:errors path="question_title" style='color:red'/>
						</div>
						
						<div class="form-group">
							<form:label path="question_content">내용</form:label>
							<form:textarea path="question_content" class="form-control" rows="10" style="resize:none" />
							<form:errors path="question_content" style='color:red'/>
						</div>
						<div class="form-group">
							<label for="board_file">첨부 이미지</label>
							<c:if test="${modifyQuestionBean.question_img !=null }">
							<img src="${root }upload/${modifyQuestionBean.question_img}" width="20%"/>	
							<!-- 첨부파일 주입 수정시 이미지 파일 변경없이 유지 -->
							<form:hidden path="question_img"/>
							</c:if>
							
							<form:input type="file" path="upload_file" class="form-control" accept="image/*"/>					
						</div>
						
						<div class="form-group">
							<div style="text-align: right">
							
								<form:button type="submit" class="btn btn-outline-secondary" style="margin-top:10px ">수정완료</form:button>
								<a href="${root }board_readq?question_idx=${question_idx }" class="btn btn-outline-danger" style="margin-top:10px ">취소</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	<div class="col-sm-3"></div>
   </div>
</div>
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

