<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>새벽투홈</title>
<link rel="icon" href="img/favicon.ico" />

<!-- 스와이퍼 라이브러리 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
<script defer type="text/javascript" src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

<!-- 제이쿼리 라이브러리 -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- AOS 라이브러리 불러오기-->
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

</head>

<body>
	<div id="wrap" class="main">
		<header id="header">
			<div class="inner">
				<div class="toparea">
					<h1>
						<a href=""> <img src="img/header_logo_freex34.png" alt="현대식품관" />
						</a>
					</h1>
					
					<c:choose>
						<%-- <c:when test="${isLogOn == true and not empty loginUser}">	 --%>				
						<c:when test="${empty sessionScope.loginUser}">
					        <div class="util" id="dawnLoginN" style="display: hidden">
								<a href="login/login.jsp">로그인</a> <a href="toHome_theHyundai/login/join.jsp">회원가입</a> <a href="">마이페이지</a>
								<a href="">고객센터</a>
							</div>	
	       								
						</c:when>
	       				<c:otherwise>
							
							<div class="util" id="dawnLoginY" style="display: hidden">
						  		<li>
				            		${sessionScope.loginUser.name}(${sessionScope.loginUser.customerId})	  
						  		</li>
				            <button type="button" class="btn-linedown btn-personal" id="memNmText"></button>  <!-- memNmText -->
			            		
			            		<a href="dAO">로그아웃</a>
			             	 	<a href="회원정보 변경">회원정보변경</a>
			            		<a href="">마이페이지</a>
			            		<a href="">고객센터</a>
					        </div>	
				        </c:otherwise>       
       				</c:choose>
				</div>
				<!-- 두번째 줄  -->
				<nav class="gnbarea">

					<button type="button" class="btn-category">카테고리 전체보기</button>
					<div id="p_popCategory" class="popcategory">
						<nav class="lnb-list">
							<ul class="lnb">
								<li class="depth1">
									<button type="button" onclick="">과일과 채소</button>
									<ul class="depth2">
										<li><a href="">전체보기</a></li>
										<li><a href="">계절 과일</a></li>
										<li><a href="">일상채소</a></li>
										<li><a href="">샐러드·쌈채소</a></li>
									</ul>
								</li>
								<li class="depth1">
									<button type="button" onclick="">곡물 · 견과</button>
									<ul class="depth2">
										<li><a href="">전체보기</a></li>
										<li><a href="">쌀</a></li>
										<li><a href="">잡곡</a></li>
										<li><a href="">견과</a></li>
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
									<button type="button" onclick="">영양제</button>
									<ul class="depth2">
										<li><a href="">전체보기</a></li>
										<li><a href="">인삼 · 홍삼</a></li>
										<li><a href="">비타민</a></li>
										<li><a href="">영양제</a></li>
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
						<li><a href="">베스트</a></li>
						<li><a href="">세일</a></li>
						<li><a href="">매거진</a></li>
						<li><a href="">선물하기</a></li>
						<li><a href="">이벤트</a></li>
						<li><a href=""></a> <img src="img/esuper_logo.png"
							alt="esupermarket"></li>
					</ul>
					<!-- 서치박스 -->
					<div class="searcharea">
						<form name="pdPcSearchForm" id="pdPcSearchForm" method="post">
							<fieldset>
								<legend class="hide">검색어 입력</legend>
								<div class="form-entry exist search">
									<input type="text" name="keyWord" title="검색어 입력">

									<button type="button" class="btn-del" tabindex="-1"
										style="display: block" onclick="reset">삭제</button>
									<button type="button" class="btn-search" onclick="">검색</button>

									<!-- 먼가 정보를 몰래줌 -->
									<input type="text" name="searchTerm" class="hide"> <input
										type="text" name="category" class="hide"> <input
										type="text" name="pageNumber" class="hide"> <input
										type="text" name="rowsPerPage" class="hide"> <input
										type="text" name="tagNm" class="hide">
							</fieldset>
						</form>

					</div>
					<button type="button" class="btn-cart" onclick="">
						<span>0</span>
					</button>
			</div>
			</nav>
	</div>
	</header>