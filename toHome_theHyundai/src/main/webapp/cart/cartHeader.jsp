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

                <c:choose>
						<%-- <c:when test="${isLogOn == true and not empty loginUser}">	 --%>				
						<c:when test="${empty sessionScope.loginUser}">
					        <div class="util" id="dawnLoginN" style="display: hidden">
								<a href="../login/login.jsp">로그인</a> <a href="login/join.jsp">회원가입</a> <a href="">마이페이지</a>
								<a href="">고객센터</a>
							</div>	
	       								
						</c:when>
	       				<c:otherwise>
							
							<div class="util" id="dawnLoginY" style="display: hidden">
						  		<%-- <li>
				            		(${sessionScope.loginUser.customerId})	  
						  		</li> --%>
				            <button type="button" class="btn-linedown btn-personal" id="memNmText">${sessionScope.loginUser.name}님! 반갑습니다.</button>  <!-- memNmText -->
			            		
			            		<a href="${pageContext.request.contextPath}/cust/logOutCustomer.do">로그아웃</a>
			             	 	<a href="회원정보 변경">회원정보변경</a>
			            		<a href="">마이페이지</a>
			            		<a href="">고객센터</a>
					        </div>	
				        </c:otherwise>       
       				</c:choose>

            </div>

        </div>
    </header>