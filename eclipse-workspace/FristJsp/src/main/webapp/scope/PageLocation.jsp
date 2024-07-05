<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<%
	int pInteger = (Integer)pageContext.getAttribute("pageInteger");
	String pString = (String)pageContext.getAttribute("pageString");
	Person pPerson = (Person)pageContext.getAttribute("pagePerson");	 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><%=pInteger %></li>
		<li><%=pString %></li>
		<li><%=pPerson.getName() %>,<%=pPerson.getAge() %></li>
	</ul>
</body>
</html>