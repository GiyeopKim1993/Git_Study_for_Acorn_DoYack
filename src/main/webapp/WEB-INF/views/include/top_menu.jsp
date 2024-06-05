<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:url var='root' value='/'/> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .warp {
            width: 100%;
            height: 30px;/*나중에 100%*/
            margin: 0 auto;
            display: flex;
            padding: 10px;
            text-align: center;
            flex-direction: column;
            align-items: center;
        }
        .header {
            display: flex;
            width: 1200px;
            height: 40px;
            align-items: center;
            margin-inline: 50px;
            margin: 0 auto;
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
            padding-left: 45%;
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
    </style>
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
                <a href="#"><img src="https://pilly.kr/images/store/gnb/icon-menu.svg"></a>
                <ul>
                    <!--수정-->
                    <li><a href="#">text1</a></li>
                    <li><a href="#">text2</a></li>
                    <li><a href="#">text3</a></li>
                    <li><a href="#">text4</a></li>
                </ul>
            </div>
            <div class="logo"><a href="#"><img src="https://pilly.kr/images/store/gnb/icon-logo.svg"></a></div>
            <div class="shopping"><a href="#"><img src="https://pilly.kr/images/store/gnb/icon-cart.svg"></a></div>
            <div class="mypage"><a href="${path}login"><img src="https://pilly.kr/images/store/gnb/icon-user.svg"></a></div>
        </div>
    </div>


</body>
</html>
