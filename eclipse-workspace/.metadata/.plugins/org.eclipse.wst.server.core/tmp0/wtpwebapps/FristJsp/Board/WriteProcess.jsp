<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp"%>
<%@ page import="model1.board.BoardDAO"%>
<%@ page import="model1.board.BoardDTO"%>
<%@ page import="utils.JSFunction"%>
<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");	
	
	BoardDTO dto = new BoardDTO();
	
	dto.setTitle(title);
	dto.setContent(content);
	dto.setId((String)session.getAttribute("UserId"));
	
	BoardDAO dao = new BoardDAO(application);
	//int result = dao.insertWrite(dto);
	
	int result = 0;
	
	for(int i=1;i<= 100;i++){
		dto.setTitle(title + "-" + i);
		result = dao.insertWrite(dto);
	}
	
	dao.close();
	
	if(result > 0){
		response.sendRedirect("List.jsp");
	}else{
		JSFunction.alertBack("글쓰기에 실패하였습니다.", out);
	}
			
%>






