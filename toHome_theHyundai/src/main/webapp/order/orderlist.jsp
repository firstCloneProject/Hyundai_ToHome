<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
  <!-- 업무 공통 태그 -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="format-detection" content="telephone=no, email=no, address=no">
  <meta name="keywords" content="">
  <meta name="description" content="">
  <!-- // 업무 공통 태그 -->

  <meta charset="UTF-8">

  <title>주문하기</title>

  <link rel="stylesheet" type="text/css" href="order.css">
  <link rel="stylesheet" type="text/css" href="detail1.css">



</head>

<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0" style="">

  <div id="wrap" class="order ordersheet">


    <header id="header" class="short">

      <div class="inner">
        <!-- toparea// -->
        <div class="toparea">
          <h1>
            <a href="/front/dp/dpa/dawnHome.do"><img src="../img/header_logo_freex34.png" alt="현대식품관"></a>
          </h1>

          <div class="util">

            <!-- util : 로그인 후// -->
            <a href="/front/cua/logout.do" class="active">로그아웃</a>
            <a href="/front/cua/mypage/updateMember.do">회원정보변경</a>
            <!-- //util : 로그인 후 -->

            <a href="/front/mp/mpa/selectMyPageMain.do">마이페이지</a>
            <a href="/front/dp/dpf/customerCenterMain.do">고객센터</a>
          </div>

        </div>
        <!-- //toparea -->
      </div>
    </header>


    <!-- 상품list -->
    <div id="orderItemDiv">
      <span id="orderItemDiv_S02006001058"></span>
    </div>

    <!-- 주문 -->
    <div id="orderDataDiv"></div>

    <!-- 상품데이터 -->
    <div id="orderItemShippingDataDiv">
      <span id="0000000001"></span>
    </div>

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

                <fieldset class="delivery-field toggle active" id="order_dstn_seq_0000000001"
                  data-dstn_seq="0000000001">

                  <legend class="tit toggle-ti">
                    배송지 정보

                  </legend>

                  <div class="cont" style="display: block;">
                    <div class="addrinfo">
                      <strong>배송지 정보</strong>


                      <span>
                        <strong>박정훈</strong>
                        010-2356-3727
                      </span>
                      <p class="addr">경기도 시흥시 대은로 62(은행동, 대우아파트) 306-404</p>
                      </button>

                    </div>

                  </div>
                </fieldset>

              </div>


              <fieldset class="pay-field">
                <legend class="tit">결제수단</legend>

                <label><input type="radio" name="upperPayWay" class="big" value="2" data-payment="other"
                    data-name="다른 결제수단"
                    onclick="fn.removeClass('.payment._hpay');fn.removeClass('.payment._hpointpay');fn.addClass('.payment.other');">
                  <span>결제 수단 선택</span></label>

                <div class="payment other active">
                  <ul>

                    <li>
                      <label><input type="radio" name="payWayGbcdGc" value="30" data-name="현대백화점카드"
                          onclick="fn.addClass('.pay-own-card');fn.removeClass('.pay-card'); fn.removeClass('.pay-kbpay');">
                        <span class="card">현대백화점카드</span></label>
                    </li>

                    <li>
                      <label><input type="radio" name="payWayGbcdGc" value="01" data-name="신용카드"
                          onclick="fn.removeClass('.pay-own-card');fn.addClass('.pay-card');fn.removeClass('.pay-kbpay');">
                        <span class="card">신용카드</span></label>
                    </li>

                    <li>
                      <label><input type="radio" name="payWayGbcdGc" value="20" data-name="실시간 계좌이체"
                          onclick="fn.removeClass('.pay-own-card');fn.removeClass('.pay-card');fn.removeClass('.pay-kbpay');">
                        <span class="bank">실시간 계좌이체</span></label>
                    </li>
                  </ul>
                  <p class="benefit" id="paymentDcInfo" style="display: none;"></p>
                  <!-- 신용카드 선택// -->
                  <div class="pay-card">
                    <div class="select">
                      <select title="카드 선택" id="selectedCard" onchange="javascript:changeSelectCard(this);">
                        <option value="">카드 선택</option>

                        <option value="02">KB국민카드(KB PAY)</option>

                        <option value="15">씨티카드</option>

                        <option value="01">BC카드(페이북)</option>

                        <option value="03">KEB하나카드</option>

                        <option value="04">삼성카드</option>

                        <option value="05">신한카드</option>

                        <option value="06">현대카드</option>

                        <option value="07">롯데카드</option>

                        <option value="09">NH농협카드</option>

                        <option value="10">카카오뱅크카드</option>

                        <option value="14">우리카드</option>

                      </select>
                      <div class="dropdown" tabindex="0">
                        <span class="current">카드 선택</span>
                        <div class="list">
                          <ul>
                            <li class="option selected" data-value="">
                              <span>카드 선택</span>
                            </li>
                            <li class="option" data-value="02">
                              <span>KB국민카드(KB PAY)</span>
                            </li>
                            <li class="option" data-value="15">
                              <span>씨티카드</span>
                            </li>
                            <li class="option" data-value="01">
                              <span>BC카드(페이북)</span>
                            </li>
                            <li class="option" data-value="03">
                              <span>KEB하나카드</span>
                            </li>
                            <li class="option" data-value="04">
                              <span>삼성카드</span>
                            </li>
                            <li class="option" data-value="05">
                              <span>신한카드</span>
                            </li>
                            <li class="option" data-value="06">
                              <span>현대카드</span>
                            </li>
                            <li class="option" data-value="07">
                              <span>롯데카드</span>
                            </li>
                            <li class="option" data-value="09">
                              <span>NH농협카드</span>
                            </li>
                            <li class="option" data-value="10">
                              <span>카카오뱅크카드</span>
                            </li>
                            <li class="option" data-value="14">
                              <span>우리카드</span>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="select disabled" id="divSelectedCardInstallment">
                      <select title="할부 선택" id="selectedCardInstallment" disabled="disabled">

                        <option value="0" selected="selected">일시불</option>
                      </select>
                      <div class="dropdown" tabindex="0">
                        <span class="current">일시불</span>
                        <div class="list">
                          <ul>
                            <li class="option selected" data-value="0">
                              <span>일시불</span>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>

                  </div>

                </div>

              </fieldset>







              <!-- 팝업 : Home Pay 카드등록완료// -->
              <div id="p_popHpayComplete" class="popup pophpaycardcheck">
                <div class="inner">
                  <button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
                  <header>
                    <h2>카드등록완료</h2>
                  </header>
                  <div class="contents">
                    <div class="hpay">
                      <span class="font-white" style="background-color:#3e534b;" id="hpayCardClaStyCom">
                        <!-- 은행별 컬러값 추가, 폰트 컬러 흰색일 경우 class="font-white" 추가 -->
                        <div class="logo"><img src="/UIUX/m/pjtCom/images/sub/hpay/card_logo_thehyundai.png"
                            id="hpayCardlogoCom" alt=""></div>
                        <!-- 은행별 logo 이미지 추가 -->
                        <div class="name" id="hpayCardNmCom">현대백화점카드</div>
                        <div class="num">
                          <span id="hpayCardNoCom">4335-****-7958-****</span>
                        </div>
                      </span>
                    </div>
                    <button type="button" class="btn fill black"
                      onclick="javascript:popHpayCompleteClose();">확인</button>
                  </div>
                </div>
              </div>
              <!-- //팝업 : Home Pay 카드등록완료 -->

              <!-- 팝업 : Home Pay 간편인증// -->
              <div id="popHpaySimpleCertify" class="popup full pophpaysimplecertify">
                <div class="inner">
                  <button type="button" class="btn-close" onclick="fn.popupClose()">닫기</button>

                  <header>
                    <!-- 20200612// -->
                    <h2>Home Pay 간편인증</h2>
                    <!-- //20200612 -->
                  </header>


                </div>
              </div>

              <div id="popWpayAddNotMess" class="popup" style="top: 100%; opacity: 0;">

                <script type="text/javascript">
                  $(function () {
                    $('#dev-hpointpay-add-btn').click(function () {
                      if ('N' == 'Y') {
                        var href = window.location.href;
                        if (href.indexOf('od/odd/stlmWayMng') > -1) {
                          window.location.href = contextPath + '/od/odd/hpointPayMethodMng.do'; // mypage > home pay
                        } else {
                          // 기타 주문서
                          $('input[type="radio"][name="upperPayWay"][value="4"]').trigger('click'); // H.Point Pay 펼치기
                          $('#hpointPayMethodArea .btn-register').trigger('click'); // H.Point Pay 등록버튼 클릭
                        }
                        fn.popupCloseId('#popWpayAddNotMess');
                      } else {
                        location.href = vServerPath + '/cua/front/joinStep3Hpoint.do';
                      }
                    });
                  });
                </script>
              </div>



              <!-- 하단 결제내역// -->
              <fieldset class="bottom-price-field">
                <legend class="hide">결제내역</legend>
                <div>
                  <dl>
                    <dt>총 상품금액</dt>
                    <dd>
                      <strong>
                        <em id="smrySumItemAmtBottom">40,600</em>원</strong>
                    </dd>
                  </dl>
                  <dl class="minus">
                    <dt>총 할인금액</dt>
                    <dd>
                      <strong>
                        <em id="smrySumDcAmtBottom">6,090</em>원</strong>
                    </dd>
                  </dl>

                  <dl class="minus">
                    <dt>쿠폰/포인트</dt>
                    <dd>
                      <strong>
                        <em id="smryCopnPntUseAmtBottom">0</em>원</strong>
                    </dd>
                  </dl>

                  <dl class="plus">
                    <dt>총 배송비</dt>
                    <dd>
                      <strong>
                        <em id="smryDlvSumAmtBottom">3,500</em>원</strong>
                    </dd>
                  </dl>

                </div>


                <dl class="total">
                  <dt>총 결제예상금액</dt>
                  <dd>
                    <strong>
                      <em id="smryExpSumAmtBottom">38,010</em>원</strong>
                  </dd>
                </dl>
              </fieldset>


            </section>

            <section class="rightarea" style="position: static; inset: auto; float: right; margin-bottom: 48px;">
              <!-- 결제내역// -->
              <fieldset class="price-field">
                <legend class="hide">결제내역</legend>
                <dl class="orderprice">
                  <dt>총 상품금액</dt>
                  <dd>
                    <strong>
                      <em id="smrySumItemAmt">40,600</em>원</strong>
                  </dd>
                </dl>
                <div class="toggle">
                  <dl class="minus toggle-ti">
                    <dt>총 할인금액</dt>
                    <dd>
                      <strong>
                        <em id="smrySumDcAmt">-6,090</em>원</strong>
                    </dd>
                  </dl>
                  <div class="cont infotxt">
                    <ul>

                      <li>상품할인<span>
                          <em id="itemDc">-6,090</em>원</span></li>
                      <li>카드할인<span>
                          <em id="cardDc">0</em>원</span></li>
                      <li>결제수단할인<span>
                          <em id="stlmDc">0</em>원</span></li>

                    </ul>
                  </div>
                </div>

                <div class="toggle">
                  <dl class="minus toggle-ti">
                    <dt>쿠폰/포인트</dt>
                    <dd>
                      <strong>
                        <em id="smryCopnPntUseAmt">0</em>원</strong>
                    </dd>
                  </dl>
                  <div class="cont infotxt">
                    <ul>
                      <li>쿠폰할인<span>
                          <em id="copnUse">0</em>원</span></li>
                      <li>H.Bonus<span>
                          <em id="hBonusUse">0</em>원</span></li>
                      <li>H.Point<span>
                          <em id="hPointUse">0</em>원</span></li>

                    </ul>
                  </div>
                </div>
                <div>
                  <dl class="plus toggle-ti">
                    <dt>총 배송비</dt>
                    <dd>
                      <strong>
                        <em id="smryDlvSumAmt">3,500</em>원</strong>
                    </dd>
                  </dl>
                  <div class="cont infotxt" id="smryDlvSumAmtDtl"></div>
                </div>

                <dl class="total">
                  <dt>총 결제예상금액</dt>
                  <dd>
                    <strong>
                      <em id="smryExpSumAmt">38,010</em>원</strong>
                  </dd>
                </dl>
              </fieldset>
              <!-- //결제내역 -->

              <!-- 약관동의// -->
              <fieldset class="agree-field">
                <legend class="hide">약관동의</legend>
                <ul class="list">
                  <li>전자금융거래 이용약관 동의
                    <b>(필수)</b>
                    <button type="button" class="btn-line" onclick="fn.popupOpen('#p_popPolicy1');"></button>
                  </li>
                  <li>개인정보 수집 및 이용 동의
                    <b>(필수)</b>
                    <button type="button" class="btn-line" onclick="fn.popupOpen('#p_popPolicy2');"></button>
                  </li>
                  <li>개인정보 제3자 제공/위탁 동의
                    <b>(필수)</b>
                    <button type="button" class="btn-line" onclick="fn.popupOpen('#p_popPolicy3');"></button>
                  </li>

                </ul>
                <div class="contarea agreewrap">
                  <label class="allagree"><input type="checkbox" name="" id="agreeAll">
                    <span>모든 내용을 확인 하였으며 결제에 동의합니다.</span></label>
                  <span class="talk">결제진행을 위해 아래 항목에 동의 해 주세요.</span>
                </div>
                <!-- <p class="agree">위 주문의 상품, 가격, 할인, 배송정보 및<br>이용약관을 확인하였으며, 본인은 결제에
                                    동의합니다.</p> -->
              </fieldset>
              <!-- //약관동의 -->
              <button type="button" class="btn fill big orange btn-order" onclick="settlement();">
                <span class="txt-price">총
                  <em id="expSumAmt">38,010</em>원</span>
                <strong>결제하기</strong>
              </button>

              <!-- 업셀링 배너 -->

              <script type="text/javascript">
                $(document).ready(function () { });
              </script>

              <div class="contarea promotion-field ">

                <button type="button" class="toggle-ti">백화점카드 행사 (11.21-11.27)</button>

                <div class="cont">
                  <a href="#" onclick="GA_Event('PC_주문서', '업셀링_배너', '백화점카드 행사 (11.21-11.27)');"><img
                      src="https://tohomeimage.thehyundai.com/DP/DP001/2022/11/18/212155/PC1.png"></a>
                </div>

              </div>

              <!-- 업셀링 배너 -->

            </section>
          </div>
        </form>

      </div>
    </div>

    <!-- 여러배송지보내기 -->

    <!-- 팝업 : 여러 배송지로 보내기// -->
    <div id="p_popShippingMulti" class="popup popshippingmulti">
      <div class="inner">
        <button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
        <header>
          <h2>여러 배송지로 보내기</h2>
        </header>
        <div class="contents">
          <form>
            <!-- 주문 상품// -->
            <fieldset class="prdtxt-field">
              <legend>주문 상품<em id="multiOrderItemCnt"></em>
              </legend>
              <ul class="product-list nothumb" id="multiOrderItemUl"></ul>
            </fieldset>
            <!-- //주문 상품 -->

            <!-- 배송지 수 선택//-->
            <fieldset class="deliverynum-field">
              <legend>배송지 수 선택</legend>
              <div class="select" id="divMultiShippingReqCnt">
                <select title="배송지 수 선택" id="multiShippingReqCnt">
                  <option value="">선택</option>
                </select>
                <div class="dropdown" tabindex="0">
                  <span class="current">선택</span>
                  <div class="list">
                    <ul>
                      <li class="option selected" data-value="">
                        <span>선택</span>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <button type="button" class="btn fill gray" onclick="selectMultiShippingCnt('Shipping');">선택</button>
              <p>보낼 배송지 수를 선택해주세요.</p>
            </fieldset>
            <!-- //배송지 수 선택 -->

            <!-- 배송지 정보//-->
            <div class="nodata">배송지 수를 선택해주세요.</div>
            <div id="multiShippingArea"></div>

            <button type="button" class="btn fill orange" id="btnMultiShippingNext" style="display:none;"
              onclick="multiShippingSetComplete();">다음</button>
          </form>
        </div>
      </div>
    </div>
    <!-- //팝업 : 여러 배송지로 보내기 -->

    <!-- 배송지목록 -->

    <!-- 팝업 : 배송지 선택// -->
    <div id="p_popShippingList" class="popup popshippinglist">
      <div class="inner">
        <button type="button" class="btn-close" onclick="fn.popupCloseId('#p_popShippingList');">닫기</button>

        <header>
          <h2>배송지 목록
            <em id="popShippingListCnt"></em>
          </h2>
        </header>
        <div class="contents">
          <div class="scrollbox" id="shippingListDiv"></div>
          <div class="btns">
            <button type="button" class="btn black" id="shippingListAdd1" onclick="fnShippingList('new','subs');">배송지 추가
              +</button>

            <button type="button" id="shippingSelectedBtn" class="btn fill orange"
              onclick="selectedShippingList(this);">배송지 선택</button>

          </div>
        </div>
      </div>
    </div>
    <!-- //팝업 : 배송지 선택 -->

    <!-- 팝업 : 배송지 추가/수정// -->
    <div id="p_popShippingInput" class="popup popshippinginput"></div>
    <!-- //팝업 : 배송지 추가/수정 -->

    <!-- 배송지상세-->

    <!-- 팝업 : 배송요청사항// -->
    <div id="p_popRequest" class="popup poprequest">
      <div class="inner">
        <button type="button" class="btn-close" onclick="fn.popupCloseId('#p_popRequest');">닫기</button>
        <header>
          <h2>배송요청사항</h2>
        </header>
        <div class="contents">
          <div class="request-list">
            <ul>
              <li>
                <strong class="tit">새벽배송</strong>
                <p class="text" id="shippingDawnReqDlvMsg"></p>
                <button type="button" class="btn small orange" onclick="openRequestDawnPopup();">수정</button>
              </li>
              <li>
                <strong class="tit">택배배송</strong>
                <p class="text" id="shippingReqDlvMsg"></p>
                <button type="button" class="btn small orange" onclick="openRequestParcelPopup();">수정</button>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- //팝업 : 배송요청사항 -->

    <!-- 팝업 : 새벽배송 요청 사항// -->
    <div id="p_popRequestDawn" class="popup poprequest">
      <div class="inner">
        <button type="button" class="btn-close" onclick="fn.popupCloseId('#p_popRequestDawn');">닫기</button>
        <header>
          <h2>새벽배송 요청 사항</h2>
        </header>
        <div class="contents">
          <form id="frmPopRequestDawn">
            <input type="hidden" name="dstnSeq">
            <input type="hidden" name="pageFlag">
            <input type="hidden" name="reqFlag">
            <fieldset class="form-field">
              <legend class="tit">출입방법<span class="need">*<span class="hide">필수</span></span></legend>
              <ul>

                <li>
                  <label>
                    <input type="radio" name="cfrtdrEntmthGbcd" value="11" data-txt="공동 현관 비밀번호" checked="checked">
                    <span>공동 현관 비밀번호</span>
                  </label>

                  <div style="display: block;">
                    <label class="form-entry"><input type="text" id="" name="cfrtdrPwd" title="공동 현관 비밀번호"
                        placeholder="예) #1234, 1234#" maxlength="30">
                      <button type="button" class="btn-del" tabindex="-1">삭제</button>
                    </label>
                  </div>

                </li>

                <li>
                  <label>
                    <input type="radio" name="cfrtdrEntmthGbcd" value="13" data-txt="자유출입">
                    <span>자유출입</span>
                  </label>

                </li>

                <li>
                  <label>
                    <input type="radio" name="cfrtdrEntmthGbcd" value="70" data-txt="기타">
                    <span>기타</span>
                  </label>

                </li>

              </ul>
            </fieldset>
            <fieldset class="form-field">
              <legend class="tit">배송시 요청사항<span class="choice">(선택)</span></legend>
              <div>
                <textarea title="배송시 요청사항(선택) 입력" name="dawnDlvMsgCntn" placeholder="50자 이내 입력"
                  maxlength="50"></textarea>
              </div>
            </fieldset>
            <fieldset class="form-field">
              <legend class="tit">배송완료 알림 시점<span class="need">*<span class="hide">필수</span></span></legend>
              <div class="radio-list">

                <label><input type="radio" name="dlvCmptNotfGbcd" value="01" checked="checked">
                  <span>아침 07시</span></label>

                <label><input type="radio" name="dlvCmptNotfGbcd" value="02">
                  <span>배송직후</span></label>

                <label><input type="radio" name="dlvCmptNotfGbcd" value="03">
                  <span>수신거부</span></label>

              </div>
              <div class="infotxt">
                <ul>
                  <li>택배/판매자 배송 상품은 배송 직후 완료 알림 발송되오니, 참고 바랍니다.</li>
                </ul>
              </div>
            </fieldset>
            <p class="txt">현대식품관 투홈이 문 앞까지 배송 및 반품회수를 하기 위해,<br>공동 현관 비밀번호를 보관할 수 있도록 동의가 필요합니다.</p>
            <button type="button" class="btn fill orange" onclick="saveDawnRequest();">동의 후 저장</button>
            <div class="infotxt">
              <strong>새벽배송 주문 시 문 앞으로 배송됩니다.<br>문 앞 배송 불가 시 1층 공동 현관문 앞으로 배송 될 수 있습니다.</strong>
              <ul>
                <li>회사, 학교, 상가 등 새벽 출입이 불가 한 경우</li>
                <li>출입정보가 정확하지 않은 경우</li>
                <li>경비실 호출을 시도하였으나, 응답하지 않은 경우</li>
                <li>세대원 호출을 요청 한 경우(새벽배송은 세대원 호출 불가)</li>
              </ul>
            </div>
          </form>
        </div>
      </div>
    </div>
    <!-- //팝업 : 새벽배송 요청 사항 -->






    <!-- footer// -->
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


        </div>
      </div>

      <div class="info">
        <div class="inner">
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

      <!-- topbtn// -->
      <button type="button" class="btn-top" onclick="GA_Event('PC_공통', 'TOP', 'TOP');"
        style="right: 304px; bottom: 50px;">TOP</button>
      <!-- //topbtn -->
    </footer>

  </div>
  <!-- //footer -->

  </div>

</body>

</html>