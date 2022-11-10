<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
<!-- 약관동의 스크립트 -->
<script type="text/javascript">
/*
function chk(){
 var agree = document.agree.checked;
 var num = 0;
 if(req == true){
  num = 1;
 }
 if(num==1){
  document.agree.submit();
 }else{
  alert("개인정보 약관에 동의하셔야 합니다.");
 }
}*/
var chk = false;
function chk_agree(){
	if (chk== false) {
		chk = true;
	} else {
		chk = false;
	}
	
}
</script>

</head>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
  function checkUserIdExist() {
   //변수선언 : 사용자가 입력한 id값 가져오기
   var user_id = $("#user_id").val()
   //아이디를 입력하지 않았을 경우
   if(user_id.length == 0){
      alert('아이디를 입력해주세요')
      return
   }
  
  
     //통신
     $.ajax({
        //요청할 주소
        url : '${root}user/checkUserIdExist/' + user_id,
        //요청타입
        type:'get',
        //응답결과
        dataType :'text',
        //성공시 호출할 함수
        success : function(result) {
           if(result.trim() == 'true'){
              alert('사용할 수 있는 아이디입니다') /* view */
              $("#userIdExist").val('true') /* db저장  */
           }else if(result.trim() == 'false'){
              alert('사용할 수 없는 아이디입니다')
              $("#userIdExist").val('false')
           }
      }//success
     })//ajax
  }//checkUserIdExist
  
  
  //사용자 아이디란에 클릭만 하면 무조건 false
  function resetUserIdExist() {
     $("#userIdExist").val('false')
   }

  
  function sample6_execDaumPostcode() {
      new daum.Postcode({
          oncomplete: function(data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

              // 각 주소의 노출 규칙에 따라 주소를 조합한다.
              // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
              var addr = ''; // 주소 변수
              var extraAddr = ''; // 참고항목 변수

              //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
              if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                  addr = data.roadAddress;
              } else { // 사용자가 지번 주소를 선택했을 경우(J)
                  addr = data.jibunAddress;
              }

              // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
              if(data.userSelectedType === 'R'){
                  // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                  // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                  if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                      extraAddr += data.bname;
                  }
                  // 건물명이 있고, 공동주택일 경우 추가한다.
                  if(data.buildingName !== '' && data.apartment === 'Y'){
                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                  }
                  // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                  if(extraAddr !== ''){
                      extraAddr = ' (' + extraAddr + ')';
                  }
                  // 조합된 참고항목을 해당 필드에 넣는다.
                  document.getElementById("sample6_extraAddress").value = extraAddr;
              
              } else {
                  document.getElementById("sample6_extraAddress").value = '';
              }

              // 우편번호와 주소 정보를 해당 필드에 넣는다.
              document.getElementById('sample6_postcode').value = data.zonecode;
              document.getElementById("sample6_address").value = addr;
              // 커서를 상세주소 필드로 이동한다.
              document.getElementById("sample6_detailAddress").focus();
          }
      }).open();
  }
</script>

<body>

<!--wrapper start-->
<div class="wrapper">

  <c:import url="/WEB-INF/views/include/top_menu.jsp"/>
  
  <main class="main-content">
    <!--== Start Page Title Area ==-->
    <section class="page-title-area bg-overlay-black2-6 bg-img" data-bg-img="assets/img/photos/bg-page2.jpg">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-title-content">
              <h2 class="title">My Account</h2>
              <div class="bread-crumbs"><a href="index.html">Home<span class="breadcrumb-sep"></span></a><span class="active">Register</span></div>
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
                    <form:form action="${root}join_pro" method="post" modelAttribute="joinUserBean">
                      <form:hidden path="userIdExist"/>
                      <div class="row">
                        <div class="col-lg-12">
                          <div class="row">
                            <div class="col-md-12" style="text-align:right">
                              <div class="form-group mb-0 form-group-info">
                                <a class="btn-forgot" href="${root}login">Login</a>
                              </div>
                            </div>
                            <div class="col-md-12">
                              <div class="form-group">
                                <label for="user_name" class="form-label">Name *</label>
                                <form:input class="form-control" path="user_name"/>
                              </div>
                              <form:errors path="user_name" style='color:red'/>
                            </div>
                            <div class="col-md-12">
                              <div class="form-group">
                                <label for="user_id" class="form-label">ID *</label>
                                <div class="input-group">
                                  <form:input class="form-control" path="user_id" onkeypress="resetUserIdExist()"/>
                                  <div class="input-group-append">
                          		    <button type="button" class="btn-post-code" onclick='checkUserIdExist()'>중복확인</button>
                          		  </div>
                                </div>
                                <form:errors path="user_id" style='color:red'/>
                              </div>
                            </div>

                            <div class="col-md-12">
                              <div class="form-group mb-0">
                                <label for="user_pw" class="form-label mt-15">Password *</label>
                                <form:password class="form-control" path="user_pw"/>
                                <form:errors path="user_pw" style='color:red'/>
                              </div>
                            </div>
                            <div class="col-md-12">
                              <div class="form-group mb-0">
                                <label for="user_pw2" class="form-label mt-15">Password Confirm *</label>
                                <form:password class="form-control" path="user_pw2"/>
                                <form:errors path="user_pw2" style='color:red'/>
                              </div>
                            </div>
                            <div class="col-md-12">
                              <div class="form-group mb-0">
                                <label for="user_gender" class="form-label mt-15">Gender *</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="user_gender" value="male">&nbsp; Male &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="user_gender" value="female">&nbsp; Female
                              </div>
                            </div>
                            <div class="col-md-12">
                              <div class="form-group mb-0">
                                <label for="user_email" class="form-label mt-15">Phone *</label>
                                <form:input class="form-control" path="user_phone"/>
                              </div>
                            </div>
                            <div class="col-md-12">
                              <div class="form-group mb-0">
                                <label for="user_email" class="form-label mt-15">Email *</label>
                                <form:input class="form-control" path="user_email"/>
                              </div>
                            </div>
                            <div class="col-md-12">
                              <div class="form-group mb-0">
                                <label for="user_email" class="form-label mt-15">Address *</label><br />
                                <div>
                                  <form:input path="sample6_postcode" placeholder="우편번호" readonly="true"/>
								  <input type="button" class="btn-post-code" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/><br>
								  <div style="margin-top:10px">
								    <form:input path="sample6_address" placeholder="주소" readonly="true"/>
								    <form:input path="sample6_detailAddress" placeholder="상세주소"/>
								    <form:input path="sample6_extraAddress" placeholder="참고항목" readonly="true"/>
								  </div> <br />
								  
								  <!-- 약관동의 -->
								
 <div class="col-md-12">
 <div class="form-group mb-0">
 <label class="form-label mt-15">약관동의</label> <br />
<textarea close="150" style="width:670px; height:250px" readonly="readonly">
가. 수집하는 개인정보의 항목
첫째, 회사는 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.

회원가입
- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보

만14세 미만 아동 회원가입
- 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처 (메일주소, 휴대폰 번호 중 선택), 가입인증정보

단체아이디 회원가입
- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처, 관리자 부서/직위
- 선택항목 : 대표 홈페이지, 대표 팩스번호

둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록

셋째, 네이버 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다.

넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은 정보들이 수집될 수 있습니다.
- 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인 식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보

다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.
- 신용카드 결제시 : 카드사명, 카드번호 등
- 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등
- 계좌이체시 : 은행명, 계좌번호 등
- 상품권 이용시 : 상품권 번호

나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다.
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청
- 협력회사로부터의 제공
- 생성정보 수집 툴을 통한 수집
   </textarea><br />
   <input type="checkbox" name="agree" onclick="chk_agree()" required="required"> 개인정보 수집 및 이용에 동의합니다. 
   <br />
   <form:errors path="agree" style='color:red'/>
</div>
</div>							  
								</div>
                              </div>
                            </div>
                            <p />
                            <p />
                            <div class="col-md-12">
                              <div class="form-group mb-0 form-group-info" style="text-align:center">
                                <form:button class="btn btn-theme btn-black" style="margin-top:10px" >Register</form:button>
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
    <!--== End Contact Area ==-->
  </main>

  <c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
  
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