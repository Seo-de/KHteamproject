<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="/resources/images/title-logo.jpg" type="image/x-icon">
    <title>본드 | 회원가입</title>
    <link rel="stylesheet" href="/resources/css/signUp.css">
</head>
<body>
    <div class="top-logo">
        <a href="/main">
            <img src="/resources/images/home-logo.png" id="home-logo">
        </a>
    </div>
    <main>
        <div class="signUp-title">회원 가입</div>
        <form action="/member/signUp" method="post">
            <section class="signUp-area">
                <input type="text" name="memberEmail" id="memberEmail" placeholder="이메일"
                autocomplete="off" maxlegnth="20" required>
            </section>
            <section class="signUp-area">
                <input type="password" name="memberPw" id="memberPw" placeholder="비밀번호" required maxlegnth="20">
                <input type="password" name="memberPw" id="memberPw" placeholder="비밀번호 확인" required maxlegnth="20">
            </section>
            <section class="signUp-area">
                <input type="text" name="memberName" id="memberName" placeholder="이름" maxlegnth="0" required>
            </section>
            <section class="signUp-area">
                <div class="birth-title">생년월일</div>
                <input type="date" name="memberBirth" id="memberBirth" required>
            </section>
            <section class="signUp-area">
                <div class="memberTel"> 전화번호 (- 빼고 입력해주세요) </div>
                <input type="text" name="memberTel" id="memberTel" placeholder="전화번호" maxlength="11"
                required autocomplete="off">
            </section>
            <button class="signUp-btn">회원가입</button>
        </form>
    </main>
        
</body>
</html>