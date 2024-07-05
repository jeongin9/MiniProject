<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="common.Person"%>
<%
	Map<String,Person> maps = new HashMap<>();
	maps.put("actor1",new Person("김길동",30));
	maps.put("actor2",new Person("이순신",20));
	application.setAttribute("maps", maps);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	application영영에 속성 저장완료
</body>
</html>