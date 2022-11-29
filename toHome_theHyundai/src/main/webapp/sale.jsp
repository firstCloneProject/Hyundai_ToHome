<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="HeaderFooter/header.jsp"%>
<link rel="stylesheet" href="css/main.css">
<script defer type="text/javascript" src="js/script.js"></script>
<div id="wrap" class="main">
	<div id="contents">
		<div class="innercon">
        <h2>세일</h2>
        
        <!-- filter// -->
        <section class="list-filter">
            <div class="filter-wrapper">
	            <div class="form-filter">
	               <ul class="btn-group" id="sortType">
	               	<li>
	               		<div class="popinline recominfo">
	               			<button type="button" class="icon question" onclick="">?</button>
	               			<div id="p_popRecomInfo" class="popinner">
	               				<button type="button" class="btn-close" onclick="">닫기</button>
	               				판매량, 사용자 선호도 등을 고려해 상품을 추천해 드리며, 일부 광고상품이 상단에 노출될 수 있습니다.</div>
	               		</div>
	               		<button type="button" class="active" onclick="">추천순</button>
	               	</li>
	               	<li>
	               		<button type="button" onclick="">신상품순</button>
	               	</li>
	               	<li>
	               		<button type="button" onclick="">혜택순</button>
	               	</li>
	               	<li>
	               		<button type="button" onclick="">인기상품순</button>
	               	</li>
	               	<li>
	               		<button type="button" onclick="">낮은가격순</button>
	               	</li>
	               	<li>
	               		<button type="button" onclick="">높은가격순</button>
	               	</li>
	               </ul>
	               <button type="button" id="btn_filter" class="btn small black btn-filter" onclick="">필터</button>
	           </div>
            </div>	
            <div class="select-filter">
                <div class="con"></div>
                <button type="button" class="btn small black btn-reset" onclick="">초기화</button>
            </div>
        </section>
        <ul class="product-list" id="ulItemList">
			<li>
				<a href="">
           			<span class="thumb">
					<img src="https://tohomeimage.thehyundai.com/PD/PDImages/S/0/0/6/8809168569600_00.jpg?RS=350x420" alt="" >
        			<div class="badgewrap">
            		<span class="badge"><strong>35%</strong></span>             
        				</div>
    				</span>
    				<strong class="txt-ti ellipsis">[암소한우] 한우 1등급 채끝구이용 200g(냉장)</strong>
    			</a>
    			<span class="info">
    			<span class="txt-price"><strong><em>26,390</em>원</strong><del>40,600</del></span>
					<button type="button" class="btn-cart" onclick="">장바구니 담기</button>
				</span>
			</li>

		</ul>
	</div>
	</div>
</div>

	
<%@ include file="HeaderFooter/footer.jsp"%>