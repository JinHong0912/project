<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/groupLogin.css">

</head>

<body>
    <div class="login-box">
        <div class="login-title">
            <h1 class="logo"><a href="insa.html">GREEN GROUPWARE</a></h1>
            <h2>Enterprise Resource Planning System</h2>
        </div>
        <div class="login-form ">
            <form method="post" action="/users/loginCheck" autocomplete="off">
                <input type="text" name="userID" id="userID" placeholder="사용자 아이디" required="required" />
                <input type="password" name="passwd" id="passwd" placeholder="사용자 비밀번호" required="required" />
                <button type="submit" class="btn btn-primary btn-block btn-large ">로그인</button>
                <button type="button" onclick="javascript:location.href='/users/groupRegister'" class="btn btn-primary btn-blockUp btn-large">회원가입</button>
            </form>
        </div>
    </div>
</body>

</html>