<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="ko" xml:lang="ko">

<head>
    <style class="vjs-styles-defaults">
        .video-js {
            width: 300px;
            height: 150px;
        }

        .vjs-fluid {
            padding-top: 56.25%;
        }
    </style>

    <meta charset="UTF-8">
    <meta name="keywords" content="">


    <title>장바구니</title>

    <link rel="stylesheet" type="text/css" href="cart/cart.css">
</head>

<body>
	<div id="wrap" class="order cart">
    <header id="header" class="short">

        <div class="inner">

            <div class="toparea">
                <h1>
                    <!-- <a href="/front/dp/dpa/dawnHome.do"> -->
                    <img src="cart/tohomemain.png">
                </h1>

                <div class="util">

                    <!-- util : 로그인 후// -->
                    <a href="/front/cua/logout.do" class="active">로그아웃</a>
                    <a href="/front/cua/mypage/updateMember.do">회원정보변경</a>
                    <!-- //util : 로그인 후 -->

                    <a href="/front/mp/mpa/selectMyPageMain.do">마이페이지</a>
                    <a href="/front/dp/dpf/customerCenterMain.do">고객센터</a>
                </div>

            </div>

        </div>
    </header>