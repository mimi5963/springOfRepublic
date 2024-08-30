<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지</title>
    <link rel="stylesheet" href="/resources/css/header.css">
    <link rel="stylesheet" href="/resources/css/members/confirmMyInfo.css">
</head>
<body>
<%@include file="/resources/common/header.jsp" %>
<div id="c-container" class="c-flex-col">
    <div id="c-contentBox">
        <div class="tab-menu">
            <ul>
                <li>내 정보</li>
                <li>내 예약</li>
                <li>내 리뷰</li>
            </ul>
        </div>
        <div class="my-info">
            <div class="profile-container">
                <img class="profile-image" src="/resources/img/members/profile.png" alt="프로필">
            </div>
            <p>닉네임</p>
            <p class="p-email">user01.naver.com</p>
            <div class="res-rvw-num">
                <p>예약한 식당 <br>3개</p>
                <p>작성한 리뷰 <br>5개</p>
            </div>
            <button class="btn-update-info">회원 정보 수정</button>
        </div>
    </div>
</div>
</body>
</html>