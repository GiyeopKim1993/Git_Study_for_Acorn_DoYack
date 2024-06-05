<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="path"  value="<%=request.getContextPath()%>" />      
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        html, body {
    width: 100%;
    height: 100%;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body {
    display: flex;
    flex-direction: column;
    align-items: center;
}
        .warp {
            width: 100%;
            margin: 0;
            display: flex;
            text-align: center;
            flex-direction: column;
            align-items: center;
            
        }
        .header {
            display: flex;
            width: 100%;
            max-width: 1200px;
            height: 40px;
            align-items: center;
            margin: 0 auto; /* 중앙 정렬을 위해 margin 설정 */
            
            z-index: 99;
            position: fixed;
        }
        .menu {
            position: relative;
            align-items: center;
            cursor: pointer; 
        }
        .logo {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center; /* 중앙 정렬을 위해 padding-left 대신 사용 */
        }
        .menu img {
            width: 40px;
            height: 40px;
        }
        .menu ul {
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #b8b3b3;
            list-style-type: none;
            padding: 0;
            display: none; 
            z-index: 99;
        }
        .menu.open ul {
            display: block; 
        }
        .menu ul li {
            padding: 10px;
        }
        .menu ul li a {
            text-decoration: none;
            color: black;
            display: block;
        }
        .menu ul li a:hover {
            background-color: #ddd;
        }
        .headerVideo {
            width: 100%;
            
            position: relative; 
            background-color: rgb(38, 39, 43);
        }
        .headerVideo video {
            width: 100%;
        }
        .headerVideo h2 {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 100;
            color: white; 
            font-size: 2em;
        }
        .headerVideo a{
            position: absolute;
            top: 60%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 100;
            color: white; 
        }
        .warpFooter {
            width: 100%;
        }
    </style>
    <link
    rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
    crossorigin="anonymous"
  />
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
    integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
    crossorigin="anonymous"
  />
  <link rel="stylesheet" href="${path}/resources/css/login.css" />
  <link rel="stylesheet" href="${path}/resources/css/footer.css" />
</head>
<body>
    <script>
        function toggleMenu() {
            var menu = document.querySelector('.menu');
            menu.classList.toggle('open'); 
        }
    </script>
    <div class="warp">
        <div class="header">
            <div class="menu" onclick="toggleMenu()">
                <img src="https://pilly.kr/images/store/gnb/icon-menu.svg">
                <ul>
                    <li><a href="#">text1</a></li>
                    <li><a href="#">text2</a></li>
                    <li><a href="#">text3</a></li>
                    <li><a href="#">text4</a></li>
                </ul>
            </div>
            <div class="logo"><a href="main"><img src="https://pilly.kr/images/store/gnb/icon-logo.svg"></a></div>
            <div class="shopping"><a href="#"><img src="https://pilly.kr/images/store/gnb/icon-cart.svg"></a></div>
            <div class="mypage"><a href="${path}/loginform"><img src="https://pilly.kr/images/store/gnb/icon-user.svg"></a></div>
        </div>
        <div class="headerVideo">
            <video src="https://img.pilly.kr/main/cover/pillyview_240205.mp4?v=v202405101214" autoplay muted loop></video>
            <h2>맞춤 영양제 <br>스마트하게 시작하세요!</h2>
            <a href="main02.html">모든제품 보기</a>
        </div>
        <div class="warpFooter">
            <footer class="site-footer">
                <div class="container">
                  <div class="row">
                    <div class="col-sm-12 col-md-6">
                      <h6>내일의 나를 만드는 [건강메이드] 필리</h6>
                      <p class="text-justify">
                          주소: 서울특별시 마포구 봉은사로 47길 12, 2동 B102호 (진현빌딩)<br>
                          대표: 강지훈, 사업자번호: 012-345-6789<br>
                          건강기능식품판매업신고: 제 2024-54243 호<br>
                          통신판매업신고: 제 2024-서울 마포구-03029 호 <br>
                          사업자정보확인, 유통판매업신고: 제 2024-43535 호<br>
                          개인정보취급담당부서: 고객경험관리팀, 개인정보관리책임자: 강지훈<br>
                          고객센터: 02-6203-9810, acorncampus@co.kr<br>
                          제휴문의: acorncampus@co.kr
          
                      </p>
                    </div>
                    <div class="col-6 col-md-3">
                      <h6>카테고리</h6>
                      <ul class="footer-links ">
                        <li><a href="#">웹 디자인</a></li>
                        <li><a href="#">UI 디자인</a></li>
                        <li><a href="#">웹 개발자</a></li>
                        <li><a href="#">비디오 편집</a></li>
                        <li><a href="#">테마 제작</a></li>
                      </ul>
                    </div>
                    <div class="col-6 col-md-3">
                      <h6>링크</h6>
                      <ul class="footer-links">
                        <li><a href="#">사이트 소개</a></li>
                        <li><a href="#">행사</a></li>
                        <li><a href="#">개인정보 보호</a></li>
                        <li><a href="#">사이트맵</a></li>
                      </ul>
                    </div>
                  </div>
                  <hr class="small" />
                </div>
                <div class="container">
                  <div class="row">
                    <div class="col-md-8 col-sm-6 col-12">
                      <p class="copyright-text">
                        Copyright © 2024 All Rights Reserved by
                        <a href="#"><span class="logo">WBIFY.</span></a>
                      </p>
                    </div>
                    <div class="col-md-4 col-sm-6 col-12">
                      <ul class="social-icons">
                        <li>
                          <a class="facebook" href="#"><i class="fab fa-facebook-f"></i></a>
                        </li>
                        <li>
                          <a class="twitter" href="#"><i class="fab fa-twitter"></i></a>
                        </li>
                        <li>
                          <a class="dribbble" href="#"><i class="fab fa-dribbble"></i></a>
                        </li>
                        <li>
                          <a class="linkedin" href="#"><i class="fab fa-linkedin-in"></i></a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </footer>
              <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
              <script
                src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
                integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
                crossorigin="anonymous"
              ></script>
              <script
                src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
                integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
                crossorigin="anonymous"
              ></script>
        </div>
    </div>
</body>
</html>
