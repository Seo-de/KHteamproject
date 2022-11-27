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
        <form action="/bond/bondInfo" class="bandIntro" id="bandIntroFrm">
            <div class="introTitle">본드 소개</div>
            <div class="introArea">
                <div class="namearea">
                    <div class="nameTitle">본드 이름</div>
                    <input type="text" class="nameWrite" value="${groupInfo.groupName}">
                    <button type="reset"><i class="fa-solid fa-xmark"></i></button>
                </div>
                <div class="introWrite">
                    <div class="writeTitle">본드 소개글</div>
                    <textarea name="introWrite" id="">${groupInfo.groupComment}</textarea>
                </div>
                <div class="imgTitle">본드 대표 이미지</div>

                <div class="imgarea">
                    <div class="showImg">
                        <c:if test="${!empty groupInfo.groupImage}">
                            <img src="${groupInfo.groupImage.}" id="group-img">
                        </c:if>
                        <c:if test="${empty groupInfo.groupImage}">
                            <img src="/resources/images//resources/images/bond/profile/non-profile.png" id="group-img">
                        </c:if>
                    </div>
                    <div class="btnArea">
                        <div class="inputImg">
                            <input type="file" id="inputImg">
                            <label for="inputImg">이미지 수정</label>
                        </div>
                        <div class="deleteImg">
                            <button type="button">이미지 삭제</button>
                        </div>

                    </div>
                </div>
            </div>
                        
            <div class="intro-btn">
                <button>본드 소개 저장</button>
            </div>
        </form>
    </main>
    <script src=""></script>
</body>
</html>