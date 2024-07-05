<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>포워드로 전달된 페이지</h2>
	<%
		String rString = (String)request.getAttribute("requestString");
		Person rPerson = (Person)request.getAttribute("requestPerson");
	%>
	
	<p><%=rString %></p>
	<p><%=rPerson.getName() %>,<%=rPerson.getAge() %></p>
	
	<%
		request.setCharacterEncoding("utf-8");
		String paramHan = request.getParameter("paramHan");
		String paramEng = request.getParameter("paramEng");
	%>
	
	<%=paramHan %>
	<br>
	<%=paramEng %>
</body>
</html>








