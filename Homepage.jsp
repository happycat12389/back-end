<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>학생들이 선호하는 사이트</title>

    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh;
        }

        h1 {
            font-size: 2.5em;
            color: #333;
            margin-bottom: 40px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        .auth {
            margin-bottom: 20px;
        }

        .auth input[type="text"], .auth input[type="password"] {
            padding: 8px;
            margin: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 150px;
        }

        .auth button {
            padding: 8px;
            margin: 5px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            cursor: pointer;
        }

        .auth button:hover {
            background-color: #0056b3;
        }

        .auth .signup {
            background-color: #28a745;
        }

        .auth .signup:hover {
            background-color: #218838;
        }

        /* 경고 메시지 */
        .warning {
            color: red;
            font-size: 1.1em;
            margin-top: 10px;
        }

        .banner-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .banner {
            width: 100px;
            height: 100px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-weight: bold;
            text-align: center;
        }

        .banner:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }

        .instagram { background-color: #e1306c; }
        .youtube { background-color: #ff0000; }
        .kakao { background-color: #fee500; }
        .naver-webtoon { background-color: #00d564; }
        .afreeca { background-color: #0066ff; }
        .coupang { background-color: #0077ff; }
        .musinsa { background-color: #000000; }
        .melon { background-color: #1db954; }

        /* 게시판 스타일 */
        .board {
            width: 80%;
            margin-top: 50px;
        }

        .board h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .board form {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .board form input, .board form textarea {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .board form button {
            align-self: flex-end;
            padding: 10px 20px;
            border: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        .board form button:hover {
            background-color: #0056b3;
        }

        .posts {
            margin-top: 20px;
        }

        .post {
            background-color: #f8f9fa;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* 반응형 디자인 */
        @media (max-width: 600px) {
            .banner {
                width: 80px;
                height: 80px;
            }

            .auth input[type="text"], .auth input[type="password"] {
                width: 120px;
            }

            .board {
                width: 90%;
            }
        }
    </style>
</head>
<body>
<div class="auth">
        <form action="LoginForm.jsp" method="get">
            <button type="submit">로그인</button>
        </form>
        <form action="Rigister.jsp" method="get" style="display: inline;">
        	<button type="submit" class="signup">회원가입</button>
    </form>
    </div>
    
    <h1>학생들이 선호하는 사이트</h1>

    <div class="banner-container">
        <a href="https://www.instagram.com" target="_self">
            <div class="banner instagram">인스타그램</div>
        </a>
        <a href="https://www.youtube.com" target="_self">
            <div class="banner youtube">유튜브</div>
        </a>
        <a href="https://www.kakaocorp.com" target="_self">
            <div class="banner kakao">카카오 톡</div>
        </a>
        <a href="https://comic.naver.com/webtoon" target="_self">
            <div class="banner naver-webtoon">네이버 웹툰</div>
        </a>
        <a href="https://www.afreecatv.com" target="_self">
            <div class="banner afreeca">SOOP TV</div>
        </a>
        <a href="https://www.coupang.com" target="_self">
            <div class="banner coupang">쿠팡</div>
        </a>
        <a href="https://www.musinsa.com" target="_self">
            <div class="banner musinsa">무신사</div>
        </a>
        <a href="https://www.melon.com" target="_self">
            <div class="banner melon">멜론</div>
        </a>
    </div>

    <!-- 게시판 -->
    <div class="board">
        <h2>게시판</h2>
        <form>
            <input type="text" placeholder="제목" required>
            <textarea placeholder="내용을 입력하세요" rows="5" required></textarea>
            <button type="submit">글 등록</button>
        </form>

        <div class="posts">
            <!-- 예시 게시글 -->
            <div class="post">
                <strong>제목: 예시 글 1</strong>
                <p>이곳에 게시글 내용이 표시됩니다.</p>
            </div>
            <div class="post">
                <strong>제목: 예시 글 2</strong>
                <p>이곳에 게시글 내용이 표시됩니다.</p>
            </div>
        </div>
    </div>
</body>
</html>
