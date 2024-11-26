<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .signup-container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 400px;
            text-align: center;
        }

        .signup-container h1 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #333;
        }

        .signup-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .signup-container button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: white;
            font-size: 1em;
            cursor: pointer;
        }

        .signup-container button:hover {
            background-color: #0056b3;
        }

        .signup-container a {
            display: block;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }

        .signup-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h1>회원가입</h1>
        <form action="register.jsp" method="post">
            <input type="text" name="username" placeholder="아이디" required>
            <input type="text" name="name" placeholder="이름" required>
            <input type="email" name="email" placeholder="이메일" required>
            <input type="password" name="password" placeholder="비밀번호" required>
            <button type="submit">회원가입 완료</button>
        </form>
    </div>
</body>
</html>