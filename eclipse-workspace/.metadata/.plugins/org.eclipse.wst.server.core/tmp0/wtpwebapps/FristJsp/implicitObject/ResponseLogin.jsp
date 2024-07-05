<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("user_id");
	String pwd = request.getParameter("user_pwd"); 

	if(id.equals("must") && pwd.equals("1234")){
		//로그인 성공시
		response.sendRedirect("ResponseWelcome.jsp");
	}else{
		//로그인 실패시
		request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request,response);
	}
%>