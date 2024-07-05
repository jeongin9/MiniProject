<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
	// 1.Connection 객체 생성
	
	Connection conn = null;
	
	String driver ="oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    
    Boolean connect = false;
    
    try{
    	
    	// 2.DriverManager 객체 생성, 등록
    	Class.forName(driver);
    	conn = DriverManager.getConnection(url,"musthave","1234");
    	
    	connect = true;
    	
    	// DB연결 종료
		conn.close();    	
    	
    }catch(Exception e){
    	
    }
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(connect == true) {%>
		<h1>연결 성공</h1>
	<%}else{ %>
		<h1>연결 실패</h1>
	<%} %>
</body>
</html>






