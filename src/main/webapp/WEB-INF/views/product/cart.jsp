<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<script>
   //상품 체크박스 전체선택 및 해제
   function checkAll() {
      if($('#chk_all').is(':checked')){
         $('.chk').prop('checked',true);
          }else{
             $('.chk').prop('checked',false);
          }
   }
      
   //전체 상품 버튼으로 한 번에 삭제하기
   function deleteAll() {
      var confirmation = confirm("장바구니를 모두 비우시겠습니까?");
      
      if(confirmation==false){
         return;
      }
      
       $.ajax({
         type : "delete",
         url : "${root}cart_deleteAll",
         dataType : "json",
         error : function(request, status, error) {
            alert("code:"
                  + request.status
                  + "\n"
                  + "message:"
                  + request.responseText
                  + "\n"
                  + "error:"
                  + error);
         },
         success : function(data) {
            if(data == 1){
               location.reload();
            }
         }
      });
   }
   
   //체크박스 선택한 상품 삭제하기
   function deleteSelected() {
      
         //null check
         if($("input[class='chk']:checked").val()==null){
            alert("삭제하실 상품을 선택해주세요.");
            return;
         }
      
         var confirmation = confirm("선택한 상품을 삭제하시겠습니까?");
         
         if(confirmation==false){
            return;
         }
         
           var checkArr = new Array();
         
          $("input[class='chk']:checked").each(function(){
             checkArr.push($(this).attr("product_id"x));
          });
          
          $.ajax({
            type : "post",
            url : "${root}cart_deleteSelected",
            dataType : "json",
            data : {checkArr : checkArr},
            error : function(request, status, error) {
               alert("code:"
                     + request.status
                     + "\n"
                     + "message:"
                     + request.responseText
                     + "\n"
                     + "error:"
                     + error);
            },
            success : function(data) {
               if(data == 1){
                  location.reload();
               }
            }
         });
   }
   
   //각 상품 버튼으로 삭제하기
   function deleteEach(type) {
      var each = type;
      
      var confirmation = confirm("선택한 상품을 삭제하시겠습니까?");
      
      if(confirmation==false){
         return;
      }
      
        var checkArr = new Array();
        checkArr.push(each);
        
        $.ajax({
         type : "post",
         url : "${root}cart_deleteSelected",
         dataType : "json",
         data : {checkArr : checkArr},
         error : function(request, status, error) {
            alert("code:"
                  + request.status
                  + "\n"
                  + "message:"
                  + request.responseText
                  + "\n"
                  + "error:"
                  + error);
         },
         success : function(data) {
            if(data == 1){
               location.reload();
            }
         }
      });
   }
   
   //체크박스 선택한 제품만 form submit
   function orderSelected() {
      
      //null check
      if($("input[class='chk']:checked").val()==null){
         alert("주문하실 상품을 선택해주세요.");
         return;
      }
      
      var form = document.createElement("form");
        form.setAttribute("charset", "UTF-8");
        form.setAttribute("method", "post");  //Post 방식
        form.setAttribute("action", "${root}order"); //요청 보낼 주소
      
      $("input[class='chk']:checked").each(function(){
         
         var i = $(this).attr("idx");
         console.log($(this).attr("idx"));
   
            var product_price = 'orderDetailList['+i+'].product_price';
            var product_idx = 'orderDetailList['+i+'].product_idx';
            var product_name = 'orderDetailList['+i+'].product_name';
            var product_amount = 'orderDetailList['+i+'].product_amount';
 
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", product_price);
            hiddenField.setAttribute("value", $("input[name='"+product_price+"']").val());
            form.appendChild(hiddenField);
            
            hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", product_idx);
            hiddenField.setAttribute("value", $("input[name='"+product_idx+"']").val());
            form.appendChild(hiddenField);
            
            hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", product_img1);
            hiddenField.setAttribute("value", $("input[name='"+product_img1+"']").val());
            form.appendChild(hiddenField);
            
            hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", product_name);
            hiddenField.setAttribute("value", $("input[name='"+product_name+"']").val());
            form.appendChild(hiddenField);
            
            hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", product_amount);
            hiddenField.setAttribute("value", $("input[name='"+product_amount+"']").val());
            form.appendChild(hiddenField);
            
            console.log(product_price+" "+product_idx+" "+product_name+" "+product_amount);  
       });
        
        document.body.appendChild(form);
        form.submit();
        document.getElementById("form").remove();
        
   }
   
   function orderAll() {
      $('.chk').prop('checked',true);
      orderSelected();
   }
   
// 수량 버튼 조작
	let quantity = $(".quantity_input").val();
	$(".plus_btn").on("click", function(){
		$(".quantity_input").val(++quantity);
	});
	$(".minus_btn").on("click", function(){
		if(quantity > 1){
			$(".quantity_input").val(--quantity);	
		}
	});
	
   
   
   $(document).ready(function() {
      changeCnt();
   });
   
   //장바구니 금액 계산
   function changeCnt() {
      var eachTotal = 0;               // 상품별 총액 
      var totalPrice = 0;               // 상품 금액 합 
      for(var i=0;i<$(".spinner").length;i++){
         //이름 설정 
         var cnt = ".spinner"+i;
         var price = ".price"+i;
         var eachTotalSpan = ".eachTotalSpan"+i;
                  
         //최소, 최대 주문 수량 설정
         if($(cnt).val() < 1){
            $(cnt).val(1);
         } else if($(cnt).val() > 10){
            $(cnt).val(10);
            alert("구매할 수 있는 최대 수량은 10입니다.");
         }
         
         //형변환 
         var cntVal = parseInt($(cnt).val());
         var priceVal = parseInt($(price).val());
         
         eachTotal = cntVal * priceVal;
         
         /* 화폐 단위로 변경 */
         var eachTotalCurrency = eachTotal.toLocaleString('ko-KR');
         
         $(eachTotalSpan).text(eachTotalCurrency);
         totalPrice += eachTotal;
      }
      
      /* 화폐 단위로 변경 */
      var totalPriceCurrency = totalPrice.toLocaleString('ko-KR');
      
      /* 값 삽입 */
      // 총 가격
      $(".totalPrice").text(totalPriceCurrency);
   }
   
   //장바구니 수량 수정 
   function changeCntConfirm(idx, id) {
      var cnt_id = ".spinner"+idx;
      var cnt_val = parseInt($(cnt_id).val());
      
      var product_id = id;
       $.ajax({
         type : "post",
         url : "${root}cart_changeCnt",
         data : {"product_amount" : cnt_val, "product_idx" : product_idx},
         dataType : "json",
         error : function(request, status, error) {
            alert("code:"
                  + request.status
                  + "\n"
                  + "message:"
                  + request.responseText
                  + "\n"
                  + "error:"
                  + error);
         }
      });
      
   }
</script>

<body>

<!--wrapper start-->
<div class="wrapper page-blog-wrapper">

  <c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>

  <main class="main-content site-wrapper-reveal">
    <!--== Start Page Title Area ==-->
    <section class="page-title-area bg-img" data-bg-img="assets/img/photos/bg-page5.jpg">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-title-content">
              <h2 class="title">Cart</h2>
              <div class="bread-crumbs"><a href="index.html">MyPage<span class="breadcrumb-sep">></span></a><span class="active">Cart</span></div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!--== Start Cart Area Wrapper ==-->
    <section class="product-area cart-page-area">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <div class="cart-table-wrap">
              <div class="cart-table table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th><input type="checkbox" id="chk_all" onclick="checkAll()" /></th>
                      <th class="pro-thumbnail"> </th>
                      <th class="pro-name">Product</th>
                      <th class="pro-price">Price</th>
                      <th class="pro-quantity">Quantity</th>
                      <th class="pro-subtotal">Subtotal</th>
                      <th class="pro-subtotal">Delete</th>
                    </tr>
                  </thead>
                  
                  <tbody>
                    <c:forEach var="list" items="${cartList }" varStatus="vs">
                      <div class="cart_info">
                         <input type="hidden" name="orderDetailList[${vs.index }].product_price" value="${list.product_price }" class="price${vs.index }" />
                         <input type="hidden" name="orderDetailList[${vs.index }].product_idx" value="${list.product_idx }" />
                         <input type="hidden" name="orderDetailList[${vs.index }].product_img1" value="${list.product_img1 }" />
                         <input type="hidden" name="orderDetailList[${vs.index }].product_name" value="${list.product_name }" />
                      </div>
                      <tr>
                         <td><input type="checkbox" class="chk" idx="${vs.index }" product_idx="${list.product_idx }" /></td>
                         <td class="pro-thumbnail">
                             <div class="pro-info">
                                <div class="pro-img">
                                 <a href="${root}product_detail?product_idx=${list.product_idx}"><img src="assets/img/prodct/${list.product_img1}"></a>
                                </div>
                             </div>
                            </td>
                         <td style="text-align: left">${list.product_name }</td>
                         <td><fmt:formatNumber value="${list.product_price }" pattern="###,###"/>원</td>
                         <td>
                            <input type="text" id="quantity" title="Quantity" name="orderDetailList[${vs.index }].product_amount" class="spinner spinner${vs.index }" value="${list.product_amount }" />
                            <button type="button" class="btn-post-code" onclick="changeCntConfirm(${vs.index }, '${list.product_idx }')">확인</button>
                         </td>
                         
                         <td><span class="eachTotalSpan${vs.index }"><fmt:formatNumber value="${list.total }" pattern="###,###"/></span>원</td>
                         <td><button type="button" class="btn-post-code" onclick="deleteEach('${list.product_idx }')" product_idx="${list.product_idx }">Delete</button></td>
                      </tr>
                   </c:forEach>
                  </tbody>
                      <tr>
                         <td colspan="7" style="text-align: right">Total : <span class="totalPrice" id="price1"></span></td>
                      </tr>
                      <tr class="no-bottom-border">
                         <td colspan="7" style="text-align: left">
                            선택 상품 <button type="button" class="btn-post-code" onclick="deleteSelected()">삭제하기</button>
                         </td>
                         <td style="text-align: right">
                            <button type="button" class="btn-post-codek" onclick="deleteAll()">장바구니 비우기</button>
                         </td>
                      </tr>
               </table>
               <br /><br />
               <table>
                  <tr>
                     <td>총 상품금액</td>
                     <td>결제예정금액</td>
                  </tr>
                  <tr id="priceBottom">
                     <td><span class="totalPrice p_bottom"></span>원</td>
                     <td><span class="finalTotalPrice p_bottom"></span>원</td>
                  </tr>
               </table>
               <br />
               <button type="button" class="btn-theme btn btn-black" onclick="orderSelected()">SELECT ORDER</button>
               <button type="button" class="btn-theme btn btn-black" onclick="orderAll()">ORDER</button>
                
              </div>
            </div>
          </div>
          <!-- 
          <div class="col-lg-4">
            <div class="cart-payment">
              <div class="cart-subtotal">
                <h2 class="title">Cart totals</h2>
                <table>
                  <tbody>
                    <tr class="amount-total">
                      <th>Total</th>
                      <td><span class="amount">£197.00</span></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <a class="btn-theme" href="shop-checkout.html">Proceed to Checkout</a>
            </div>
          </div>
           -->
        </div>
      </div>
    </section>
    <!--== End Cart Area Wrapper ==-->
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