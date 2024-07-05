<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
<style type="text/css">
body {
	background-image: url(img/06_bg_01.jpg);
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #151515;
}
body,td,th {
	font-size: 12px;
}
.layout_1col {
	margin: 0px;
	padding: 0px;
	width: 200px;
	float: left;
}
.layout_4col {
	margin: 0px;
	padding: 0px;
	width: 800px;
	float: left;
}
#layoyt_1200 {
	margin: 0px;
	padding: 0px;
	float: left;
	width: 1200px;
}
.box_200 {
	background-color: #e4e4e4;
	margin: 0px;
	padding: 0px;
	float: left;
	height: 200px;
	width: 200px;
}
.box_200_02 {
	background-color: #6aaedd;
	margin: 0px;
	padding: 0px;
	float: left;
	height: 200px;
	width: 200px;
}
.box_200_03 {
	background-color: #ffffff;
	margin: 0px;
	padding: 0px;
	float: left;
	height: 200px;
	width: 200px;
}
.box_200_04 {
	margin: 0px;
	padding: 10px;
	float: left;
	height: 180px;
	width: 180px;
	font-family: "나눔고딕", "돋움", "돋움체";
	font-size: 12px;
	line-height: 14px;
	color: #F0F0F0;
}
.box_200_05 {
	background-color: #82a9c7;
	margin: 0px;
	padding: 0px;
	float: left;
	height: 200px;
	width: 200px;
}
.box_400 {
	background-color: #e4e4e4;
	margin: 0px;
	padding: 0px;
	float: left;
	height: 200px;
	width: 400px;
}
.box_h400 {
	background-color: #e4e4e4;
	margin: 0px;
	padding: 0px;
	float: left;
	height: 400px;
	width: 200px;
}
.box_text_01 {
	background-color: #ffffff;
	margin: 0px;
	padding: 20px;
	float: left;
	height: 560px;
	width: 760px;
	font-family: "나눔고딕", "돋움", "돋움체";
	font-size: 14px;
	color: #2E2E2E;
}
.main_menu {
	margin: 10px;
	font-family: "나눔고딕", "돋움", "돋움체";
	font-size: 14px;
	font-weight: bold;
}
p {
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 14px;
	margin-left: 0px;
	font-family: "나눔고딕", "돋움", "돋움체";
	font-size: 14px;
	line-height: 22px;
	padding: 0px;
	color: #2A2525;
}
.text_title {
	font-weight: bold;
	color: #4F8596;
}
.copy_naver {
	font-size: 12px;
	font-weight: bold;
	color: #7A8624;
}
.box_200_06 {
	height: 50px;
	width: 180px;
	padding-top: 140px;
	padding-right: 10px;
	padding-bottom: 10px;
	padding-left: 10px;
	margin: 0px;
	float: left;
	color: #F4F4F4;
	font-weight: bold;
	text-align: right;
	font-size: x-large;
	line-height: 16pt;
}
</style>
<script>
	
	function go_save() {

		var cob_check = document.querySelectorAll('input[name="habby"]:checked').length;

		if (document.form1.id.value == "") {
			alert("아이디를 입력하여 주세요.");
			document.form1.id.focus();
		} else if (document.form1.password_01.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.form1.pwd.focus();
		} else if ((document.form1.password_01.value != document.form1.password_02.value)) {
			alert("비밀번호가 일치하지 않습니다.");
			document.form1.password_01.focus();
		} else if (document.form1.name.value == "") {
			alert("이름을 입력해 주세요.");
			document.form1.name.focus();
		} else if (document.form1.tel.value == "") {
			alert("전화번호를 입력해 주세요.");
			document.form1.tel.focus();
		} else if (document.form1.email.value == "") {
			alert("이메일을 입력해 주세요.");
			document.form1.email.focus();
		} else if (document.form1.man.value == "") {
			alert("성별을 선택해 주세요.");
			document.form1.man.focus();
		} else if (cob_check == 0) {
			alert("관심분야를 선택해 주세요.");
			document.form1.che.focus();
		} else if (document.form1.textarea.value == "") {
			alert("인사말씀을 입력해 주세요.");
			document.form1.che.focus();
		} 
	}
</script>
</head>

<body>
<div id="layoyt_1200">
<div class="layout_1col">
  <div class="box_200"><img src="img/link/06_link_01.jpg" width="200" height="200" alt=""/></div>
  <div class="box_200_06">회원가입<br>
    <span style="font-size: medium; color: #9E1C1E;">Create Account </span></div>
  <div class="box_200"><img src="img/link/06_link_04.jpg" width="200" height="200" alt=""/></div>
  <div class="box_200"><img src="img/link/06_link_07.jpg" width="200" height="200" alt=""/></div>
  <div class="box_200"><img src="img/link/06_link_06.jpg" width="200" height="200" alt=""/></div>
  
</div>
<div class="layout_4col">
  <div class="box_200">
    <p class="main_menu">Hungary</p>
    <p class="main_menu">Czech</p>
    <p class="main_menu">Poland</p>
  </div>
  <div class="box_200"><img src="img/link/06_link_12.jpg" width="200" height="200" alt=""/></div>
  <div class="box_200"><img src="img/link/06_link_08.jpg" width="200" height="200" alt=""/></div>
  <div class="box_200"><img src="img/link/06_link_11.jpg" width="200" height="200" alt=""/></div>
  <div class="box_text_01">
    <form method="post" name="form1" id="form1" action="MemJoinProcess.jsp">
      <p>
        <label for="아이디">아이디 :</label>
        <input type="text" name="id" id="id">
		<input type="button" value="중복확인" onclick="new_window();">
      </p>
      <p>
        <label for="password_01">비밀번호 :</label>
        <input name="password_01" type="password" id="password_01" size="30" maxlength="30">
      </p>
      <p>
        <label for="password_02">비밀번호확인 :</label>
        <input name="password_02" type="password" id="password_02" size="30" maxlength="30">
        <br>
        </p>
      <p><br>
      </p>
      <hr>
      <p>
        <label for="name"><br>
          이름 :</label>
        <input name="name" type="text" id="name" size="20" maxlength="20">
      </p>
      <p>
        <label for="tel">전화번호 :</label>
        <input name="tel" type="tel" id="tel" autocomplete="off" size="30" maxlength="30">
      </p>
      <p>
        <label for="email">Email :</label>
        <input name="email" type="email" id="email" size="30" maxlength="30">
      </p>
      <p>
        <input type="radio" name="man" id="radio" value="man"> 
        남자    
        <input type="radio" name="man" id="radio2" value="woman">
        <label for="man">여자</label>
      </p>
      <p>관심분야 : 
        <input name="habby" type="checkbox" id="habby" value="sports">
        <label for="checkbox">스포츠</label>
        , 
        <input name="habby" type="checkbox" id="habby" value="tour">
        <label for="checkbox2">여행 </label>
      , 
      <input name="habby" type="checkbox" id="habby" value="movie">
      영화
      </p>
      <p>
        <label for="textarea">인사말 :</label>
        <textarea name="textarea" cols="80" rows="5" id="textarea"></textarea>
      </p>
      <p>&nbsp;</p>
      <p>
        <input type="submit"    value="회원가입"   class="submit"> 
        <input type="reset"      value="취소"     class="cancel">
      </p>
    </form>
    <p class="text_title"><br>
    </p>
  </div>  
  <div class="box_200"><img src="img/link/06_link_15.jpg" width="200" height="200" alt=""/></div>
  <div class="box_200_05">&nbsp;</div>
  <div class="box_400"><img src="img/link/06_link_10.jpg" width="400" height="200" alt=""/></div>
</div>
<div class="layout_1col">  
  <div class="box_h400"><img src="img/link/06_link_13.jpg" width="200" height="400" alt=""/></div>
  <div class="box_200"><img src="img/link/06_link_02.jpg" width="200" height="200" alt=""/></div>
  <div class="box_200"><img src="img/link/06_link_14.jpg" width="200" height="200" alt=""/></div>
  <div class="box_200"><img src="img/link/06_link_16.jpg" width="200" height="200" alt=""/></div>
  <div class="box_200"><img src="img/link/06_link_17.jpg" width="200" height="200" alt=""/></div>
  <div class="box_200"><img src="img/link/06_link_09.jpg" width="200" height="200" alt=""/></div>

</div>
</div>
<script>
	function new_window() {
	  window.open(
		"idcheck.html",
		"Child",
		"width=300, height=200, top=50, left=50"
	  );
	}
</script>
</body>
</html>