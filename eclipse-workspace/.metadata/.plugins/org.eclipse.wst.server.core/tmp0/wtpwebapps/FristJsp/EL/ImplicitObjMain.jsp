<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//pageContext.setAttribute("scopeValue", "페이지 영역");
	request.setAttribute("scopeValue", "리퀘스트 영역");
	session.setAttribute("scopeValue", "세션 영역");
	application.setAttribute("scopeValue","애플리케이션 영역");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>각 영역에 저장된 속성 읽기</h3>
	
	페이지영역 : <%= pageContext.getAttribute("scopeValue") %>
	
	<p>페이지영역 : ${ pageScope.scopeValue }</p>
	<p>리퀘스트영역 : ${ requestScope.scopeValue }</p>
	<p>세션영역 : ${ sessionScope.scopeValue }</p>
	<p>애플리케이션영역 : ${ applicationScope.scopeValue }</p>
	
	<h3>영역 지정 없이 속성 읽기</h3>
	<p>${scopeValue }</p>
</body>
</html>


