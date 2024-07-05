<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- /FristJsp/Servlet/DirectServletPrint.do => 절대경로 -->
	<!-- ../Servlet/DirectServletPrint.do => 상대경로 -->
	<!-- ./DirectServletPrint.do => 상대경로 -->
	<form method="post" action="./DirectServletPrint.do">
		<input type="submit" value="바로가기">
	</form>
</body>
</html>