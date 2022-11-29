<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="HeaderFooter/header.jsp"%>
<%-- <jsp:include page="HeaderFooter/header.jsp"></jsp:include> --%>
<link rel="stylesheet" href="css/main.css">

<script defer type="text/javascript" src="js/script.js"></script>
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
							<c:choose>
								<c:when test="${!empty saleProductList}">
									<c:forEach var="pro" items="${saleProductList }">
										<div class="swiper-slide">
											<a href="main/pDetail.do?ProductID=${pro.productID }"> <span class="thumb"> <img
													src="${pro.imagePath}" alt=""> <span class="badge">
														<strong>${pro.salePercent}%</strong>
												</span>
											</span> <strong class="txt-ti">[${pro.companyName}]${pro.productName }</strong>

												<span class="txt-price"> <strong><em><fmt:formatNumber type="number" maxFractionDigits="3" value="${pro.productPrice-(pro.productPrice % 10)}" /></em>원</strong>
													<del><fmt:formatNumber type="number" maxFractionDigits="3" value="${pro.productPriceOri }" /></del>
											</span>
											</a>
										</div>
									</c:forEach>
								</c:when>
							</c:choose>
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
						src="img/banner1.jpg" alt=""></a></li>
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
				<strong>${ctgrProductList[0].category }</strong> <a href="">${ctgrProductList[0].category } 전체보기</a>
			</h2>
			<div class="categoryswiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<ul class="product-list big">

							<c:choose>
								<c:when test="${!empty ctgrProductList}">
									<c:forEach var="pro" items="${ctgrProductList }">
										<li><a href="main/pDetail.do?productID=${pro.productID }"> <img src="${pro.imagePath }" alt="">
												<strong class="txt-ti ellipsis">[${pro.companyName }] ${pro.productName }</strong>
										</a> <span class="info"> <span class="txt-prcie"> <strong>
														<em>${pro.productPrice }</em> 원
												</strong>
											</span>
										</span></li>
									</c:forEach>
								</c:when>
							</c:choose>
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
<%-- <jsp:include page="HeaderFooter/footer.jsp"></jsp:include> --%>
<%@ include file="HeaderFooter/footer.jsp"%>
