<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="cartHeader.jsp" %>
<script type="text/javascript" src="js/script.js"></script>
<link rel="stylesheet" type="text/css" href="cart.css">
<c:set var="sumPrice" value="0"/>
<c:set var="sumSalePrice" value="0"/>
<c:set var="sumTotalPrice" value="0"/>
<div id="contents">
	<div class="innercon" style="position:relative; margin:0 ato; width:1204px;">
		<h2>장바구니</h2>
		
		 <!-- 전체선택// -->
            <section class="cart-select">
				 <label><button>전체선택</button></label>
				    <ul class="btn-group">
				        <li><button type="button" onclick="javascript:deleteSelectedBasket();">삭제</button></li>
				        <li><button type="button" onclick="javascript:deleteSoldoutBaskt();">품절삭제</button></li>
				        <li><button type="button" onclick="javascript:clickAddLikeItem();">좋아요담기</button></li>
				    </ul>
			</section>
         <!-- 전체선택// -->
		
		
		 <!-- 보여지는 테이블 부분 -->
		 <form id="frmbasktInfo">
		 	<fieldset class="list-field toggle active">
		 	
		 		<!-- <legend class="tit toggle-ti">새벽배송</legend> -->
		 		<div class="cont" style="display: block;">
		 			<ul class="product-list vertical"> <!-- 테이블 -->
		 				
		 				<c:forEach var="test" items="${test}">
		 				<li dlvdivision="1_DAWN" data-dlvc_pay_gbcd="10">
		 				<input type="checkbox" />
		 				<button type="button" class="btn-del" onclick="javascript:deleteBasketItem(this);">삭제</button>
		 				
								
			 				<label class="thumb">
			 				<input type="checkbox"/>
			 					<span><img src="${test.imagePath}"/></span> <!-- 사진 -->
	
			 				</label>
			 				
			 				<div class="contr">
			 						<strong>${test.productName}</strong>
			 						
			 						<!-- <a href="#" onclick=""><strong>${test.productId}상품명</strong></a> -->
			 							
					 				<span class="info">
					 					<div class="ea-area">
					 							
					 						<button type="button" class="btn-down" onclick="changeOrdQtuDown(this);">"수량낮추기"</button>
					 						<div class="quantity">${test.quantity}</div>
					 						<button type="button" class="btn-up" onclick="changeOrdQtyUp(this);">수량올리기</button>
					 					</div>
					 					
					 					<span class="txt-price">
					 						<strong>${test.totalPrice}</strong>
					 						<c:set var="sumTotalPrice" value="${sumtotalPrice + test.totalPrice}"/>
					 						
					 						<del>${test.price}</del>
					 						<c:set var="sumPrice" value="${sumPrice + test.price}"/>
					 						
					 						<!-- ${test.salePrice} -->
					 						<c:set var="sumSalePrice" value="${sumSalePrice + test.salePrice}"/>
											<div class="probtn">
						 						<button type="button" class="btn orange btn-buy" onclick="">바로구매</button>
						 					</div>
					 					</span>
					 					
					 					
						 				
				 		
				 			
			 				</div><br>
			 			</li>
			 			</c:forEach>
			 			

		
			 				<!-- 배송비 부분 -->
			 				<li class="deliveryinfo" id = "deliveryinfo_1_DAWN" dlvdivision="1_DAWN" data-dlv_price="3500" data-nchg_dlv_cond_amt="50000">
			 					<div>
			 						<p id="dlvCostInf_1_DAWN">"배송비"<em>${test[0].deliveryPrice}</em>"원(50,000원 이상 결제 시 무료)"</p>
			 						
			 					</div>
			 				</li>

		 			</ul>
		 		</div>
	
		 	</fieldset>
		 	
		 	<!--  오른쪽 배너 -->
		 	<div class="rightarea">
		 		<!--  <fieldset class="delivery-field" style="display:none;">
					<legend class="hide">배송지 정보</legend>

					 배송지 정보// 
					<button type="button" class="btn-round"
						onclick="fnShippingList('cart',null,false, $(this).data('dstn_seq'));"
						data-dstn_seq="0000000001">배송지 변경</button>
					<p class="txt">
						기본배송지 <strong>경기도 시흥시</strong>
					</p>
					 //배송지 정보

				</fieldset> -->
				
				<!-- 결제내역 -->
				<fieldset class="price-field">
					<legend class="hide">결제내역</legend>
					<dl class="orderprice">
						<dt>총 상품금액</dt>
						<dd><strong><em id="emPriceTotNrmlPrice"><c:out value="${sumPrice}"/></em> 원</strong></dd>
					</dl>
					<dl class="minus">
						<dt>총 할인금액</dt>
						<dd>
							<strong> <em id="emPriceFTotDcAmt"><c:out value="${sumSalePrice}"/></em> 원
							</strong>
						</dd>
					</dl>

					<dl>
						<dt>총 배송비</dt>
						<dd>
							<strong> <em id="emPriceFTotDlvPrice"></em>3500 원
							</strong>
						</dd>
					</dl>
					<p class="txt">주문 결제 시 배송지에 따라 배송비가 상이할 수 있습니다.</p>

					<dl class="total">
						<dt>총 결제예상금액</dt>

						<dd>
							<strong> <em id="emPriceFTotPayAmt"><c:out value="${sumTotalPrice}"/></em>원
							</strong>
						</dd>
					</dl>
				</fieldset>
				
				<button type="button" class="btn fill bigger orange btn-order" onclick="linkToOrder()">주문하기<em id="emTotalItemCnt">메뉴개수 2</em></button>
				
		 	</div>
		 	
		 </form>
		 
		 
		 
		 
		 
		 
		 <!-- 주문안내 -->
		 <section class="cart-info infotxt">
                <strong>주문 안내</strong>
                <ul>
                    <li>장바구니에 담긴 상품은 최대 60일간 보관됩니다.(로그인 기준)</li>
                    <li>패키지/딜 종료 시 해당 상품은 자동 삭제됩니다.</li>
                    <li>장바구니에 최대 100개 상품을 담을 수 있습니다.</li>
                </ul>
         </section>
		 	
		
	</div>
</div>

<%@ include file="/HeaderFooter/footer.jsp" %>