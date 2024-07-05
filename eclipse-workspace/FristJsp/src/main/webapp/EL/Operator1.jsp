<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num1 = 3;
	pageContext.setAttribute("num2", 4);
	pageContext.setAttribute("num3", "5");  
	pageContext.setAttribute("num4", "8"); 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 변수 출력 : ${num1 } <br>
	 영역 변수 출력 : ${num2 } <br>
	 변수에 값 할당 : ${num1 = 7 } <br>
	 
	 ${num1 + num2 } <br>
	 ${num3 / num4 } <br>
	 ${num3 div num4 } <br>
	 
	
	 
	 num4 > num3 :  ${num4 > num3 }<br>
	 num4 > num3 :  ${num4 gt num3 }<br>
	 num4 < num3 :  ${num4 lt num3 }<br>
	 num4 == num3 :  ${num4 eq num3 }<br>
</body>
</html>















