<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인/회원가입 화면</title>

    <link rel="stylesheet" href="/resources/css/main.css">
</head>

<body>
    <section class="home-logo-area">
        <div><img src="/resources/images/home-logo-white.png" id="home-logo"></div>
    </section>
    <section class="login-signUp">
        <div id="login-title">
            <h2>취미가 쉬워진다! <br> 끼리끼리 본드</h2>
            <p>당신의 취미도 BOND로 시작하세요.</p>
        </div>
        <div class="login-button">
            <a href="/member/login" id="login">로그인</a>
            <a href="/member/signUp" id="signUp">회원가입</a>

        </div>
    </section>
</body>
</html>