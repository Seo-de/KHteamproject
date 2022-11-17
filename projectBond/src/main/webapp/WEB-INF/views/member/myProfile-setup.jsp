<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 프로필 설정</title>
    <link rel="stylesheet" href="/resources/css/profile.css">
    <script src="https://kit.fontawesome.com/785870d879.js" crossorigin="anonymous"></script>
</head>
<body>

    <main>
    <form action="">
        <div class="profile2">
            <button type="button" class="myProfile close-btn ">
                <i class="fa-solid fa-x"></i>
            </button>
            <div class="myProfile-title">${loginMember.memberName}님의 프로필 설정</div>
            
            <form action="/myprofile" name="myProfile-area" 
                    enctype="multipart/form-data" onsubmit="return profileValidate()">
                <section class="myProfile-area">
                    <div class="myProfile-image">
                        <div class="update-profile-image">
                            <c:if test="${empty loginMember.profileImg}">
                                <img src="../resources/images/user.png" class="image" alt="">
                            </c:if>
                            <c:if test="${!empty loginMember.profileImg}">
                                <img src="${loginMember.profileImg}" class="image">
                            </c:if>
                            <input type="file" accept="image/*" id="inputImage">
                            <label for="inputImage"><i class="fa-solid fa-camera"></i></label>
                        </div>
                    </div>
                    <div class="update-memberName">
                        <input type="text" class="memberName" id="memberName" name="memberName" 
                            autocomplete="off"  placeholder="이름" value="${loginMember.memberName}">
                        <button type="reset" class="reset-btn">
                            <i class="fa-solid fa-x"></i>
                        </button>
                    </div>

                </section>

                    <button class="submit-btn">확 인</button>
            </form>
        </div>
    </form>

        
    </main>
    <script src="/resources/js/member/profileImg.js"></script>
</body>
</html>
            