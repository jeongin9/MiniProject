<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("UserId");
	session.removeAttribute("UserName");
	
	// session.invalidate(); 모두 값을 삭제
	
	response.sendRedirect("LoginForm.jsp");
%>