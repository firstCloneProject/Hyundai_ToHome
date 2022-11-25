<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새벽투홈</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<!-- Link Swiper's CSS -->
<link rel="icon" href="../img/favicon.ico" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="main.css" />
<script type="text/javascript" src="main.js"></script>
<!-- Demo styles -->
</head>
<body>
	<header id="header">
		<div class="skip">
			<a href="#contents">본문으로 건너 뛰기</a>
		</div>
		<div id="ezwelHeader"></div>
		<div id="topBanner"></div>
		<div class="inner">
			<div class="toparea">
				<h1>
					<a href="main.html" onclick="GA_Event('PC_공통','로고','현대식품관투홈');">
						<img src="img/header_logo_freex34.png" alt="현대식품관">
					</a>
				</h1>
				<div class="util" id="dawnLoginY" style="display: hidden">
					<a href="#"
						onclick="GA_Event('PC_공통', '헤더', '로그인'); javascript:loginPopup('');return false;">로그인</a>
					<a
						href="https://tohome.thehyundai.com/front/cua/mypage/updateMember.do">회원정보변경</a>
					<a
						href="https://tohome.thehyundai.com/front/mp/mpa/selectMyPageMain.do"
						onclick="GA_Event(&#39;PC_공통&#39;, &#39;헤더&#39;, &#39;마이페이지&#39;);">마이페이지</a>
					<a
						href="https://tohome.thehyundai.com/front/dp/dpf/customerCenterMain.do"
						onclick="GA_Event(&#39;PC_공통&#39;, &#39;헤더&#39;, &#39;고객센터&#39;);">고객센터</a>
				</div>
			</div>
			<div class="gnbarea">
				<div id="popCategory">
					<script type="text/javascript">
				  
				  $(document).ready(function(){
					  // 퍼블 정상 동작을 위해 $(document).ready에 추가 
					  $('.depth1.brand-wrap .depth2 button, .depth3').hover(function(){
					        $(this).parents('ul.lnb').addClass('on');
					    }, function() {
					        $(this).parents('ul.lnb').removeClass('on');
					    });
					    $('.exhibition-wrap, .brand-ct').hover(function(){
					        $(this).parents('ul.lnb').addClass('on2');
					    }, function() {
					        $(this).parents('ul.lnb').removeClass('on2');
					    });
				  });
					</script>
					<!-- 카테고리 -->
					<botton type="botton" class="btn-category"> "카테고리 전체보기" </botton>
					<ul class="gnb-list" id="homeGnbList">
						<li><a href="">베스트</a></li>
						<li><a href="">세일</a></li>
						<li><a href="">신상품</a></li>
						<li><a href="">매거진</a></li>
						<li><a href="">선물하기</a></li>
						<li><a href="">이벤트</a></li>
						<li><a href=""><img src="img/esuper_logo.png" alt="현대식품관"></a></li>
					</ul>
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
					<button type="button" class="btn-cart" onclick="linkToCart();">
						<span>0</span>
					</button>
				</div>
			</div>

		</div>
	</header>

	<!-- Swiper -->
	<div class="swiper mySwiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img src="img/ccrdg.jpg">
			</div>
			<div class="swiper-slide">
				<img src="img/dqham.jpg">
			</div>
			<div class="swiper-slide">
				<img src="img/egxhu.jpg">
			</div>
			<div class="swiper-slide">
				<img src="img/emtzw.jpg">
			</div>
		</div>
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-pagination"></div>
	</div>

	<!-- Swiper JS -->
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
      var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>
</body>
</html>