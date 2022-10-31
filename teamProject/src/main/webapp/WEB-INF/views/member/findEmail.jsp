<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>본드 | 이메일 찾기</title>
    <link rel="shortcut icon" href="/resources/images/title-logo.jpg" type="image/x-icon">
    <link rel="stylesheet" href="/resources/css/findEmailPw.css">
</head>
<body>
    <div class="top-logo">
        <a href="../html/main.html">
            <img src="/resources/images/home-logo.png" id="home-logo">
        </a>
    </div>
    <main>
        <div class="find-title findEmail">이메일 찾기</div>
        <form action="#" method="post">
            <section class="inputbox">
                <input type="text" name="inputEmail" placeholder="이름 입력" required
                    autocomplete="off">
            </section>
            <section class="inputbox">
                <input type="text" name="inputPw" placeholder="전화번호 입력" required
                    autocomplete="off">
                    <p class="noInput-">- 빼고 입력해주세요.</p>
            </section>
            <button class="inputbox findEmail-btn">이메일 찾기</button>

        </form>
    </main>
</body>
</html>