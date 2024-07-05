<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="common.Person" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>List 컬렉션</h2>
<%
	List<Object> aList = new ArrayList<>();
	aList.add("청해진");
	aList.add(new Person("장보고",33));
	pageContext.setAttribute("Ocean", aList);
	
	//aList.get(0);
%>
	<ul>
		<li>0번째 요소 : ${Ocean[0] }</li>  <!-- aList.get(0); -->
		<li>1번째 요소 : ${Ocean[1].name } , ${Ocean[1].age }</li> <!-- aList.get(1).name; -->
		<li>1번째 요소 : ${Ocean[2] }</li>	
	</ul>

<h2>Map 컬렉션</h2>
<%
	Map<String, String> map = new HashMap<String, String>();
	map.put("한글","훈민정음");
	map.put("Eng","English");
	pageContext.setAttribute("King", map);
	
	// map.get("한글");
%>
	<ul>
		<li>영문 Key : ${King["Eng"] },${King['Eng'] },${King.Eng }</li> <!-- map.get("한글"); -->
		<li>한글 Key : ${King["한글"] },${King['한글'] }</li>
	</ul>
</body>
</html>







