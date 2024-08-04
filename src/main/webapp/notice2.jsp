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
.announcement {
	
    padding: 20px;
    background-color: #f0f4ff; /* 연한 파란색 배경 */
    text-align: left;
    border-bottom: 1px solid #ddd;
      height: 250px; 
}

.announcement h2 {
    margin: 0;
    font-size: 28px;
    color: #333;
}

.announcement p {
    margin-top: 10px;
    font-size: 18px;
    color: #666;
}

.camp {
position: absolute;
right:200px;
width: 200px;
height: 200px;
top: 200px;
}

.notice1 {
position: absolute;
left: 200px;
top: 250px;
}

.notice2 {
position: absolute;
left: 200px;
top: 300px;
}


/* /////////////////////// */


body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f8f8f8;
    
}

main {
    padding: 20px;
    
}


        .content-area {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            margin: 0 auto;
            max-width: 1000px; /* 최대 너비 설정 */
        }

        .board-table {
            width: 100%;
            border-collapse: collapse;
        }

        .board-table th, .board-table td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        .board-table th {
            background-color: #f0f4ff;
            color: #333;
        }

        .board-table td a {
            text-decoration: none;
            color: #333;
        }

        .board-table td a:hover {
            text-decoration: underline;
        }
        
        
.pagination {
    display: flex;
    justify-content: center;
    margin: 20px 0;
}

.pagination a {
    color: #333;
    padding: 8px 16px;
    text-decoration: none;
    margin: 0 5px;
    border-radius: 5px;
    border: 1px solid #ddd;
    transition: background-color 0.3s, color 0.3s;
}

.pagination a:hover {
    background-color: #ddd;
}

.pagination a.active {
    background-color: #007bff;
    color: white;
    border: 1px solid #007bff;
}

  .write-btn {
            display: inline-block;
            margin-bottom: 20px;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            position: absolute;
			right:200px;
        }

        .write-btn:hover {
            background-color: #0056b3;
          
        }
    </style>
</head>
<body>
<header>
    <jsp:include page="header.jsp" />
    
    <main>
    <section class="announcement">
        <h2 class="notice1">공지사항</h2>
        <p class="notice2">트래블 잇의 주요 소식을 안내받으세요!</p>
        <img src="resources/camp.png" class="camp">
    </section>
</main>

<main>
<section>
	<div>
		<!-- <h1>공지사항</h1>  
		<h4>트래블 잇의 주요 소식을 안내받으세요!</h4> -->
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
	
	</section>
	</main>
	<main>
	<section><a href="write.jsp" class="write-btn">관리자로 글 작성</a></section>
	</main>
	
	 <main>
       <section class="content-area">
        <table class="board-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>제목</th>
                    <th>조회수</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><a href="#">신규 회원 이용 가이드</a></td>
                    <td>211,445</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td><a href="#">관광명소, 로컬푸드 등록 시 주의사항</a></td>
                    <td>211,445</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td><a href="#">스토리 작성 가이드 ver.1</a></td>
                    <td>211,445</td>
                </tr>
                <!-- 추가적인 게시물은 여기에 추가 -->
            </tbody>
        </table>
    </section>
             <div class="pagination">
            <a href="#">&laquo;</a>
            <a href="#" class="active">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">&raquo;</a>
        </div>
    </main>
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