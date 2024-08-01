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
<div class="footer">
    <p>고객센터: 오전 9시 - 새벽 3시 운영</p>
    <p>전화: 1453 - 7545</p>
    <p>Travel It</p>
</div>

</body>
</html>
