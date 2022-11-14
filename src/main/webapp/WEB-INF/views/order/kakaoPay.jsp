<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>COLURR</title>
</head>
<body>

<h1> kakao api 이용하기</h1>

<form method="post" action="${root}kakaoPay">
	<button>카카오페이로 결제하기</button>
</form>

</body>
</html>