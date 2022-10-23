<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>본드 | 로그인</title>
    <link rel="stylesheet" href="/resources/css/login.css">
</head>
<body>
    <div class="top-logo">
        <a href="/html/main.html">
            <img src="/resources/images/home-logo.png" id="home-logo">
        </a>
    </div>
    <main>
        <div class="login-title">로그인</div>
        <form action="#" method="post">
            <section class="inputbox">
                <input type="text" name="inputEmail" placeholder="이메일 입력" required>
            </section>
            <section class="inputbox">
                <input type="password" name="inputPw" placeholder="비밀번호 입력" required>
            </section>
            <button class="inputbox login-btn">로그인</button>
            <section class="saveId-area">
                <input type="checkbox" name="saveId" id="saveId"> 
                <label for="saveId">아이디 저장</label> 
            </section>
        
            <p class="text-area">
                본드가 처음이신가요?
                <a href="../html/signUp.html">회원가입</a>
            </p>
        </form>
    </main>
</body>
</html>