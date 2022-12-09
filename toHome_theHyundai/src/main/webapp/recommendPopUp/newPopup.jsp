<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- <script type="text/javascript">
	function popupClose(){
		location.href='cartController';
	}
</script> -->
<script type="text/javascript" src="js/script.js"></script>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/recommendPopUp/s-style_v2.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/recommendPopUp/common.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/recommendPopUp/css-library.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/recommendPopUp/s-style_v2.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/recommendPopUp/member.min.css">
</head>
<body>

  <div id="p_popReviewPic" class="popup popreviewpic open" style="top: 0px; z-index: 100; opacity: 1;">
    <div class="inner" style="top: 297px;">
        <input class="btn-close" type="image" src="recommendPopUp/Xbutton.PNG" onclick="location.href='${pageContext.request.contextPath}/cartController'" style="float:right;"></input>
        <p>${sessionScope.loginUser.customerId}</p>
        <header>
            <h2>
                <div class="grade-star"><span><span style="width: 100%;">5</span></span></div>
               	<span class="txt-option">장바구니에 담긴 재료들로 다양한 요리를 만들어보세요. <br>
               							 이미지를 눌러 레시피 공간으로 이동해보세요. </span>
                <c:forEach var="test" items="${test}" >
                	<strong>${test.productName}</strong>
                </c:forEach>
            </h2>
        </header>

        <div class="contents">
        
            <div class="swiper-container reviewpicswiper swiper-container-horizontal" style="opacity: 1;">
                <a href="#" onclick="submitForm()">
                	<div class="swiper-wrapper" style="transform: translate3d(-520px, 0px, 0px); transition-duration: 0ms;">
                		<div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active swiper-slide-prev" data-swiper-slide-index="0" style="width: 520px;">
                			<img src="https://tohomeimage.thehyundai.com/pd/pde/2022/06/30/081639702/SmartSelect_20220522-200744_G.jpg?RS=720&amp;AO=1" alt="">
                		</div>
                		<c:forEach var="test" items="${test}">
	                		<div class="swiper-slide swiper-slide-active swiper-slide-duplicate-next swiper-slide-duplicate-prev" data-swiper-slide-index="0" style="width: 520px;">
	                			<img src="${test.recipeThumb}" alt="상품사진">
	                		</div>
                		</c:forEach>
                		<div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active swiper-slide-next" data-swiper-slide-index="0" style="width: 520px;">
                			<img src="https://tohomeimage.thehyundai.com/pd/pde/2022/06/30/081639702/SmartSelect_20220522-200744_G.jpg?RS=720&amp;AO=1" alt="">
                		</div>
                	</div>
                </a>
                <div class="swiper-button-next-reviewpic" tabindex="0" role="button" aria-label="Next slide">

                </div>
                <div class="swiper-button-prev-reviewpic" tabindex="0" role="button" aria-label="Previous slide">
                </div>
                <div class="swiper-pagination-reviewpic swiper-pagination-fraction">
                	 <form id="frm" name="frm">
	    				 <input type="hidden" id="id" name="id">
     	           	 <a href="#" onclick="submitForm()" style="color:white">레시피 보러가기</a>
					</form>
                </div>
            <!-- <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span> --></div>
         
        </div>
       
    </div>
</div>
<script type="text/javascript">
	/* function goServlet(){
		location.href="mgzController";
	} */

	function submitForm(){
	var frm = document.frm;
	    frm.action = "${pageContext.request.contextPath}/magazine/getRecommand.do";
	    frm.submit();
	}
	</script>
	</form>
</script>
</body>
</html>