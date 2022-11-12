<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>COLURR</title>
</head>
<body>


<div class="card-title" style="font-family: onb;"><div class="user">결제내역</div></div>
<!-- 게시글 리스트 -->
<div class="container" style="font-size:20px; font-family: onb; margin-top:1.3%">
	<div class="card shadow">
		<div class="card-body" style="font-family: onb;" >

			<table class="table table-hover" id='board_list'>
				<thead>
					<tr>
						<th class="text-center d-none d-md-table-cell">결제일자</th>
						<!-- <th class="w-50">제목</th> -->
						<th class="text-center d-none d-md-table-cell">결제방식</th><!-- 확인용으로 넣어둔것  -->
						<th class="text-center d-none d-md-table-cell">결제수량</th>
						<th class="text-center d-none d-md-table-cell">결제금액</th>
						
					</tr>
				</thead>
				<tbody>
				<c:forEach var="pay" items="${payList}">
					<tr>
						<td class="text-center d-none d-md-table-cell">${pay.pay_date} </td>
						<td class="text-center d-none d-md-table-cell">${pay.pay_method}</td>
						<td class="text-center d-none d-md-table-cell">${pay.pay_amount}</td>
						<td class="text-center d-none d-md-table-cell">${pay.pay_sum}</td>
			
					</tr>
				</c:forEach>
				</tbody>
			</table>
			
			
		</div>
	</div>
</div>



</body>
</html>