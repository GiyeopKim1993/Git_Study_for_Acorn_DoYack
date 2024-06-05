<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="path"  value="<%=request.getContextPath()%>" />  
<!DOCTYPE html>
<html>
  <head>
    <title>HTML CSS로 푸터 만들기</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    <link rel="stylesheet" href="${path}/resources/css/footer.css"/ type="text/css">
  </head>
  <body>
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
  </body>
</html>