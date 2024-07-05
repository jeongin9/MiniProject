<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp"%>
<%@ page import="model1.replay.ReplyDAO"%>
<%@ page import="model1.replay.ReplyDTO"%>
<%@ page import="utils.JSFunction"%>
<%
	String content = request.getParameter("replycontent");
	String num = request.getParameter("num");
	
	ReplyDTO rDto = new ReplyDTO();
	
	rDto.setReplycomment(content);
	rDto.setId((String)session.getAttribute("UserId"));
	rDto.setNum(num);
	
	ReplyDAO dao = new ReplyDAO(application);
	int result = dao.insertReply(rDto);
	dao.close();
	
	if(result > 0){
		response.sendRedirect("View.jsp?num=" + num);
	}else{
		JSFunction.alertBack("댓글쓰기에 실패하였습니다.", out);
	}
%>