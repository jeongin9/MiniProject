<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// Date today = new Date();
	// 내장객체
	// request
	// respones
	// out
	// session
	// application
	// pageContext
	// Page
	// config
	// exception
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- query string => ?eng=Hello&han=안녕 -->
	<a href="RequestWebInfo.jsp?eng=Hello&han=안녕">Get방식 전송</a>

	<form action="RequestWebInfo.jsp" method="post">   <!-- method="get" -->
		영어 : <input type="text" name="eng" value="Bye" /><br />
        한글 : <input type="text" name="han" value="잘 가" /><br />
        <input type="submit" value="POST 방식 전송" />
	</form>
	<br>
	<br>
	<form action="RequestParameter.jsp" method="post">
		아이디 : <input type="text" name="id" value="" /><br />
        성별 :
        <input type="radio" name="sex" value="man" />남자
        <input type="radio" name="sex" value="woman" checked="checked" />여자
        <br />
        관심사항 :
        <input type="checkbox" name="favo" value="eco" />경제
        <input type="checkbox" name="favo" value="pol" checked="checked" />정치
        <input type="checkbox" name="favo" value="ent" />연예<br />
        자기소개:
        <textarea name="intro" cols="30" rows="4"></textarea>
        <br />
        <input type="submit" value="전송하기" />
	</form>
	
</body>
</html>













