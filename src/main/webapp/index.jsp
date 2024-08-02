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
    </style>
</head>
<body>
    <jsp:include page="header.jsp" />

    <!-- Main content -->
    <section>
        <!-- 스토리시작 -->
        <div class="titleframe2">
            <h2>주간 Best 스토리</h2>
        </div>   
        <div class="items mask">
            <div class="item"> 
                <img src="resources/flower.JPG" width="205" height="230" />
                 <div class="item-content">
                    <p>제목 1</p> <!-- 실제 제목으로 변경 (db에서 받아오기)  -->
                </div>
            </div>
            <div class="item">
                <img src="resources/TOKYO.jfif" width="205" height="230" alt="포트테일" />
                 <div class="item-content">
                    <p>제목 1</p> <!-- 실제 제목으로 변경 (db에서 받아오기)  -->
                </div>
            </div>
            <div class="item">
                <img src="resources/caption.jpg" width="205" height="230" alt="배색패치야상" />
                 <div class="item-content">
                    <p>제목 1</p> <!-- 실제 제목으로 변경 (db에서 받아오기)  -->
                </div>
            </div>
            <div class="item">
                <img src="resources/4wp-87.jpg" width="205" height="230" alt="언발#NB" />
                 <div class="item-content">
                    <p>제목 1</p> <!-- 실제 제목으로 변경 (db에서 받아오기)  -->
                </div>
            </div>
            <div class="item">
                <img src="resources/photo1jpg.jpg" width="205" height="230" alt="에디션" />
                 <div class="item-content">
                    <p>제목 1</p> <!-- 실제 제목으로 변경 (db에서 받아오기)  -->
                </div>
            </div>
        </div>
        <!-- 스토리 끝 -->

        <!-- banner start -->
        <!-- banner 이미지가 없네요...?....src에 이미지만 넣어주면 됩니다. 현재 넣어져있는건 예시... -->
        <div class="swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <img src="https://via.placeholder.com/600x300" alt="Slide 1">
                </div>
                <div class="swiper-slide">
                    <img src="https://via.placeholder.com/600x300" alt="Slide 2">
                </div>
                <div class="swiper-slide">
                    <img src="https://via.placeholder.com/600x300" alt="Slide 3">
                </div>
                <div class="swiper-slide">
                    <img src="https://via.placeholder.com/600x300" alt="Slide 4">
                </div>  
            </div>
            <!-- If we need navigation buttons -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>
            <!-- If we need scrollbar -->
            <div class="swiper-scrollbar"></div>
        </div>
        <!-- banner end -->

<<<<<<< HEAD
          <h2>주간 Best 스토리</h2>
   </div>   
   <div class="items mask">
     <div class="item"> <img src="resources/flower.JPG" width="207" height="210" />
     </div>
     <div class="item">
          <img src="resources/TOKYO.jfif" width="207" height="210" alt="포트테일" />
       </div>
       
       <div class="item">
          <img src="resources/caption.jpg" width="207" height="210" alt="배색패치야상" />
       </div>
       
       <div class="item">
          <img src="resources/4wp-87.jpg" width="207" height="210" alt="언발#NB" />
       </div>
       
       <div class="item">
          <img src="resources/photo1jpg.jpg" width="207" height="210" alt="에디션" />
       </div>
       </div>
       </section>
       <!-- 관광명소 정인 - 끝 -->
       
<!-- 푸터 -->
<div class="footer">
    <p>고객센터: 오전 9시 - 새벽 3시 운영</p>
    <p>전화: 1453 - 7545 </p>
    <p>Travel It</p>
</div>
=======
        <!-- 관광명소시작 -->
        <div class="titleframe2">
            <h2>국내 인기 관광명소</h2>
        </div>   
        <div class="items mask">
            <div class="item"> 
                <img src="resources/flower.JPG" width="205" height="210" />
            </div>
            <div class="item">
                <img src="resources/TOKYO.jfif" width="205" height="210" alt="포트테일" />
            </div>
            <div class="item">
                <img src="resources/caption.jpg" width="205" height="210" alt="배색패치야상" />
            </div>
            <div class="item">
                <img src="resources/4wp-87.jpg" width="205" height="210" alt="언발#NB" />
            </div>
            <div class="item">
                <img src="resources/photo1jpg.jpg" width="205" height="210" alt="에디션" />
            </div>
        </div>
        <!-- 관광명소 끝 -->
        
        <!-- 로컬 푸드  -->
              <div class="titleframe2">
            <h2>국내 인기 관광명소</h2>
        </div>   
        <div class="items mask">
            <div class="item"> 
                <img src="resources/flower.JPG" width="205" height="210" />
            </div>
            <div class="item">
                <img src="resources/TOKYO.jfif" width="205" height="210" alt="포트테일" />
            </div>
            <div class="item">
                <img src="resources/caption.jpg" width="205" height="210" alt="배색패치야상" />
            </div>
            <div class="item">
                <img src="resources/4wp-87.jpg" width="205" height="210" alt="언발#NB" />
            </div>
            <div class="item">
                <img src="resources/photo1jpg.jpg" width="205" height="210" alt="에디션" />
            </div>
        </div>
        
    </section>
>>>>>>> branch 'master' of https://github.com/jeongin9/MiniProject.git

    <jsp:include page="footer.jsp" />

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script>
        const swiper = new Swiper('.swiper', {
            // Optional parameters
            loop: true,
            autoplay: {
                delay: 3000, // 3초마다 자동 전환
                disableOnInteraction: false,
            },
            // If we need pagination
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            // Navigation arrows
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            // Scrollbar
            scrollbar: {
                el: '.swiper-scrollbar',
            },
        });
    </script>
</body>
</html>