<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String sex = request.getParameter("sex");
	String[] favo = request.getParameterValues("favo");
	
	String favoStr = "";
	
	for(int i=0;i<favo.length;i++){
		favoStr += favo[i] + ",";
	}
	
	String intro = request.getParameter("intro");

%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><%=id %></li>
		<li><%=sex %></li>
		<li><%=favoStr %></li>
		<li><%=intro %></li>
	</ul>
</body>
</html>










