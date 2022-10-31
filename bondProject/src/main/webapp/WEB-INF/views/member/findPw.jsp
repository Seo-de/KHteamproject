<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
    <link rel="stylesheet" href="/resources/css/findEmailPw.css">
</head>
<body>
    <div class="top-logo">
        <a href="/html/main.html">
            <img src="/resources/images/home-logo.png" id="home-logo">
        </a>
    </div>
    <main>
        <div class="find-title findPw">비밀번호 찾기</div>
        <form action="/member/findPw" method="post">
            <section class="inputbox">
                <input type="text" name="inputName" name="inputName"
                    placeholder="이름 입력" required autocomplete="off">
            </section>
            <section class="inputbox">
                <input type="text" name="inputEmail" name="inputEmail"
                    placeholder="이메일 입력" required autocomplete="off">
            </section>
            <section class="inputbox">
                <input type="text" name="inputTel" name="inputEmail"
                    placeholder="전화번호 입력" required autocomplete="off">
                    <p class="noInput-">- 빼고 입력해주세요.</p>
            </section>
            <button class="inputbox findPw-btn">비밀번호 찾기</button>
            <!-- **** 입력받을 값들을 다시 생각해보자 **** -->
        </form>
    </main>
</body>
</html>