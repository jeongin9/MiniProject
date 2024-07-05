<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="utils.JSFunction" %>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pwd");
	String name = request.getParameter("name");
	
	JDBConnect jdbc = new JDBConnect();
	
	String sql = "insert into member (id,pass,name) values (?,?,?)";
	
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	
	psmt.setString(1,id);
	psmt.setString(2,pass);
	psmt.setString(3,name);
	
	int result = psmt.executeUpdate();
	
	if(result > 0 ){
		JSFunction.alertLocation("데이터 삽입 성공", "MemberList.jsp", out);
	}
%>









