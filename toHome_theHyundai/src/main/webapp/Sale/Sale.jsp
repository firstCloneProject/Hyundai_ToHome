<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
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
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="format-detection"
	content="telephone=no, email=no, address=no">

<link rel="stylesheet" type="text/css" href="Sale/css1.css?asfz">

<link rel="stylesheet" type="text/css" href="Sale/css2.css?asd">

<link rel="stylesheet" type="text/css" href="Sale/css3.css">

<link rel="stylesheet" href="popup.css">

<title>세일</title>


</head>

<body>
	<style>
	ul {
	display: inline-block;
	padding: 10px;
	}
	ul {
	display: table;
	margin-left: auto;
	margin-right: auto;
	} 
	
	strong
	{
        font-weight: 900;
      }
	</style>

	<div id="wrap" class="main">
		<header id="header">
			<div class="inner">
				<div class="toparea">
					<h1>
						<a href=""> <img src="Sale/header_logo_freex34.png" alt="현대식품관">
						</a>
					</h1>
					<!--로그인 전-->
					<div class="util" id="dawnLoginN" style="display: hidden">
						<a href="로그인 DAO">로그인</a> <a href="회원정보 변경">회원가입</a> <a href="">마이페이지</a>
						<a href="">고객센터</a>
					</div>

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
										<li><a href=""> 전체보기 </a></li>
										<li><a href=""> 계절 과일 </a></li>
										<li><a href=""> 일상채소 </a></li>
										<li><a href=""> 샐러드·쌈채소 </a></li>
									</ul>
								</li>
								
								<li class="depth1">
									<button type="button" onclick="">곡물 · 견과</button>
									<ul class="depth2">
										<li><a href=""> 전체보기 </a></li>
										<li><a href=""> 쌀 </a></li>
										<li><a href=""> 잡곡 </a></li>
										<li><a href=""> 견과 </a></li>
									</ul>
								</li>
								<li class="depth1">
									<button type="button" onclick="">생선</button>
									<ul class="depth2">
										<li><a href=""> 전체보기 </a></li>
										<li><a href=""> 계절 과일 </a></li>
									</ul>
								</li>
								<li class="depth1">
									<button type="button" onclick="">오징어</button>
									<ul class="depth2">
										<li><a href=""> 전체보기 </a></li>
										<li><a href=""> 생선 </a></li>
										<li><a href=""> 새우 </a></li>
										<li><a href=""> 김 </a></li>
									</ul>
								</li>

								<li class="depth1">
									<button type="button" onclick="">영양제</button>
									<ul class="depth2">
										<li><a href=""> 전체보기 </a></li>
										<li><a href=""> 인삼 · 홍삼 </a></li>
										<li><a href=""> 비타민 </a></li>
										<li><a href=""> 영양제 </a></li>
									</ul>
								</li>

								<li class="depth1">
									<button type="button" onclick="">과자</button>
									<ul class="depth2">
										<li><a href=""> 전체보기 </a></li>
										<li><a href=""> 스낵 </a></li>
										<li><a href=""> 쿠키 </a></li>

									</ul>
								</li>
							</ul>
						</nav>
							<!-- lnb-list끝임 -->
					</div>
					<ul class="gnb-list" id="homeGnbList">
						<li><a href="">베스트</a></li>
						<li><a href="">세일</a></li>
						<li><a href="">매거진</a></li>

					</ul>


					<!-- 검색창 구현? -->
					<div class="searcharea">
						<form name="pdPcSearchForm" id="pdPcSearchForm" method="post">
							<fieldset>
								<legend class="hide">검색어 입력</legend>
								<div class="form-entry exist search">
									<input type="text" name="keyWord" title="검색어 입력">

									<button type="button" class="btn-del" tabindex="-1"
										style="display: block" onclick="reset">삭제</button>
									<button type="button" class="btn-search" onclick="">검색</button>

								</div>
							</fieldset>
						</form>

					</div>
					<button type="button" class="btn-cart" onclick="">
						<span>0</span>
					</button>
				</nav>
			</div>
		</header>
	</div>



		<div id="contents">
			<div class="innercon">
				
				<h2>세일</h2>
			</div>


			<ul class="product-list" id="ulItemList">
				<!--1번-->
				<c:forEach var="test" items="${listsales}">
					<li>
						<a href="#">
							<span class="thumb"> 
							<strong>	<img src="${test.imagepath}" /></strong>
									<div class="badgewrap">
										<span class="badge"> 
										<strong>
										${test.salepercent}%
										</strong><!-- 할인율 -->
										</span>
									</div>
									
							</span>
							<strong></strong><strong class="txt-ti ellipsis">${test.product_name}</strong></strong>
		                         <!--<button insert>-->
						</a> 
						
							<span class="info"> 
								<span class="text-price"> 
									 <strong>${test.price}원</strong>
									<del>${test.price}</del> 
								</span>
							</span>
					</li>
					
					
				</c:forEach>
				
			</ul>

		</div>


		<footer id="footer">
			<div class="util">
				<div class="inner">
					<img src="img1\footlogo.png"> <a href="#">브랜드소개</a> <a
						href="#">이용약관</a> <a href="#);"><b>개인정보처리방침</b></a> <a href="#">청소년보호정책</a>
					<a href="#">영상기기운영방침</a>

				</div>
			</div>

			<div class="info">
				<div class="inner">
					<div class="logo">현대식품관</div>
					<div id="fnDawnBizpCrstList">
						<b>(주)현대백화점</b><br> 
						<span>대표이사 : 김형종 외 2인</span>
						<span>
							주소 : 서울 강남구 테헤란로98길 12 (대치동) 현대백화점
							</span>
							<br>전화 : 02-1800-9549<br>이메일
						: tohome@thehyundai.com<br>사업자 등록번호 : 211-87-21455\
						 <a href="#">사업자등록확인</a><br>통신판매업자 신고번호 : 2010-서울강남-01882<br>
						<p class="essential-info">
							<em>현대식품관 투홈의 개별 판매자가 등록한 상품(브랜드직송) 상품에 대한 광고, 상품주문, 배송, 환불의
								의무와 책임은 각 판매자가 부담하고, <br>현대식품관 투홈은 통신판매 중개자로서의 의무와 책임을
								다합니다.
							</em><br>고객님의 안전거래를 위해 현금결제 시 KG이니시스 구매안전 서비스를 이용하실 수
							있습니다.served.
					</div>
				</div>
			</div>

		</footer>
</body>

</html>