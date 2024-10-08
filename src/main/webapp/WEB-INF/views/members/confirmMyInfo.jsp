<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="">
<head>
    <script src="https://code.jquery.com/jquery-3.7.1.js"
            integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
            crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지</title>
    <link rel="stylesheet" href="/resources/css/header.css">
    <link rel="stylesheet" href="/resources/css/members/confirmMyInfo.css">
    <script>

        document.addEventListener('DOMContentLoaded', function() {
            // 모든 tab-button에서 active 클래스 제거
            var buttons = document.querySelectorAll('.tab-button');
            buttons.forEach(function(button) {
                button.classList.remove('active');
            });

            // 두 번째 자식 (index는 1)에게 active 클래스 추가
            if (buttons[0]) {
                buttons[0].classList.add('active');
            }
        });

    </script>
</head>
<body>
<%@include file="/resources/common/header.jsp" %>
<div id="c-container" class="c-flex-col">
    <div id="c-contentBox">
        <%@include file="/resources/common/mypageHeader.jsp" %>
        <%--        "/resources/img/members/profile.png"--%>
        <div class="my-info">
            <div class="profile-container">
<%--                <img class="profile-image" src="/images/${fileName}" />--%>
                <c:choose>
                    <c:when test="${loginMember.member_img.startsWith('/resources/img')}">
                        <img class="profile-image" src="/images/${fileName}" alt="프로필">
                    </c:when>
                    <c:otherwise>
                        <img class="profile-image" src="/images/${fileName}" />
                    </c:otherwise>
                </c:choose>
            </div>
            <p>${loginMember.member_nick}</p>
            <p class="p-email">${loginMember.username}</p>
            <div class="res-rvw-num">
                <p>예약한 식당 <br>${countReservation}개</p>
                <p>작성한 리뷰 <br>${countReview}개</p>
            </div>
            <button class="btn-update-info"><a class="a-update" href="/members/update-info">회원 정보 수정</a></button>
        </div>
    </div>
</div>
</body>
</html>