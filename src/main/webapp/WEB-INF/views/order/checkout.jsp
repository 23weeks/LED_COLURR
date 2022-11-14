<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.2.0.js"></script>
        <title>COLURR</title>
    </head>

    <body>


    <p>아임 서포트 결제 모듈 테스트 해보기</p>
    <button id="check_module" type="button">아임 서포트 결제 모듈 테스트 해보기</button>

<script>
    $("#check_module").click(function () {
        var IMP = window.IMP; // 생략가능
        IMP.init("imp73760842"); 
        // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
        IMP.request_pay({
            pg: 'html5_inicis',
            pay_method: 'card',
            merchant_uid: 'ORD20180131-0000011',
            name: 'COLURR : CheckOut(t)',
            amount: 99000, 
            buyer_email: 'soldesk510@soldesk.com',
            buyer_name: '솔데스크',
            buyer_tel: '010-1234-5678',
            buyer_addr: '서울특별시 종로구 관철동',
            buyer_postcode: '123-456',
            m_redirect_url: 'https://www.colurr.com/order/checkout_complete'
            /*  
                모바일 결제시,
                결제가 끝나고 랜딩되는 URL을 지정 
                (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐) 
                */
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
        });
    });
</script>
    </body>

    </html>