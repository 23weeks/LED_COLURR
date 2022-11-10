<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대경로 설정 -->
<c:set var='root' value="${pageContext.request.contextPath}/"/>	

<script>
	alert('데이터 연동 완료')
	location.href='${root}notice_read'
</script>