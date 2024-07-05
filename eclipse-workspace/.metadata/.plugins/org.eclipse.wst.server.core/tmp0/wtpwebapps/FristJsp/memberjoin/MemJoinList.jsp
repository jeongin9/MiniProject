<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 목록 보기</h2>
	<%
		JDBConnect jdbc = new JDBConnect();	
	
		String sql = "select * from memjoin";
		
		PreparedStatement psmt = jdbc.con.prepareStatement(sql);
		ResultSet rs = psmt.executeQuery();
		
		while(rs.next()){
			String id = rs.getString("id");
			String pass = rs.getString("pass");
			String name = rs.getString("name");
			String tel = rs.getString("tel");
			String email = rs.getString("email");
			String gender = rs.getString("gender");
			String hobby = rs.getString("hobby");
			String content = rs.getString("content");
			String regidate = rs.getString("regidate");
			
			out.println(String.format("%s %s %s %s %s %s %s %s %s", id, pass, name, tel, email, gender, "[" + hobby + "]", content, regidate) + "<br/>"); 

		}
	%>
</body>
</html>