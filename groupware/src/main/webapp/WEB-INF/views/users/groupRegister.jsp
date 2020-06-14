<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/head.jspf"%>
<link rel="stylesheet" href="../css/groupRegister.css">
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.2.0/css/all.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="../css/groupRegister.css">

</head>

<body>
    <div class="login-box">
        <div class="login-title">
            <h1 class="logo"><a href="insa.html">GREEN GROUPWARE</a></h1>
            <h2>HI NEW MEMBER?</h2>
        </div>
        <div class="login-form ">
            <form method="post" action="insa.html" autocomplete="off">
                <input type="text" name="userID" id="userID" placeholder=" 아이디" required="required" />
                <input type="password" name="passwd" id="passwd" placeholder=" 비밀번호" required="required" />
                <input type="password" name="passwd" id="passwd" placeholder=" 비밀번호 확인" required="required" />
                <!-- 회사 소속 -->
                <select class="">
                    <option value="0">부서를 선택하세요</option>
                    <option value="1">인사팀</option>
                    <option value="2">기획부</option>
                </select>
                <!-- 직급부분 -->
                <select class="">
                    <option value="0">직급을 선택하세요</option>
                    <option value="1">사원</option>
                    <option value="2">부장</option>
                    <option value="3">과장</option>
                </select>
               
                <input type="text" name="userName" id="userName" placeholder="사용자 이름" required="required" />
                <input type="text" name="userEmail" id="userEmail" placeholder="사용자 이메일" required="required" />
                <input type="text" name="userEmail" id="userPhone" placeholder="사용자 휴대전화" required="required" />
                <button type="submit" class="btn-blockUp btn btn-primary btn-large">회원가입완료</button>
            </form>
        </div>
    </div>
</body>

</html>





<%@include file="../include/foot.jspf"%>