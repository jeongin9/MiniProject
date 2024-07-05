<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="utils.JSFunction" %>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pass = request.getParameter("password_01");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	String gender = request.getParameter("man");
	
	String[] hobbys = request.getParameterValues("habby");	
	
	String hobby = "";
	
	for(String hy : hobbys){
		hobby += hy + ",";
	}
	
	String content = request.getParameter("textarea");
	
	
	JDBConnect jdbc = new JDBConnect();
	
	String sql = " insert into memjoin "
			+ " values (?,?,?,?,?,?,?,?,sysdate) ";
	
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	
	psmt.setString(1,id);
	psmt.setString(2,pass);
	psmt.setString(3,name);
	psmt.setString(4,tel);
	psmt.setString(5,email);
	psmt.setString(6,gender);
	psmt.setString(7,hobby);
	psmt.setString(8,content);

	int result = psmt.executeUpdate();
	
	jdbc.close();
	
	if(result > 0 ){
		JSFunction.alertLocation("데이터 삽입 성공", "MemJoinList.jsp", out);
	}
%>
