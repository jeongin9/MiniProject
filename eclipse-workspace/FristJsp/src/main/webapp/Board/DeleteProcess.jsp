<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp"%>
<%@ page import="model1.board.BoardDAO"%>
<%@ page import="model1.board.BoardDTO"%>
<%@ page import="utils.JSFunction"%>

<%
	String num = request.getParameter("num");
	
	BoardDTO dto = new BoardDTO();
	BoardDAO dao = new BoardDAO(application);
	dto = dao.selectView(num);
	
	String sessionId = session.getAttribute("UserId").toString();
	
	if(sessionId.equals(dto.getId())){
		// 삭제 처리
		
		dto.setNum(num);
		int result = dao.deletePost(dto);
		dao.close();
		
		if(result > 0){
			// 삭제 성공
			JSFunction.alertLocation("삭제되었습니다", "List.jsp", out);
		}else{
			// 삭제 실패
			JSFunction.alertBack("삭제에 실패하였습니다.", out);	
		}
	}else{
		// 본인 인증 실패시 
		JSFunction.alertBack("본인만 삭제할 수 있습니다.", out);	
		return;
	}
	
%>









