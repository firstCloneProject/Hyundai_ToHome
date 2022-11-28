<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="HeaderFooter/header.jsp"%>


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
						<div clafss="swiper-wrapper">
							<c:choose>
								<c:when test="${!empty saleProductList}">
									<c:forEach var="pro" items="${saleProductList }">
										<div class="swiper-slide">
											<a href=""> <span class="thumb"> <img
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
				<strong>${ctgrProductList[0].category }</strong> <a href="">${ctgrProductList[0].category } 전체보기</a>
			</h2>
			<div class="categoryswiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<ul class="product-list big">

							<c:choose>
								<c:when test="${!empty ctgrProductList}">
									<c:forEach var="pro" items="${ctgrProductList }">
										<li><a href=""> <img src="${pro.imagePath }" alt="">
												<strong class="txt-ti ellipsis">[${pro.companyName }] ${pro.productName }</strong>
										</a> <span class="info"> <span class="txt-prcie"> <strong>
														<em>${pro.productPrice }</em> 원
												</strong>
											</span>
										</span></li>
									</c:forEach>
								</c:when>
							</c:choose>
							
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
<%-- <jsp:include page="HeaderFooter/footer.jsp"></jsp:include> --%>
<%@ include file="HeaderFooter/footer.jsp"%>