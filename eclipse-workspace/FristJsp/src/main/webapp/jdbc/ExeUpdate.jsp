<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 추가 테스트</h2>
	<%
		JDBConnect jdbc = new JDBConnect();
		
		String id = "test1";
		String pass = "1111";
		String name = "테스트1회원";
		
		//String sql = "insert into member (id,pass,name) values ('" + id + "','" + pass + "','" + name + "')";
		String sql = "insert into member (id,pass,name) values (?,?,?)";
		
		PreparedStatement psmt = jdbc.con.prepareStatement(sql);
		psmt.setString(1,id);
		psmt.setString(2,pass);
		psmt.setString(3,name);
				
		// executeQuery() -> select
		// ececuteUpdate() -> insert,update,delete
		//                 -> 반환값 0 or 0 보다 큰값                   
		
		int result = psmt.executeUpdate();
		
		if(result > 0){
			out.print(result + "행이 입력 되었습니다.");
		}else{
			out.print("입력이 실패 되었습니다.");
		}
		
		jdbc.close();

	%>
</body>
</html>

