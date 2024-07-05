<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="number" value="100" />
	<c:set var="string" value="JSP" />
	
	<c:if test="${number mod 2 eq 0}" var="result">
		${number } 는 찍수 입니다.<br>
	</c:if>
	
	result : ${result } <br>
	
	<h4>choose 태그로 홀짝 판단하기</h4>
	
	<c:choose>
		<c:when test="${number mod 2 eq 0}">
			${number } 는 찍수 입니다.<br>
		</c:when>
		<c:otherwise>
			${number } 는 홀수 입니다.<br>
		</c:otherwise>
	</c:choose>
	
	<c:choose>
		<c:when test="${number >= 90}">
			A 학점<br>
		</c:when>
		<c:when test="${number ge 80}">
			B 학점<br>
		</c:when>
		<c:when test="${number >= 70}">
			C 학점<br>
		</c:when>
		<c:otherwise>
			F 학점<br>
		</c:otherwise>
	</c:choose>
</body>
</html>











