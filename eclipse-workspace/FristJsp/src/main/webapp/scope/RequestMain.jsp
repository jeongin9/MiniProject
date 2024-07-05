<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<%
	request.setAttribute("requestString", "request영역의 문자열");
	request.setAttribute("requestPerson", new Person("안중근", 31)); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		request.removeAttribute("requestString");
		String rString = (String)request.getAttribute("requestString");
		Person rPerson = (Person)request.getAttribute("requestPerson");
	%>
	
	<p><%=rString %></p>
	<p><%=rPerson.getName() %>,<%=rPerson.getAge() %></p>
	
	<%
		request.getRequestDispatcher("ReqeustForward.jsp?paramHan=한글&paramEng=English")
		.forward(request,response);
	%>
</body>
</html>








