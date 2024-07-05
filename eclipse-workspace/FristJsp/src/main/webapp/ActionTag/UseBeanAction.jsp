<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.Person" %>
<%
	/* String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	Person person = new Person();
	person.setName(name);
	person.setAge(age); */
			
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%@ page import="common.Person" %>   --%>  
	<!-- Person person = new Person(); -->
	<!-- person.setName("hong"); -->
	<!-- person.getName(); -->
	
	<%-- <jsp:useBean id="person" class="common.Person"></jsp:useBean>	 --%>
	<%-- <jsp:setProperty property="name" name="person" value="hong"/> --%>
	
	<%-- <jsp:setProperty property="name" name="person" param="name"/> --%>
	<%-- 이름 : <jsp:getProperty property="name" name="person"/> --%>
	
	<%-- <jsp:setProperty property="age" name="person" value="10"/> --%>
	
	<%-- <jsp:setProperty property="age" name="person" param="age"/> --%>
	<%-- 나이 : <jsp:getProperty property="age" name="person"/> --%>
	
	
	<jsp:useBean id="person" class="common.Person"></jsp:useBean>
	<!-- 파라메터와 setter메소드 이름이 같아야한다. -->
	<jsp:setProperty property="*" name="person"/>
	
	이름 : <jsp:getProperty property="name" name="person"/>
	<br>
	나이 : <jsp:getProperty property="age" name="person"/> 
</body>
</html>








