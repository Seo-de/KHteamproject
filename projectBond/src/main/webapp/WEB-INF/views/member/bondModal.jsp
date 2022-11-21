<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>본드 가입 모달창</title>
    <link rel="stylesheet" href="/resources/css/bondModal.css">
    <script src="https://kit.fontawesome.com/785870d879.js" crossorigin="anonymous"></script>
</head>
<body>

    <div class="modal" id="modal">
        <div class="bondJoinTop">
            <div class="bondJoinTitle">본드 가입하기</div>
            <div class="close" id="close"><i class="fa-solid fa-x"></i></div>
        </div>
        <div class="bondJoin">${bond.groupName}에 가입하시겠습니까?</div>
        <div class="btnArea">
            <button class="btn" id="yesBtn">네</button>
            <button class="btn" id="noBtn">아니요</button>
        </div>

    </div>
    <script src="/resources/js/member/bondMadal.js"></script>
</body>
</html>