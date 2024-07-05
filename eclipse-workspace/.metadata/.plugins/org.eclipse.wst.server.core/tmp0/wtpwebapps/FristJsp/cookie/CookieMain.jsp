<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키생성</h1>
	<%
		Cookie cookie1 = new Cookie("myCookie1","쿠키맛나요1");
		cookie1.setPath(request.getContextPath()); // 경로를 루트로 설정
		cookie1.setMaxAge(3600);  // 1시간 유효
		response.addCookie(cookie1);  // 응답헤서에 쿠키 정보가 추가된다.
		
		Cookie cookie2 = new Cookie("myCookie2","쿠키맛나요2");
		cookie2.setPath(request.getContextPath()); // 경로를 루트로 설정
		cookie1.setMaxAge(3600);  // 1시간 유효
		response.addCookie(cookie2);  // 응답헤서에 쿠키 정보가 추가된다.
	%>
	<h1>쿠키정보 확인</h1>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie c: cookies ){
				String cookieName =  c.getName();
				String cookieValue = c.getValue();
				
				out.print(cookieName + "<br>");
				out.print(cookieValue);
			}
		}
	%>
</body>
</html>






