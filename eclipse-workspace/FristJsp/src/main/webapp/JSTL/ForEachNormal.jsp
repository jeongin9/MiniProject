<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<%@ page import="common.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach begin="1" end="3" step="1" var="i">
		<p>반복 ${i } 입니다.</p>
	</c:forEach>
	
	<table border="1">
		
		<c:forEach begin="3" end="5" var="i" varStatus="loop">
			<tr>
				<td>count : ${loop.count }</td>
				<td>index : ${ loop.index }</td>
				<td>current : ${ loop.current }</td>
				<td>first : ${ loop.first }</td>
				<td>last : ${ loop.last }</td>
			</tr>
		</c:forEach>
		
	</table>
	
	<%
		 String[] rgba = {"Red", "Green", "Blue", "Black"};
	%>
	
	<c:forEach items="<%=rgba %>" var="c">
		<span style="color:${c}">${c }</span>
	</c:forEach>
	
	<h4>List 컬렉션 사용하기</h4>
	<%
	LinkedList<Person> lists = new LinkedList<Person>();
    lists.add(new Person("맹사성", 34));
    lists.add(new Person("장영실", 44));
    lists.add(new Person("신숙주", 54));
	%>
	
	<c:set var="lists" value="<%=lists %>" />
	<c:forEach items="${lists }" var="list">
		 이름 : ${list.name },  나이 : ${list.age } <br><br>
	</c:forEach>
	
	
	<h4>Map 컬렉션 사용하기</h4>
	
	<%
	Map<String,Person> maps = new HashMap<String,Person>();
    maps.put("1st", new Person("맹사성", 34));
    maps.put("2nd", new Person("장영실", 44));
    maps.put("3rd", new Person("신숙주", 54));
    
    // 키값 , 이름 , 나이 출력
	%>
	
	<c:set var="maps" value="<%=maps %>" />
	<c:forEach items="${maps }" var="map"> 
		Key => ${map.key }<br>
		Value => 이름: ${map.value.name }, 나이: ${map.value.age}
	</c:forEach>
	
</body>
</html>







