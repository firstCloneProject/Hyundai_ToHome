<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 <%@page import="java.util.ArrayList" %>
 <%@ page import="magazine.mgzController" %> 
 
<%-- <% List<mgzVO> recipeList = (List<Arrayl>)request.getAttribute("recipeList"); %>
 --%>
<html lang="ko">

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

  <title>
    매거진
  </title>

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/magazine/css1.css">

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/magazine/css2.css">

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/magazine/css3.css">

  <link rel="stylesheet" href="popup.css">

</head>

<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0" style="">
<%@ include file="../HeaderFooter/header.jsp"%>


  <div id="wrap" class="magazine main">
   
    <div id="contents">

      <div class="innercon">
        <!-- lnbarea// -->
        <div class="lnbarea">
          <h2>매거진</h2>

        </div>

        <!-- banner// -->
        <section class="banner">
          <div class="swiper-container bannerswiper"></div>
          <div class="btn-area">
            <div class="swiper-button-prev-banner"></div>
            <div class="swiper-button-next-banner"></div>
            <div class="swiper-pagination-tot">
              <strong>00</strong>
              /
              <span>00</span>
            </div>
          </div>
        </section>
        <!-- //banner -->

        <!-- 매거진 리스트들 -->

        <!-- list// -->
        <ul class="product-list" id="ulItemList">
				<!--1번-->
				<c:forEach var="mgzVO" items="${recipeList}">
					<!-- <c:set var="num" value="${status.count}"  />
          <c:choose>
            <c:when test="${num%2==0}"> -->
              <li style="background-color: rgb(0, 0, 0);">
                <a href="${pageContext.request.contextPath}/magazine/mgzDetail.jsp?recipeName=${mgzVO.recipeName}&recipeImagepath=${mgzVO.recipeImagepath}" class="bg-box">
                  <span class="thumb">
                  <div class="grid-item">
                  <img src="${pageContext.request.contextPath}/${mgzVO.recipeThumb}" alt="">
                  <div class="cate">
                    <em class="balck">레시피</em>
                  </div>
                  <span>
                      <strong style="color:#ffffff;">${mgzVO.recipeName}<br></strong>
                  </span>
                  </div>
                  </span>
                </a>  
              </li>            
            <!-- </c:when>
            <c:otherwise>
              <li style="background-color: rgb(255, 255, 255);">
                <a href="${pageContext.request.contextPath}/magazine/mgzDetail.jsp?recipeName=${mgzVO.recipeName}&recipeImagepath=${mgzVO.recipeImagepath}" class="bg-box">
                  <span class="thumb">
                  <div class="grid-item">
                  <img src="${pageContext.request.contextPath}/${mgzVO.recipeThumb}" alt="">
                  <div class="cate">
                    <em class="balck">레시피</em>
                  </div>
                  <span>
                      <strong style="color: #000;;">${mgzVO.recipeName}<br></strong>
                  </span>
                  </div>
                  </span>
                </a>   
              </li> 
            </c:otherwise>
          </c:choose> -->
        </c:forEach>
    
		</ul> 
        <!-- //list -->
      </div>
      <!-- //매거진 리스트 -->

    </div>

    <footer id="footer">
      <div class="util">
        <div class="inner">
          <a href="/front/dp/dpf/companyIntro.do" class="btn-tohome"
            onclick="GA_Event('PC_공통', '푸터_메뉴', '브랜드소개');">브랜드소개</a>
          <a href="/front/dp/dpf/serviceTos.do" onclick="GA_Event('PC_공통', '푸터_메뉴', '이용약관');">이용약관</a>
          <a href="/front/dp/dpf/personalInfoPolicy.do" onclick="GA_Event('PC_공통', '푸터_메뉴', '개인정보처리방침');">
            <strong>개인정보처리방침</strong>
          </a>
          <a href="/front/dp/dpf/youthPolicy.do" onclick="GA_Event('PC_공통', '푸터_메뉴', '청소년보호정책');">청소년보호정책</a>
          <a href="/front/dp/dpf/imagingDevicePolicy.do" onclick="GA_Event('PC_공통', '푸터_메뉴', '영상기기운영방침');">영상기기운영방침</a>

          <div class="share">
            <button type="button" class="btn-youtube"
              onclick="GA_Event('PC_공통', '푸터_SNS', 'youtube'); location.href='https://www.youtube.com/channel/UCiAFKYYJOexSKyKmhEIXDEw?outUrlYn=Y'">youtube</button>
            <button type="button" class="btn-facebook"
              onclick="GA_Event('PC_공통', '푸터_SNS', 'facebook'); location.href='https://www.facebook.com/tohome.official?outUrlYn=Y'">facebook</button>
            <button type="button" class="btn-instagram"
              onclick="GA_Event('PC_공통', '푸터_SNS', 'instagram'); location.href='https://www.instagram.com/tohome.official?outUrlYn=Y'">instagram</button>
          </div>

          <div class="familysite">
            <button type="button" class="btn-site" onclick="$('.familysite .link-list').fadeToggle()">Family
              Site</button>
            <ul class="link-list">
              <li>
                <a href="https://www.thehyundai.com/Home.html" target="_blank"
                  onclick="GA_Event('PC_공통', '패밀리사이트', '더현대닷컴');">더현대닷컴</a>
              </li>
              <li>
                <a href="https://www.greating.co.kr/" target="_blank"
                  onclick="GA_Event('PC_공통', '패밀리사이트', '그리팅 (greating)');">그리팅 (greating)</a>
              </li>
              <li>
                <a href="https://www.hmall.com/p/" target="_blank"
                  onclick="GA_Event('PC_공통', '패밀리사이트', '현대Hmall');">현대Hmall</a>
              </li>
              <li>
                <a href="https://www.thehandsome.com/ko/" target="_blank"
                  onclick="GA_Event('PC_공통', '패밀리사이트', '더한섬');">더한섬</a>
              </li>
              <li>
                <a href="https://www.eqlstore.com/main" target="_blank"
                  onclick="GA_Event('PC_공통', '패밀리사이트', '한섬 EQL');">한섬 EQL</a>
              </li>
              <li>
                <a href="https://www.hfashionmall.com/sfmweb" target="_blank"
                  onclick="GA_Event('PC_공통', '패밀리사이트', 'H패션몰');">H패션몰</a>
              </li>
              <li>
                <a href="https://www.hddfs.com/shop/dm/main.do" target="_blank"
                  onclick="GA_Event('PC_공통', '패밀리사이트', '현대백화점 DUTY FREE');">현대백화점 DUTY FREE</a>
              </li>
              <li>
                <a href="https://mall.hyundailivart.co.kr/front/index_org.lv" target="_blank"
                  onclick="GA_Event('PC_공통', '패밀리사이트', '현대리바트몰');">현대리바트몰</a>
              </li>
              <li>
                <a href="https://www.hyundairentalcare.co.kr/" target="_blank"
                  onclick="GA_Event('PC_공통', '패밀리사이트', '현대렌탈케어');">현대렌탈케어</a>
              </li>
              <li>
                <a href="https://www.h-point.co.kr/cu/main/index.nhd" target="_blank"
                  onclick="GA_Event('PC_공통', '패밀리사이트', 'H.point');">H.point</a>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="info">
        <div class="inner">
          <img src="img1\footlogo.png">
          <div class="logo">현대식품관</div>

          <div id="fnDawnBizpCrstList">
            <strong>(주)현대백화점</strong><br>
            <span>대표이사 : 김형종 외 2인</span>
            <span>
              주소 : 서울 강남구 테헤란로98길 12 (대치동) 현대백화점</span><br>전화 : 02-1800-9549<br>이메일 : tohome@thehyundai.com<br>사업자 등록번호
            : 211-87-21455<a href="#"
              onclick="javascript:fnAppLoad('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2118721455');return false;">사업자등록확인</a><br>통신판매업자
            신고번호 : 2010-서울강남-01882<br>
            <p class="essential-info">
              <em>현대식품관 투홈의 개별 판매자가 등록한 상품(브랜드직송) 상품에 대한 광고, 상품주문, 배송, 환불의 의무와 책임은 각 판매자가 부담하고,<br>현대식품관 투홈은 통신판매 중개자로서의
                의무와 책임을 다합니다.</em><br>고객님의 안전거래를 위해 현금결제 시 KG이니시스 구매안전 서비스를 이용하실 수 있습니다.<button type="button"
                class="confirm-btn" onclick="fn.popupOpen('#guaranteePopup')" ;="">서비스 가입사실 확인</button>
            </p>
            <small class="copyright">Copyright © Hyundai Department Store. All rights reserved.</small>
          </div>
        </div>
      </div>

    </footer>
  </div>

</body>

</html>