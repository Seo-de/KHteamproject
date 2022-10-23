<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>본드 | 회원가입</title>
    <link rel="stylesheet" href="/resources/css/signUp.css">
</head>
<body>
    <div class="top-logo">
        <a href="/html/main.html">
            <img src="/resources/images/home-logo.png" id="home-logo">
        </a>
    </div>
    <main>
        <div class="signUp-title">회원 가입</div>
        <form action="#" method="post">
            <section class="signUp-area">
                <input type="text" name="memberEmail" id="memberEmail" placeholder="이메일">
            </section>
            <section class="signUp-area">
                <input type="text" name="memberPw" id="memberPw" placeholder="비밀번호">
                <input type="text" name="memberPw" id="memberPw" placeholder="비밀번호 확인">
            </section>
            <section class="signUp-area">
                <input type="text" name="memberName" id="memberName" placeholder="이름">
            </section>
            <section class="signUp-area">
                <div class="birth-title">생년월일</div>
                <input type="date" name="memberBirth" id="memberBirth"  placeholder="이름">
            </section>
            <button class="signUp-btn">회원가입</button>
        </form>
    </main>
        
</body>
</html>