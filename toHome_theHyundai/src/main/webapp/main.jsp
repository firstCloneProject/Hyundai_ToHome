<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>

<html>

<head>
<title>새벽투홈</title>
<link rel="icon" href="img/favicon.ico" />
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
<script defer type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script defer type="text/javascript" src="js/script.js"></script>
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
					<!--로그인 전-->
					<div class="util" id="dawnLoginN" style="display: hidden">
						<a href="로그인 DAO">로그인</a> <a href="회원정보 변경">회원가입</a> <a href="">마이페이지</a>
						<a href="">고객센터</a>
					</div>
					<!--로그인 후-->
					<!-- <div class="util" id="dawnLoginY" style="display: hidden">
              <button
                type="button"
                class="btn-linedown btn-personal"
                id="memNmText"
              ></button>
              <a href="로그아웃 DAO">로그아웃</a>
              <a href="회원정보 변경">회원정보변경</a>
              <a href="">마이페이지</a>
              <a href="">고객센터</a>
            </div> -->
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
	<div id="contents">
		<section class="mainbanner">
			<div class="swiper-container">
				<!-- Additional required wrapper -->
				<div class="swiper-wrapper ">
					<!-- Slides -->
					<c:choose>
						<c:when test="${!empty bannerList}">
							<c:forEach var="url" items="${bannerList}">
								<div class="swiper-slide">
									<img src="${url}" alt="">
								</div>
							</c:forEach>
						</c:when>
					</c:choose>
				</div>
				<!-- If we need pagination -->
				<div class="swiper-pagination"></div>

				<!-- If we need navigation buttons -->
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>

				<!-- If we need button -->
				<div class="swiper-button-play btn-play"></div>
			</div>
		</section>
		<div id="cdnTimeSale">
			<section class="timesale" id="timesale">
				<div class="innercon">
					<h2>
						<strong>알뜰 장보기</strong><br> <small>지금 이 순간 만날 수 있는 특가</small>
					</h2>
					<div class="timesaleswiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a href=""> <span class="thumb"> <img
										src="/img/2801001129909_00 - 복사본.jpg" alt=""> <span
										class="badge"> <strong> 15% </strong>
									</span>
								</span> <strong class="txt-ti">[맛나는]우유</strong> <span class="txt-price">
										<strong><em>300</em>원</strong>
									<del>400</del>
								</span>
								</a>
								<button type="button" class="btn-cart" onclick="">장바구니
									담기</button>
							</div>
							<!-- <div class="swiper-slide">
                  <a href="">
                    <span class="thumb">
                      <img src="/img/2801001129909_00 - 복사본.jpg" alt="">
                      <span class="badge">
                        <strong>
                          15%
                        </strong>
                      </span>
                    </span>
                    <strong class="txt-ti">[맛나는]우유</strong>
                    <span class="txt-price">
                      <strong><em>300</em>원</strong><del>400</del>
                    </span>
                  </a>
                  <button type="button" class="btn-cart" onclick="">장바구니 담기</button>
                </div> -->
						</div>
						<div class="swiper-wrapper"></div>
					</div>
				</div>

			</section>
		</div>
		<section class="innercon.aos-init.aos-animate"></section>
		<section class="innercon exhibition aos-init aos-animate">
			<ul class="exhibition-ban">
				<li data-aos="fade up"><a href=""><img
						src="/img/banner.jpg" alt=""></a></li>
				<li data-aos="fade up"><a href=""><img
						src="img/banner2.jpg" alt=""> </a></li>
			</ul>

		</section>
		<section class="innercon.exhibition.aos-init.aos-animate"></section>
		<section class="innercon.mdspick.aos-init.aos-animate"></section>
		<section class="innercon.exhibition.aos-init.aos-animate"></section>
		<section class="innercon.promise.aos-init.aos-animate"></section>
		<section class="innercon.exhibition.aos-init.aos-animate"></section>
		<section class="exhibition.banproloop.aos-init.aos-animate"></section>
		<section class="innercon.exhibition.aos-init.aos-animate"></section>
		<section class="innercon category aos-init aos-animate"
			data-aos="fade up">
			<h2 class="title">
				<strong>곡물과 견과</strong> <a href="">곡물과 견과 전체보기</a>
			</h2>
			<div class="categoryswiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<ul class="product-list big">
							<li><a href=""> <img src="/img/11.jpg" alt=""> <strong
									class="txt-ti ellipsis">[설성목장] 한우 꽃등심 200g</strong>
							</a> <span class="info"> <span class="txt-prcie"> <strong>
											<em>44,500</em> 원
									</strong>
								</span>
							</span></li>
							<li><a href=""> <img src="/img/12.jpg" alt=""> <strong
									class="txt-ti ellipsis">[설성목장] 한우 세절 200g</strong>
							</a> <span class="info"> <span class="txt-prcie"> <strong>
											<em>24,500</em> 원
									</strong>
								</span>
							</span></li>
							<li><a href=""> <img src="/img/13.jpg" alt=""> <strong
									class="txt-ti ellipsis">[설성목장] 한우 불고기용 200g</strong>
							</a> <span class="info"> <span class="txt-prcie"> <strong>
											<em>74,500</em> 원
									</strong>
								</span>
							</span></li>
							<li><a href=""> <img src="/img/14.jpg" alt=""> <strong
									class="txt-ti ellipsis">[설성목장] 한우 등심구이용 200g</strong>
							</a> <span class="info"> <span class="txt-prcie"> <strong>
											<em>44,500</em> 원
									</strong>
								</span>
							</span></li>
							<li><a href=""> <img src="/img/15.jpg" alt=""> <strong
									class="txt-ti ellipsis">[설성목장] 한우 채끝살 200g</strong>
							</a> <span class="info"> <span class="txt-prcie"> <strong>
											<em>52,500</em> 원
									</strong>
								</span>
							</span></li>
							<li><a href=""> <img src="/img/16.jpg" alt=""> <strong
									class="txt-ti ellipsis">[설성목장] 한우 안심구이용 200g</strong>
							</a> <span class="info"> <span class="txt-prcie"> <strong>
											<em>62,500</em> 원
									</strong>
								</span>
							</span></li>
						</ul>
					</div>
				</div>
			</div>

		</section>
		<section class="innercon.category.aos-init.aos-animate"></section>
		<section class="innercon.category.aos-init.aos-animate"></section>
		<section class="innercon.exhibition.aos-init.aos-animate"></section>
		<section class="innercon.bottominfo.aos-init.aos-animate"></section>

	</div>

	</div>
	<footer id="footer">
		<div class="util">
			<div class="inner">
				<a href="">브랜드소개</a> <a href="">이용약관</a> <a href=""><strong>개인정보처리방침</strong></a>
				<a href="">청소년보호정책</a> <a href="">영상기기운영방침</a>
				<div class="share">
					<button type="button" class="btn-youtube" onclick="window.open("
						https://www.youtube.com/channel/UCiAFKYYJOexSKyKmhEIXDEw?outUrlYn=Y&#39
						")>유튜브</button>
					<button type="button" class="btn-facebook" onclick="window.open("
						https://www.facebook.com/tohome.official?outUrlYn=Y&#39 ")>페이스북</button>
					<button type="button" class="btn-instagram" onclick="window.open("
						https://www.instagram.com/tohome.official?outUrlYn=Y&#39 ")>인스타그램</button>
				</div>
				<div class="familysite">
					<button type="button" class="btn-site" onclick="">Family
						Site</button>
					<ul class="link-list">
						<li><a href="https://www.thehyundai.com/Home.html"
							target="_blank" onclick="">더현대닷컴</a></li>
						<li><a href="https://www.greating.co.kr/" target="_blank"
							onclick="">그리팅 (greating)</a></li>
						<li><a href="https://www.hmall.com/p/" target="_blank"
							onclick="">현대Hmall</a></li>
						<li><a href="https://www.thehandsome.com/ko/" target="_blank"
							onclick="">더한섬</a></li>
						<li><a href="https://www.eqlstore.com/main" target="_blank"
							onclick="">한섬 EQL</a></li>
						<li><a href="https://www.hfashionmall.com/sfmweb"
							target="_blank" onclick="">H패션몰</a></li>
						<li><a href="https://www.hddfs.com/shop/dm/main.do"
							target="_blank" onclick="">현대백화점 DUTY FREE</a></li>
						<li><a
							href="https://mall.hyundailivart.co.kr/front/index_org.lv"
							target="_blank" onclick="">현대리바트몰</a></li>
						<li><a href="https://www.hyundairentalcare.co.kr/"
							target="_blank" onclick="">현대렌탈케어</a></li>
						<li><a href="https://www.h-point.co.kr/cu/main/index.nhd"
							target="_blank" onclick="">H.point</a></li>
					</ul>
				</div>
			</div>


			<ul>
				<li href="">브랜드소개</li>
				<li href="">이용약관</li>
				<li href="">개인정보처리방침</li>
				<li href="">청소년보호정책</li>
				<li href="">영상기기운영방침</li>
			</ul>
			<div class="share"></div>
			<div class="familysite"></div>
		</div>
		<div class="info">
			<div class="inner">
				<dir class="logo">현대식품관
				</dir>
				<div class="fnDawnBizpCrstList">
					<strong>(주)현대백화점</strong><br> <span>대표이사 : 김형종 외 2인</span> <span>
						주소 : 서울 강남구 테헤란로98길 12 (대치동) 현대백화점</span> <br>"전화 : 02-1800-9549" <br>"이메일
					: tohome@thehyundai.com" <br>"사업자 등록번호 : 211-87-21455" <a
						href="#" onclick="">사업자등록확인</a> <br> "통신판매업자 신고번호 :
					2010-서울강남-01882" <br>
					<p class="essential-info">
						<em>현대식품관 투홈의 개별 판매자가 등록한 상품(브랜드직송) 상품에 대한 광고, 상품주문, 배송, 환불의
							의무와 책임은 각 판매자가 부담하고, <br>현대식품관 투홈은 통신판매 중개자로서의 의무와 책임을 다합니다.
						</em> <br>고객님의 안전거래를 위해 현금결제 시 KG이니시스 구매안전 서비스를 이용하실 수 있습니다.
						<button type="button" class="confirm-btn" onclick="">서비스
							가입사실 확인</button>
					</p>
					<small class="copyright">Copyright © Hyundai Department
						Store. All rights reserved.</small>
				</div>
			</div>
		</div>
		<button type="button" class="btn-top.scroll"></button>
	</footer>
</body>
</html>