<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int add(int x,int y){
		return x + y;
	}
%>

<%
	int result = add(10,20);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=result %>
	<br>
	<%=add(100,200) %>
</body>
</html>











