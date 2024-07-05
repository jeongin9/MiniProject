<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date"%>
<%@ page import="common.Person"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 변수 선언 -->
	<c:set var="directVar" value="100"/>
	<c:set var="elVar" value="${directVal mod 5 }" />
	<c:set var="expVar" value="<%=new Date() %>" />
	<c:set var="betweenVar">변수값 요렇게 설정</c:set>
	
	<ul>
		<li>${pageScope.directVar }</li>
		<li>${elVar }</li>
		<li>${expVar }</li>
		<li>${betweenVar }</li>	
	</ul>
	
	<c:set var="personVar1" value='<%= new Person("박문수",40) %>' scope="request"/>
	
	<ul>
		<li>${requstScope.personVar1.name }</li>
		<li>${personVar1.age }</li>
		
	</ul>
	
	<h4>List 컬렉션 이용하기</h4>
	<%
    	ArrayList<Person> pList = new ArrayList<Person>();
		pList.add(new Person("성삼문", 55));
	    pList.add(new Person("박팽년", 60));
	%>
	
	<c:set var="personList" value="<%=pList %>" scope="request" />
	
	<ul>
		<li>${requestScope.personList[0].name }</li>
		<li>${personList[0].age }</li>
	</ul>
	
	<h4>Map 컬렉션 이용하기</h4>
	<%
		Map<String,Person> pMap = new HashMap<>();
		pMap.put("personArgs1", new Person("하위지", 65));
	    pMap.put("personArgs2", new Person("이개", 67));
	    
	    //EL사용하여 각각을 출력 하세요
	%>
	
    <c:set var="personMap" value="<%=pMap %>" scope="request" />
    
    <ul>
		<li>${requestScope.personMap["personArgs1"].name }</li>
		<li>${personMap.personArgs2.age }</li>
	</ul>

</body>
</html>









