<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="order.min.css">
<link rel="stylesheet" type="text/css" href="common.min.css">
<link rel="stylesheet" type="text/css" href="css-library.min.css">

<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang ="ko">
<head>
<meta charset="UTF-8">
<title>주문하기</title>


</head>
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0" style="">
    <div id="wrap" class="order ordersheet">
        <header id="header" class="short">
            
            <div class="skip">
                <a href="http://localhost/toHome_theHyundai/order/order.jsp#contents">본문으로 건너뛰기</a>
            </div>
            
            <div class="inner">
                <!-- toparea// -->
                <div class="toparea">
                    <h1><a href="http://localhost/front/dp/dpa/dawnHome.do"><img src="./주문하기2_files/header_logo_freex34.png" alt="현대식품관"></a></h1>
                    
                    <div class="util">
                        
                            
                                <!-- util : 로그인 후// -->
                                <a href="http://localhost/front/cua/logout.do" class="active">로그아웃</a>
                                <a href="http://localhost/front/cua/mypage/updateMember.do">회원정보변경</a>
                                <!-- //util : 로그인 후 -->
                            
                            
                        
                        <a href="http://localhost/front/mp/mpa/selectMyPageMain.do">마이페이지</a>
                        <a href="http://localhost/front/dp/dpf/customerCenterMain.do">고객센터</a>
                    </div>
                    
                </div>
                <!-- //toparea -->
            </div>
        </header>
        <form id="receoptForm" name="receoptForm" target="_blank" method="post">
            <input type="hidden" name="xxx">
        </form>
        
        <form id="shippingForm" name="shippingForm" method="post">
            <input type="hidden" name="xxx">
        </form>
        
        <form id="orderForm" name="orderForm" method="post">
            <input type="hidden" name="slitmData">
            <input type="hidden" name="stlmData">
            <input type="hidden" name="orderData">
            <input type="hidden" name="orderItemData">
            <input type="hidden" name="orderItemPromotionData">
            <input type="hidden" name="orderDlvDcData">
            <input type="hidden" name="changeOrdDlvFormPtcGbcd">
            <input type="hidden" name="giftItemData">
        </form>
        
        <!-- 상품list -->
        <div id="orderItemDiv"><span id="orderItemDiv_S02211132600"></span></div>
        <!-- 주문 -->
        <div id="orderDataDiv"></div>
        <!-- 상품데이터 -->
        <div id="orderItemShippingDataDiv"><span id="0000000001"></span></div>
        <!-- 배송비 -->
        <div id="dlvDataDiv"></div>
        <!-- 결제정보 -->
        <div id="stlmDataDiv"></div>
        
        <!-- contents// -->
        <div id="contents">
            <div class="innercon">
                <h2>주문하기</h2>
                <form>
                    <div class="conarea">
                        <section class="leftarea">
                           <div id="orderShippingSlitmDiv">
                                
           <script type="text/javascript">
           
           var delayYn = 'N';
           var notDlvItm = false;
           var notDlvItmMsg = '';
           var messageInfo = '';
           
           $(window).load(function() {
               
               $("#orderShippingSlitmDiv delivery-field legend.toggle-ti").each(function(){
           //        $(this).click();
               });
           
               
               $("input[name=selectedHpayCard]:checked").click();
           });
           
           
           function itemInfListInit() {
               var orderItemArr = [];
               
               
                   if('' != ''){
                       notDlvItmMsg = '';
                   }
                   if('' != ''){
                       messageInfo = "";
                   }
           
                   $("#orderItemShippingDataDiv").append($("<span id='0000000001'/>"));
                   var dawnItmArr = [];
                   var thdyItmArr = [];
                   var dsrvItmArr = [];
                   var nonItmArr = [];
                   var dstnInfo = {
                             dstnSeq : '0000000001'
                           , rcvCustNm : '박서현'
                           , dstnNknm : ''
                           , dstnTel : ''
                           , dstnMophNo : '01094706354'
                           , rdnmPostNo : '13539'
                           , rdnmAdr : '경기도 성남시 분당구 판교백현로 38(백현동, THESHARP판교퍼스트파크) 104동 2303호'
                           , rdnmBaseAdr :  '경기도 성남시 분당구 판교백현로 38(백현동, THESHARP판교퍼스트파크)'
                           , rdnmPtcAdr :  '104동 2303호'
                           , dlvMsgGbcd : '40'
                           , cfrtdrEntmthGbcd : '11'
                           , cfrtdrPwd : ''
                           , dlvCmptNotfGbcd : ''
                           , ordCustMsgCntn :  ''
                           , dsrvCoMsgCntn :  ''
                           , rcvCustMsgCntn :  ''
                           , dawnDlvMsgCntn :  ''
                   };
                    
                   $("#orderItemShippingDataDiv span:last").data({
                         dawnItm : dawnItmArr
                       , thdyItm : thdyItmArr
                       , dsrvItm : dsrvItmArr
                       , nonItm : nonItmArr
                       , dstnInfo :dstnInfo
                   });
               
               
               $("#orderItemDiv").html("");
               
               for (var i=0; i < orderItemArr.length ; i++) {
                   if ($("#orderItemDiv span#orderItemDiv_"+orderItemArr[i].slitmCd).length > 0 ) {
                       var ordQty = $("#orderItemDiv span#orderItemDiv_"+orderItemArr[i].slitmCd).data('ordQty');
                       $("#orderItemDiv span#orderItemDiv_"+orderItemArr[i].slitmCd).data('ordQty', Number(ordQty)+Number(orderItemArr[i].ordQty));
                   } else {
                       $("#orderItemDiv").append($("<span id='orderItemDiv_"+orderItemArr[i].slitmCd+"'/>"));
                       $("#orderItemDiv span:last").data(orderItemArr[i]);
                   }
               }
               
               if (!isLogin) {
                   if ( ($("#orderItemShippingDataDiv span").data('dawnItm').length > 0 || $("#orderItemShippingDataDiv span").data('thdyItm').length > 0)
                           && $("#orderItemShippingDataDiv span").data('dsrvItm').length > 0) {
                       $("#nonMemShippingReq_dawnMsg").show();
                       $("#nonMemShippingReq_dslvMsg").show();
                       $("#nonMemShippingReq").data('req_flag','1');
                   } else if ($("#orderItemShippingDataDiv span").data('dawnItm').length > 0 || $("#orderItemShippingDataDiv span").data('thdyItm').length > 0) {
                       $("#nonMemShippingReq_dawnMsg").show();
                       $("#nonMemShippingReq_dslvMsg").hide();
                       $("#nonMemShippingReq").data('req_flag','2');
                   } else if ($("#orderItemShippingDataDiv span").data('dsrvItm').length > 0) {
                       $("#nonMemShippingReq_dawnMsg").hide();
                       $("#nonMemShippingReq_dslvMsg").show();
                       $("#nonMemShippingReq").data('req_flag','3');
                   } else {
                       $("#nonMemShippingReq_dawnMsg").hide();
                       $("#nonMemShippingReq_dslvMsg").hide();
                   }
               }
           }
           </script>
                           <!-- 주문상품 건수 및 수량 계산 -->
                                   <fieldset class="delivery-field toggle active" id="order_dstn_seq_0000000001" data-dstn_seq="0000000001">
                                       
                                           
                                           
                                               <legend class="tit toggle-ti">
                                                   배송지 정보
                                               
                                               </legend>       
                                               <form  method="post" action="${contextPath}/cust/addCustomer.do">
                                                <fieldset>
                                                  <ul>
                                                    <li class="name"><label > <strong
                                                        class="ti"><b>이름</b><span class="need">*<span
                                                            class="hide">필수</span></span></strong> <input type="text" class="big"
                                                        name="name" id="name" title="이름 입력" placeholder="이름 입력">
                                                        <button type="button" class="btn-del" tabindex="-1">삭제</button>
                                                    </label></li>
                                              
                                                    <li>
                                                      <!-- class="phone" --> <label > <strong
                                                        class="ti"><b>전화번호</b><span class="need">*<span
                                                            class="hide">필수</span></span></strong> <input type="text" class="big"
                                                        name="telNo" id="telNo" title="전화번호 입력" placeholder="전화번호 입력">
                                                        <button type="button" class="btn-del" tabindex="-1">삭제</button>
                                                    </label>
                                                    </li>
                                                    
                                                    <li>
                                                      <div >
                                                        <strong class="ti"><b>주소</b></strong>
                                                        <!-- <input type="text" name="RDNM_POST_NO" class="big post" title="우편번호" placeholder="우편번호" readonly="">
                                                                            <button type="button" class="btn fill big gray" onclick="javascript:showSearchAddressPop('pc');">주소찾기</button>
                                                                            <input type="text" name="RDNM_BASE_ADR" class="big" title="기본주소" placeholder="기본주소" readonly=""> -->
                                                        <label > <input type="text"
                                                          id="address" name="address" class="big" title="상세주소 입력"
                                                          placeholder="상세주소 입력">
                                                        <button type="button" class="btn-del" tabindex="-1">삭제</button>
                                                        </label>
                                                      </div>
                                                    </li>
                                              
                                                  </ul>
                                                </fieldset>
                                                </div>
                                              </form>                         
                                            
                                       
                                       <div class="cont" style="display: block;">
                                           <div class="addrinfo">
                                               <strong>배송지 정보</strong>
                                               
                                                   
                                                   
                                                       <button type="button" class="btn-arrow" onclick="fnShippingList(&#39;orderList&#39;,null,false,&#39;0000000001&#39;);">
                                                   
                                               
                                                    <span>
                                                       <strong>박서현</strong>
                                                       010-9470-6354
                                                   </span>
                                                   <p class="addr">경기도 성남시 분당구 판교백현로 38(백현동, THESHARP판교퍼스트파크) 104동 2303호</p>
                                               </button>
                                               
                                           </div>
                                           
                                           <div class="request" data-dstn_seq="0000000001" data-cfrtdr_entmth_gbcd="11" data-dlv_msg_gbcd="40" data-cfrtdr_pwd="" data-dsrv_co_msg_cntn="" data-dlv_cmpt_notf_gbcd="" data-dawn_dlv_msg_cntn="" data-page_flag="order" data-req_flag="2">
                                               <strong>배송 요청 사항</strong>
                                               <button type="button" class="btn-arrow" onclick="clickDlvReqModifyBtn(this);">
                                                   <ul>
                                                       
                                                           <li>
                                                               <span>
                                                                  <strong>새벽배송 : </strong>
                                                                  <span id="dawnReqMsg_0000000001">
                                                                      공동 현관 비밀번호
                                                                      
                                                                          (
                                                                              입력해주세요
                                                                              
                                                                          )
                                                                      
                                                                  </span>
                                                               </span>
                                                           </li>
                                                       
                                                       
                                                   </ul>
                                               </button>
                                           </div>
                                           
                                       </div>
                                   </fieldset>
                                           
                      <!-- 배송일 확인 - 새벽배송 -->
                       <!-- 배송일 확인 //-->
                       <!-- 배송일 확인 - 택배배송 -->
                       <!-- 배송일 확인 //-->
                    
           <fieldset class="product-field toggle active">
               <legend class="tit toggle-ti">주문상품<em>1</em></legend>
               <div class="cont" style="">
                   
                       <!-- 새벽배송// -->
                       <div>
                           <strong class="ti">새벽배송<em>1</em></strong>
                           <p class="txt-notice">12/02(금) 도착예정</p>
                           <ul class="product-list nothumb">
                               
                                   <li data-ord_prc="22000" data-ord_dc_prc="0">
                                       <strong class="txt-ti">
                                           
                                               [새벽시장] 비타베리 딸기 (500g/2단)
                                           
                                       </strong>
                                       <span class="txt-num"><strong><em>1</em>개</strong></span>
                                       
                                   </li>
                           </ul>
                       </div>
                       <!-- //새벽배송 -->
               </div>
           </fieldset>
           <input type="hidden" id="totalOrdQtyCheck" value="1">
                           </div>
                           
                           
                           <input type="hidden" name="cldbagItemYn" value="N">
                           
                               <!-- 사은품// -->
                               
                               <!-- //사은품 -->
                               
                           
                               
                               <input type="hidden" id="upointCurAmt" value="0">
                               <input type="hidden" id="cdpsCurAmt" value="0">
                               <input type="hidden" id="hBonusCurAmt" value="0">
                               <input type="hidden" id="hBonusCurAllAmt" value="0">
                               <input type="hidden" id="upntHpCertNo" value="">
                               
                               <input type="hidden" id="sumEzwelPointCurAmt" value="0">
                               <input type="hidden" id="ezwelPntCurAmt" value="0">
                               <input type="hidden" id="ezwelMilCurAmt" value="0">
                               <input type="hidden" id="ezwelSpePntCurAmt" value="0">
                            
                   <!-- 결제수단// -->
                   <fieldset class="pay-field">
                       <legend class="tit">결제수단</legend>
                       
                       <label><input type="radio" name="upperPayWay" class="big" value="2" data-payment="other" data-name="다른 결제수단" onclick="fn.removeClass(&#39;.payment._hpay&#39;);fn.removeClass(&#39;.payment._hpointpay&#39;);fn.addClass(&#39;.payment.other&#39;);"><span>다른 결제 수단</span></label>
                       
                       <div class="payment other active">
                           <ul>
                            <li><label><input type="radio" name="payWayGbcdGc" value="30" data-name="현대백화점카드" onclick="fn.addClass(&#39;.pay-own-card&#39;);fn.removeClass(&#39;.pay-card&#39;); fn.removeClass(&#39;.pay-kbpay&#39;);"><span class="card">현대백화점카드</span></label></li>
                            <li><label><input type="radio" name="payWayGbcdGc" value="20" data-name="실시간 계좌이체" onclick="fn.removeClass(&#39;.pay-own-card&#39;);fn.removeClass(&#39;.pay-card&#39;);fn.removeClass(&#39;.pay-kbpay&#39;);"><span class="bank">실시간 계좌이체</span></label></li>
                           </ul>
                       </div>
                       <span class="save"><label><input type="checkbox" name="selectedSavePayWay" checked="checked"><span>결제수단 저장</span></label></span>
                   </fieldset>
                   <!-- //결제수단 -->
               
           
           
               <input type="hidden" name="test">
           
            <!-- //PG결제 -->
                           
                           <!-- 하단 결제내역// -->
                           <fieldset class="bottom-price-field">
                               <legend class="hide">결제내역</legend>
                               <div>
                                   <dl>
                                       <dt>총 상품금액</dt>
                                       <dd><strong><em id="smrySumItemAmtBottom">22,000</em>원</strong></dd>
                                   </dl>
                                   <dl class="minus">
                                       <dt>총 할인금액</dt>
                                       <dd><strong><em id="smrySumDcAmtBottom">0</em>원</strong></dd>
                                   </dl>
                                   
                                  
                                   
                                   <dl class="plus">
                                       <dt>총 배송비</dt>
                                       <dd><strong><em id="smryDlvSumAmtBottom">3,500</em>원</strong></dd>
                                   </dl>
                                   
                               </div>
                   
                               <dl class="total">
                                   <button type="button" class="btn fill big orange btn-order" onclick="settlement();"><span class="txt-price">총 <em id="expSumAmt">25,500</em>원</span><strong>결제하기</strong></button>
                               </dl>
                           </fieldset>
                           <!-- //하단 결제내역 -->
                           
                           
                       </section>
                       

                    </div></form>

                
            </div>
        </div>
    </div>


</body></html>