<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Travel It</title>
    <link rel="stylesheet" type="text/css" href="resources/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
    <style>
    /* image slide  */
        .swiper {
            width: 100%; /* Adjust to fit your layout */
            height: 300px; /* Adjust height as needed */
        }
        .swiper-slide img {
            width: 100%;
            height: auto;
        }
        .square {
	position: absolute;
	width: 1440px;
	height: 318px;
	
	top: 179px;
	background: #F2F3FF;

}

.research {
	width: 120px;
	height: 30px;
}

.researchbox {
width: 300px;
height: 30px;
}

.btn2 {
height: 35px;
color: puprle;
width: 50px;
}

.searchset {
position: absolute;
	right:180px;
}


    </style>
</head>
<body>
<header>
    <jsp:include page="header.jsp" />
	<div>
		<h1>공지사항</h1>  
		<h4>트래블 잇의 주요 소식을 안내받으세요!</h4>
	  <div class= "searchset">
   <select class="research">
   <option value="제목+내용" name="제목+내용"  >제목+내용</option>
    <option value="제목" name="제목" >제목</option>
    <option value="글쓴이"name="글쓴이">글쓴이</option>
    </select>
    <input type= "text" placeholder="검색어를 입력하세요." class="researchbox">
    <button type="submit" class="btn2">검색</button>
	</div>	         
   
	</div>
</header>
      
<!-- 푸터 -->
<div class="footer">
    <p>고객센터: 오전 9시 - 새벽 3시 운영</p>
    <p>전화: 1453 - 7545 </p>
    <p>Travel It</p>
</div>


    <jsp:include page="footer.jsp" />

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script>
    
    </script>
</body>
</html>