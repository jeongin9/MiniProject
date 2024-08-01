<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Travel It</title>
<style>

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        
        .navbar {
            background-color: #f6f6f6;
            padding: 10px;
            display: flex;
            justify-content: center; /* 중앙 정렬 */
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 100px; /* 위에서 100px 아래로 배치 */
        }

        .navbar a {
            margin: 0 15px; /* 링크 사이의 간격을 15px로 설정 */
            text-decoration: none; /* 링크 밑줄 제거 */
            color: #000; /* 링크 색상 설정 */
            font-size: 20px;
            position: relative;
            margin-left:60px;
            margin-right:60px;
        }

        .navbar a:hover {
            color: #007BFF;
        }

        .navbar a:not(:last-child)::after {
            content: '|';
            position: absolute;
            right: -60px;
            color: #000;
        }

        .footer {
            background-color: #f8f9fa;
            padding: 20px;
            text-align: center;
            margin-top: 20px;
        }
</style>

</head>
<body>

<!-- 네비게이션 바 -->
<header>
    <div class="navbar">
        <a href="#">스토리</a>
        <a href="#">관광명소</a>
        <a href="#">로컬푸드</a>
        <a href="#">트래블매거진</a>
        <a href="#">이벤트</a>
        <a href="#">공지사항</a>
    </div>
</header>

<!-- 푸터 -->
<!-- <div class="footer">
    <p>고객센터: 오전 9시 - 새벽 3시 운영</p>
    <p>전화: 1453 - 7545</p>
    <p>Travel It</p>
</div> -->
<div class ="footer">
<section class="footerframe">
      <div class="div1">
         <p class = "p1"> 고객센터
         오전 9시 - 새벽 3시 운영
         </p>
         <p class = "p2">
            <button id="phone" img="phone-Icon">1453-7545</button>
            <button id="Group 25" img="group 25">카카오톡 채널</button>
         </p>
         <p class = "p3"> 스토리  관광명소  로컬푸드  트래블매거진 
         
      
      </div>
      <div class="footerCompanyInfo">
      <br> 
         <p class = "p4"> 스토리  관광명소  로컬푸드  트래블매거진 이벤트 공지사항</p>
         <p class = "p5"> 국내 해외 국내 해외 이달의 매거진 월별 매거진 당첨자 발표 진행중인 이벤트  </p>
         <p class = "p6"> </p>  
         주소: 서울특별시 강남구 봉은사로 479, 479타워 11층 | 대표이사 : 정명훈 | 사업자등록번호 : 742-86-00224 사업자정보확인
         전자우편주소 : help@yeogi.com | 통신판매번호 : 2017-서울강남-01779 | 관광사업자 등록번호 : 제1026-24호 | 전화번호 : 1670-6250 | 호스팅서비스제공자의 상호 표시 : (주) 트래블잇 컴퍼니
         (주)트래블잇 컴퍼니는 통신판매중개자로서 통신판매의 당사자가 아니며, 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.
            </p>
            <p class = "p7">
               이용약관  개인정보처리 방침  소비자 분쟁해결 기준  콘텐츠산업진흥법에 의한 표시
            </p>
      </div>
   </section>
</div>

</body>
</html>
