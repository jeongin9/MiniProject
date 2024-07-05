<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 목록 조회 테스트</h2>
	<%
		JDBConnect jdbc = new JDBConnect();
	
		String sql = "select * from member";
		
		Statement stmt = jdbc.con.createStatement();
		
		// executeQuery() -> select
		//                -> ResultSet : 조회되 결과
		// ececuteUpdate() -> insert,update,delete
		//                 -> 반환값 0 or 0 보다 큰값 
		
		ResultSet rs = stmt.executeQuery(sql);
		
		// getInt(),getFloat(),getString(),getDate()
		while(rs.next()){
			String id = rs.getString("id");
			String pw = rs.getString("pass");
			String name = rs.getString("name");
			//java.sql.Date regidate = rs.getDate("regidate");
			String regidate = rs.getString("regidate");
			
			out.print(String.format("%s %s %s %s", id, pw, name, regidate) + "<br/>");
		}
		
		jdbc.close();
	%>
</body>
</html>

















