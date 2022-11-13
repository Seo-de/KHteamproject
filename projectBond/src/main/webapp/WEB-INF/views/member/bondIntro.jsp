<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>본드 소개</title>
    <link rel="stylesheet" href="/resources/css/bondIntro.css">
    <script src="https://kit.fontawesome.com/785870d879.js" crossorigin="anonymous"></script>

</head>
<body>
    <main>
        <form action="/bondIntro" class="bandIntro" id="bandIntro">
            <div class="introTitle">본드 소개</div>
            <div class="introArea">
                <div class="namearea">
                    <div class="nameTitle">본드 이름</div>
                    <input type="text" class="nameWrite" value="${groupName}">
                    <button type="reset"><i class="fa-solid fa-xmark"></i></button>
                </div>
                <div class="introWrite">
                    <div class="writeTitle">본드 소개글</div>
                    <textarea name="introWrite" id="">${groupComment}</textarea>
                </div>
                <div class="imgTitle">본드 대표 이미지</div>
                <div class="imgarea">
                    <div class="showImg"><i class="fa-solid fa-camera"></i></div>
                    <div class="inputImg">
                        <input type="file" id="inputImg" value="${}">
                        <label for="inputImg">사진 수정</label>
                    </div>
                </div>
            </div>
                        
            <div class="intro-btn">
                <button>저 장</button>
            </div>
        </form>
    </main>
</body>
</html>