<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<html>
<head>
<title>새벽투홈</title>
<link rel="icon" href="${pageContext.request.contextPath}/img/favicon.ico" />
<!-- 스와이퍼 라이브러리 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
<script defer type="text/javascript" src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

<!-- 제이쿼리 라이브러리 -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- AOS 라이브러리 불러오기-->
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <meta charset="UTF-8">
    <meta name="keywords" content="">
    <link rel="stylesheet" href="css/mainPage.css?ase">
<script defer type="text/javascript" src="js/script.js?as"></script>
</head>

<body>
	<div id="wrap" class="main">
		<header id="header">
			<div class="inner">
				<div class="toparea">
					<h1>
						<a href="${pageContext.request.contextPath}/mainPage"> <img src="${pageContext.request.contextPath}/img/header_logo_freex34.png" alt="현대식품관" />
						</a>
					</h1>
					<c:choose>
						<%-- <c:when test="${isLogOn == true and not empty loginUser}">	 --%>				
						<c:when test="${empty sessionScope.loginUser}">
					        <div class="util" id="dawnLoginN" style="display: hidden">
								<a href="${pageContext.request.contextPath}/login/login.jsp">로그인</a> <a href="${pageContext.request.contextPath}/login/join.jsp">회원가입</a> <a href="">마이페이지</a>
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
				<nav class="gnbarea">

					<button type="button" class="btn-category">카테고리 전체보기</button>
					<div id="p_popCategory" class="popcategory">
						<nav class="lnb-list">
							<ul class="lnb">
							<c:forEach var='category' items="${ctgr} ">
								<li class="depth1">
									<button type="button" onclick="">과일과 채소</button>
									<ul class="depth2">
										<li><a href="${pageContext.request.contextPath}/mainPage/category.do?Category=ALL">전체보기</a></li>
										<li><a href="${pageContext.request.contextPath}/mainPage/category.do?Category=과일채소">계절 과일</a></li>
										<li><a href="${pageContext.request.contextPath}/mainPage/category.do?Category=일상채소">일상채소</a></li>
										<li><a href="">샐러드·쌈채소</a></li>
									</ul>
								</li>
							</c:forEach>

								<li class="depth1">
									<button type="button" onclick="">곡물 · 견과</button>
									<ul class="depth2">
										<li><a href="${pageContext.request.contextPath}/mainPage/category.do?Category=곡물견과">전체보기</a></li>
										<li><a href="${pageContext.request.contextPath}/mainPage/category.do?Category=쌀">쌀</a></li>
										<li><a href="${pageContext.request.contextPath}/mainPage/category.do?Category=잡곡">잡곡</a></li>
										<li><a href="${pageContext.request.contextPath}/mainPage/category.do?Category=견과">견과</a></li>
									</ul>
								</li>
								<li class="depth1">
									<button type="button" onclick="">생선</button>
									<ul class="depth2">
										<li><a href="">전체보기</a></li>
										<li><a href="">계절 과일</a></li>
									</ul>
								</li>
								<li class="depth1">
									<button type="button" onclick="">오징어</button>
									<ul class="depth2">
										<li><a href="">전체보기</a></li>
										<li><a href="">생선</a></li>
										<li><a href="">새우</a></li>
										<li><a href="">김</a></li>
									</ul>
								</li>

								<li class="depth1">
									<button type="button" onclick="">육류와 달걀</button>
									<ul class="depth2">
										<li><a href="">전체보기</a></li>
										<li><a href="">소고기</a></li>
										<li><a href="">돼지고기</a></li>
										<li><a href="">불고기</a></li>
									</ul>
								</li>
								<li class="depth1">
									<button type="button" onclick="">과자</button>
									<ul class="depth2">
										<li><a href="">전체보기</a></li>
										<li><a href="">스낵</a></li>
										<li><a href="">쿠키</a></li>
								</li>
							</ul>
						</nav>
					</div>
					<ul class="gnb-list" id="homeGnbList">
						<li><a href="${pageContext.request.contextPath}/mainPage/best.do">베스트</a></li>
						<li><a href="${pageContext.request.contextPath}/mainPage/sale.do">세일</a></li>
						<li><a href="#" onclick="goServlet()">레시피</a></li>
					</ul>
					<!-- 서치박스 -->
					<div class="searcharea">
						<form name="pdPcSearchForm" id="pdPcSearchForm" method="post" action="${pageContext.request.contextPath}/mainPage/search.do">
							<fieldset>
								<legend class="hide">검색어 입력</legend>
								<div class="form-entry exist search">
									<input type="text" name="keyWord" title="검색어 입력">

									<button type="button" class="btn-del" tabindex="-1"
										style="display: block" onclick="reset">삭제</button>
									<button type="submit" class="btn-search" onclick="">검색</button>

							</fieldset>
						</form>

					</div>
					<button type="button" class="btn-cart" onclick="location.href='${pageContext.request.contextPath}/popupController';">
						<span>${fn:length(sessionScope.cartList) }</span>
					</button>
			</div>
			</nav>
	</div>
<!-- <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
 -->
 <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
   function goServlet(){
      location.href="mgzController";
   }
   $(document).ready(function(){
	    var a = $( '#test' );
	    a.style.color = "blue"
	  });
	
   </script>
	</header>