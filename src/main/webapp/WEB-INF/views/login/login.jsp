<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="path"  value="<%=request.getContextPath()%>" />  
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    
    <link rel="stylesheet" href="${path}/resources/css/login.css" />
  </head>
  <body>

    <div class="login-wrapper">
      <h2 class="login__class">
      	<img src="${path}/resources/img/logo-colored.png"></>
      </h2>
      <button class="login__btn login__btn--kakao">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
          <g>
            <path fill="none" d="M0 0h24v24H0z" />
            <path
              d="M12 3c5.799 0 10.5 3.664 10.5 8.185 0 4.52-4.701 8.184-10.5 8.184a13.5 13.5 0 0 1-1.727-.11l-4.408 2.883c-.501.265-.678.236-.472-.413l.892-3.678c-2.88-1.46-4.785-3.99-4.785-6.866C1.5 6.665 6.201 3 12 3zm5.907 8.06l1.47-1.424a.472.472 0 0 0-.656-.678l-1.928 1.866V9.282a.472.472 0 0 0-.944 0v2.557a.471.471 0 0 0 0 .222V13.5a.472.472 0 0 0 .944 0v-1.363l.427-.413 1.428 2.033a.472.472 0 1 0 .773-.543l-1.514-2.155zm-2.958 1.924h-1.46V9.297a.472.472 0 0 0-.943 0v4.159c0 .26.21.472.471.472h1.932a.472.472 0 1 0 0-.944zm-5.857-1.092l.696-1.707.638 1.707H9.092zm2.523.488l.002-.016a.469.469 0 0 0-.127-.32l-1.046-2.8a.69.69 0 0 0-.627-.474.696.696 0 0 0-.653.447l-1.661 4.075a.472.472 0 0 0 .874.357l.33-.813h2.07l.299.8a.472.472 0 1 0 .884-.33l-.345-.926zM8.293 9.302a.472.472 0 0 0-.471-.472H4.577a.472.472 0 1 0 0 .944h1.16v3.736a.472.472 0 0 0 .944 0V9.774h1.14c.261 0 .472-.212.472-.472z"
            />
          </g></svg
        >카카오 로그인
      </button>

      <form class="login__form" action="${path}/login" method="post">
        <label for="login-id" class="login__label">
          <span class="login__text">아이디</span>
          <input id="login-id" type="text" class="login__input"  name="id"/>
        </label>
        <label for="login-pw" class="login__label">
          <span class="login__text">패스워드</span>
          <input id="login-pw" type="password" class="login__input" name="password"/>
        </label>
        <div class="login__text-box">
          <a class="login__text" href="./join">회원가입</a>
          <a class="login__text" href="">아이디 / 비밀번호 찾기</a>
        </div>
        <input class="login__btn" type="submit" value="로그인" />
      </form>

      <button class="login__btn login__btn--naver">
        <svg
          style="color: white"
          role="img"
          viewBox="0 0 24 24"
          xmlns="http://www.w3.org/2000/svg"
        >
          <title>Naver</title>
          <path
            d="M1.6 0S0 0 0 1.6v20.8S0 24 1.6 24h20.8s1.6 0 1.6-1.6V1.6S24 0 22.4 0zm3.415 5.6h4.78l4.425 6.458V5.6h4.765v12.8h-4.78L9.78 11.943V18.4H5.015Z"
            fill="white"
          ></path>
        </svg>
        네이버 로그인
      </button>
    </div>
    
        <script>
      function login() {
        $.ajax({
          type: 'POST',
          url: '${path}/login',
          data: $('#loginForm').serialize(),
          success: function(response) {
            if (response === '1') {
              window.location.href = '${path}/Landing';
            } else {
              alert('로그인에 실패하였습니다.');
            }
          },
          error: function() {
            alert('서버 오류가 발생하였습니다.');
          }
        });
      }
    </script>
  </body>
</html>
