<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>프로필 선택 시 보이는 팝업창</title>
    <link rel="stylesheet" href="/resources/css/profile.css">
    <script src="https://kit.fontawesome.com/785870d879.js" crossorigin="anonymous"></script>
</head>
<body>

    <main>
        <div class="profile1">
            
            <button type="button" class="close-btn">
                <i class="fa-solid fa-x"></i>
            </button>
                

            <form action="/clickProfile" name="profile-area">
                <section class="profile-area">
                    <div class="profile-image">
                        <img src="/resources/images/user.png" class="image" alt="">
                    </div>
            
                    <h3 class="memberName" name="memberName">${loginMember.memberName}</h3>
                    <section class="member">
                        <div class="leader-yn">
                            <div class="profile-member">
                                <c:choose>
                                    <c:when test="{leaderYN == 'N'}">멤버</c:when>
                                    <c:when test="{leaderYN == 'Y'}">모임장</c:when>
                                </c:choose>
                            </div>
                        </div>
                        <div class="join-date">since ${loginMember.memberSignUpDate}</div>

                    </section>
            
                    <div class="birth">
                        <div class="birth-title">생일 : </div>
                        <div class="memberBirth">
                            ${loginMember.memberBirth}
                        </div>

                    </div>
                    <button class="report">
                        <i class="fa-solid fa-user-slash"></i>  
                        신고하기
                    </button>
                </section>
            </form>
        </div>
    </main>
</body>
</html>
            