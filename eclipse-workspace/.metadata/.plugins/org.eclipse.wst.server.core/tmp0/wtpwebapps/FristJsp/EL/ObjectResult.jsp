<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>Person객체 => 이름 : ${personObj.name }, 나이 : ${personObj.age } </li>
		<li>String객체 => ${stringObj }</li>
		<li>Integer객체 => ${integerObj }</li>	
	</ul>
	<p>+</p>
	<ul>
		<li>${param.firstNum  + param['secondNum']}</li>
		<li>${param.firstNum} + ${param["secondNum"] }</li>
	</ul>
</body>
</html>