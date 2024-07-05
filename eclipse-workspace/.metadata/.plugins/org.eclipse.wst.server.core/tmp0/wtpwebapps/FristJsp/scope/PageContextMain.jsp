<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<%
	pageContext.setAttribute("pageInteger", 1000);
	pageContext.setAttribute("pageString", "페이지 영역의 문자열");
	pageContext.setAttribute("pagePerson", new Person("홍길동",20));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int pInteger = (Integer)pageContext.getAttribute("pageInteger");
		String pString = (String)pageContext.getAttribute("pageString");
		Person pPerson = (Person)pageContext.getAttribute("pagePerson");	 
	%>
	
	<ul>
		<li><%=pInteger %></li>
		<li><%=pString %></li>
		<li><%=pPerson.getName() %>,<%=pPerson.getAge() %></li>
	</ul>
	
	<h2>페이지 이동 후 page 영역 읽어오기</h2>
    <a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>
</body>
</html>












