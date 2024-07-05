<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String eng = request.getParameter("eng");
	String han = request.getParameter("han");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>RequestWebInfo.jsp 페이지</h1> 
	영어 : <%=eng %>
	<br>
	한글 : <%=han %>
</body>
</html>