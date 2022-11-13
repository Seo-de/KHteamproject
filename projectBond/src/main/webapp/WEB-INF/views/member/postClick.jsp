<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 선택</title>
    <link rel="stylesheet" href="../resources/css/postClick.css">
    <script src="https://kit.fontawesome.com/785870d879.js" crossorigin="anonymous"></script>
</head>
<body>
    <main>
        <form action="#" method="post" class="postClick">

            <div class="postMemberAll">
                <div class="postMember-img">
                    <img src="../resources/images/user.png" class="memberImage" name="profile-img" id="profile-img">
                </div>
                <div class="postMember">
                    <div class="postMember-name" name="member" id="memberName">${memberName}</div>
                    <div class="postDate-read">
                        <span class="postDate" name="post" id="postDate">${postDate}2022년 10월 29일 오후 11:42</span>
                        <span class="read"  name="post" id="postView"> | ? 읽음</span>
                    </div>
                </div>
                <div class="post-report">
                    <label for="post-report-icon" name="report" >
                        <i class="fa-solid fa-user-slash"></i>
                    </label>
                    <div id="post-report-title">신고하기</div>
                </div>
            </div>

            <div class="post-content" name="post" id="postContent">
                <pre>작성한 글들이 나올거야
원래는 p태그를 썼던데 나중에 바꿔야겠지?</pre>
                ${postContent}
            </div>

            <div class="show-reply" name="reply" id="replyCount">댓글 ?개</div>
            
            <div class="like-reply">
                <div class="like">
                    <span><i class="fa-regular fa-thumbs-up"></i></span>
                    <span class="likeEmpty"></span>
                    <span>좋아요</span>
                </div>
                <div class="reply">
                    <span><i class="fa-regular fa-comment"></i></span>
                    <span>댓글쓰기</span>
                </div>
            </div>
            

            <div class="reply-toolbar">
                <div class="replyWrite-toolbar">
                    <div class="replyMember-img">
                        <img src="../resources/images/user.png" class="memberImage" name="profile-img" id="profile-img">
                    </div>
                    <div class="replyWrite">
                        <input type="text" name="reply" id="replyContent" placeholder="댓글을 남겨주세요" maxlength="4000">
                    </div>
                </div>
                <div class="send-btn">
                    <button>보내기</button>
                </div>
            </div>
        </form>
    </main>
</body>
</html>