<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp"%>
<%@ page import="model1.board.BoardDAO"%>
<%@ page import="model1.board.BoardDTO"%>
<%@ page import="java.util.List" %>
<%@ page import="model1.replay.ReplyDTO" %>
<%@ page import="model1.replay.ReplyDAO" %>
<%
	
	String num = request.getParameter("num");
	BoardDAO dao = new BoardDAO(application);
	ReplyDAO replyDAO = new ReplyDAO(application);
	
	// 조회수 증가
	dao.updateVisitCount(num);
	
	// 상세 정보 받기
	BoardDTO dto = dao.selectView(num);
	
	
	List<ReplyDTO> replyLists = replyDAO.selectReply(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

	function deletePost() {
	    let confirmed = confirm("정말로 삭제하겠습니까?"); 
	    if (confirmed) {
	        let form = document.writeFrm;       // 이름(name)이 "writeFrm"인 폼 선택
	        form.method = "post";               // 전송 방식 
	        form.action = "DeleteProcess.jsp";  // 전송 경로
	        form.submit();                      // 폼값 전송
	    }
	}
	

</script>

</head>
<body>
	<jsp:include page="../Common/Link.jsp" />
	<h2>회원제 게시판 - 상세 보기(View)</h2>
	<form name = "writeFrm">
		<input type="hidden" name="num" value="<%= num %>" />
		<table border="1" width="90%">
			<tr>
				<td>번호</td>
				<td><%=dto.getNum() %></td>
				<td>작성자</td>
				<td><%=dto.getName() %></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><%=dto.getPostdate() %></td>
				<td>조회수</td>
				<td><%=dto.getVisitcount() %></td>
			</tr>
			<tr>
				<td>제목</td>
				<td colspan="3"><%=dto.getTitle() %></td>
			</tr>
			<tr>
				<td>내용</td>
				<td colspan="3" height="100"><%=dto.getContent().replace("\r\n","<br/>") %></td>
			</tr>
			<tr>
				<td colspan="4" align="center">
				<%
					if(session.getAttribute("UserId") != null 
					    && session.getAttribute("UserId").toString().equals(dto.getId())) {
				%>
					<button type="button" onclick="location.href='Edit.jsp?num=<%=dto.getNum()%>'">수정하기</button>
					<button type="button" onclick="deletePost();">삭제하기</button>
				<%} %>	
					<button type="button" onclick="location.href='List.jsp'">목록보기</button>
				</td>
			</tr>
		</table>
		
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- <p> 댓글 작성 </p> -->
	<!-- 정상동작 확인후 주석처리 -->
	<%-- <table border="1" width="90%">
     	<tr>
     		<th width="10%">번호</th>
     		<th width="50%">댓글내용</th>
     		<th width="15%">작성자</th>
     		<th width="10%">날짜</th>
     		<th width="15%">원글번호</th>
     	</tr>
     	<% 
     		for(ReplyDTO rDto : replyLists){	   		  
 		%>
     	<tr>
     		<td><%=rDto.getReplyno() %></td>
     		<td><%=rDto.getReplycomment() %></td>
     		<td><%=rDto.getId() %></td>
     		<td><%=rDto.getRegidate() %></td>
     		<td><%=rDto.getNum() %></td>
     	<tr>
     	<%} %>
	</table> --%>
</body>
</html>









