<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/ProductDetail.css">
<script defer type="text/javascript" src="js/script.js"></script>
<%@ include file="HeaderFooter/header.jsp"%>
<%@ System.out.print("hello"); %>
<div id="wrap" class="product detail">
	<div id="contents">
		<div class="innercon">
			<section class="proinfo-area">
				<div class="propic">
					<div class="propicbig">
						<div class="zoomWrapper" style="height: 624px; width: 520px;">
							<img src="<%-- ${ProductDetail.imagePath } --%>"
								style="position: absolute;">
						</div>
						<div></div>
					</div>
					<div class="propicsmall">
						<div class="swiper-pagination-propic">
							<span class="current">1</span> / <span class="total">1</span>
						</div>
						<div class="swiper-button-next-propic"></div>
						<div class="swiper-button-prev-propic"></div>
						<div class="swiper-container propicsmallswiper"
							style="opacity: 1;">
							<div id="P_picSmall" class="swiper-wrapper"
								style="display: inline-block;">
								<div class="swiper-slide">
									<a href="#"
										class="active"> <img
										src="<%-- ${ProductDetail.imagePath } --%>">
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="proinfo">
					<h2>
						<strong><%-- ${ProductDetail.productName } --%></strong>\
					</h2>
					<div class="tag"></div>
					<div class="brandwrap" id="brand_section">
						<a href="/front/dp/dpc/brndList.do?brndCd=115726"
							onclick=""><%-- ${ProductDetail.companyName } --%></a>
					</div>
					<div class="price" id="price_section">
						<span class="txt-sale"><em><%-- ${ProductDetail.salePercent } --%></em>%</span> <span class="txt-price">
							<strong><em><%-- ${ProductDetail.productPrice } --%></em>원</strong> <del><%-- ${ProduceDetail.productPriceOri } --%></del> 
						</span>

					</div>
					<div class="detailinfo">
						<dl>
							<dt>원산지</dt>
							<dd><%-- ${ProductDetail.productFrom } --%></dd>
							<dt>포장타입</dt>
							<dd><%-- ${ProductDetail.takeType } --%></dd>
							<dt>상품선택</dt>
							<dd>
								<!-- 상품선택// start-->
								<div class="optionarea" id="top_optionarea">
									<div class="optionls">
										<div>
											<strong class="txt-ti"><%-- ${ProductDetail.productName} --%>(<%-- ${ProductDetail.takeType } --%>) </strong>
											<div class="ea-area" style="display: none">
												<input type="number" title="수량 입력" value="1" readonly="">
												<button type="button" class="btn-down"
													onclick="fnOptionEaDown(this);">수량 낮추기</button>
												<button type="button" class="btn-up"
													onclick="fnOptionEaUp(this);">수량 올리기</button>
											</div>
											<span class="txt-price"><em><%-- ${ProductDetail.productPrice } --%> </em>원</span>
										</div>
									</div>
								</div>
							</dd>
						</dl>
					</div>
					<div class="buybutton" id="top_buybutton">
						<p class="txt-total">
							총 금액 <strong><em><%-- ${ProductDetail.productPrice } --%> </em>원</strong>
						</p>
						<div class="btns">
							<button type="button" class="btn darkgray bigger btn-buy"
								onclick="">장바구니
								넣어두기</button>
						</div>
					</div>
				</div>
			</section>
			<div class="prodetailcont" style="min-height: 339px;">
				<div class="prodetail-area">
					<div class="tab-menu protabs">
						<a href="#p_proDetail" class="active"
							onclick="" style="width: 25%;"><span>상세정보</span></a>
						<a href="#p_proBuyinfo" id="proBuyinfoTab"
							onclick="" style="width: 25%;"><span>구매정보</span></a>
						<a href="#p_cancel" onclick=""
							style="width: 25%;"><span>취소/교환/반품</span></a> <a
							href="#p_proReview" onclick=""
							style="width: 25%;"><span>리뷰 <em id="reviewCnt">161</em></span></a>
					</div>
					<section id="p_proDetail" class="tab-contents prodetail active">
						<h3 class="hide">상품상세</h3>
						<div class="detailcont">
							<div style="width: 100%; margin: auto; max-width: 840px;"
								id="speedycat_container_root"
								class="speedycat_container_root_class">
								<div class="productdetail m1">
									<div class="speedycat-container">
										</div>
									<div class="contbox">
										<p class="ptxt default"><%-- ${ProductDetail.desc } --%> </p>
									</div>
								</div>
								<div class="productdetail m6">
									<div class="pbox col">&nbsp;</div>
								</div>
								<script type="text/javascript">setTimeout(function () { SlazyStart(''); }, 50);setTimeout(function() { SlazyReSet(''); }, 500);setTimeout(function() { SlazyReSet(''); }, 1000);</script>
							</div>
						</div>
						<div class="prodata">

						</div>
					</section>
					<section id="p_proBuyinfo" class="tab-contents probuyinfo">
						<h3 class="hide">
							<strong>구매정보</strong>
						</h3>
						<div id="mndrInfUseYn">
							<h4>상품필수정보</h4>
							<div class="cont">
								<table class="table">
									<caption>상품주요정보</caption>
									<colgroup>
										<col style="width: 300px">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<th>바코드 정보</th>
											<td class="txt-left">8809168569754</td>
										</tr>
										<tr>
											<th>안심사용기한</th>
											<td class="txt-left"><%-- ${ProductDetail.expireDate} --%></td>
										</tr>
										<tr>
											<th>크기(cm)</th>
											<td class="txt-left">18x14x3.5</td>
										</tr>
										<tr>
											<th>포장단위별 내용물의 용량(중량), 수량, 크기</th>
											<td class="txt-left">상품상세 혹은 이미지참조</td>
										</tr>
										<tr>
											<th>생산자, 수입품의 경우 수입자를 함께 표기</th>
											<td class="txt-left">상품상세 혹은 이미지참조</td>
										</tr>
										<tr>
											<th>농수산물의 원산지 표시에 관한 법률에 따른 원산지</th>
											<td class="txt-left">원산지 : 국내산</td>
										</tr>
										<tr>
											<th>제조연월일(포장일 또는 생산연도), 유통기한</th>
											<td class="txt-left">상품상세 혹은 이미지참조</td>
										</tr>
										<tr>
											<th>관련법상 표시사항</th>
											<td class="txt-left">상품상세 혹은 이미지참조</td>
										</tr>
										<tr>
											<th>축산물 - 축산법에 따른 등급 표시, 축산물이력법에 따른 이력관리대상축산물 유무</th>
											<td class="txt-left">도축장명 및 축산물 이력번호는 상품 패키지에 개별
												표기되어있습니다.</td>
										</tr>
										<tr>
											<th>수입식품에 해당하는 경우 '수입식품안전관리특별법에 따른 수입신고를 필함'</th>
											<td class="txt-left">상품상세 혹은 이미지참조</td>
										</tr>
										<tr>
											<th>상품구성</th>
											<td class="txt-left">상품상세 혹은 이미지참조</td>
										</tr>
										<tr>
											<th>보관방법 또는 취급방법</th>
											<td class="txt-left"><%-- ${ProductDetail.takeType } --%> 보관</td>
										</tr>
										<tr>
											<th>소비자상담 관련 전화번호</th>
											<td class="txt-left">현대식품관 to home 고객센터(1800-9549)</td>
										</tr>
										<tr>
											<th>식품 등의 표시ㆍ광고에 관한 법률에 따른 소비자 안전을 위한 주의사항</th>
											<td class="txt-left">상품상세 혹은 이미지참조</td>
										</tr>
										<tr>
											<th>품목 또는 명칭</th>
											<td class="txt-left">상품상세 혹은 이미지참조</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<div id="sellerInfo"></div>

						<div class="buyinfo" id="buyinfo"></div>

						<div class="infotxt notice">
							<ul>
								<li>전자상거래 등에서의 소비자 보호에 관한 법률에 의한 반품규정이 판매자가 지정한 반품조건보다
									우선합니다.</li>
								<li>단, 판매자 또는 협력사가 지정한 반품조건이 소비자에게 더 유리한 경우 가장 유리한 반품조건으로
									적용됩니다.</li>
								<li>구매자가 미성년자인 경우에는 상품 구입시 법정 대리인이 동의하지 아니하면 미성년자 본인 또는 법정
									대리인이 구매취소 할 수 있습니다.</li>
								<li class="pointtxt"><a
									href="/front/dp/dpf/customerCenterMain.do"
									onclick="fnGaEventCustomerCenter()";="">소비자 피해보상 처리 및 상품
										등에 대한 불만처리 방법(CS)</a></li>
							</ul>
						</div>


					</section>
					<!-- //구매정보 -->

					<!-- 취소/교환/반품//-->
					<section id="p_cancel" class="tab-contents probuyinfo">
						<div class="buyinfo">
							<h4>주문취소 안내</h4>
							<div class="cont">
								<div class="infotxt">
									<ul>
										<li>결제완료 이후 주문의 상태가 “상품준비중”으로 변경될 경우, 취소가 제한됩니다.</li>
										<li>비회원은 로그인 &gt; 비회원주문조회에서 주문을 취소하실 수 있습니다.</li>
										<li>일부 예약배송, 정기배송, 정기구독 등의 예약상품은 배송 3~4일전까지만 취소하실 수 있습니다.</li>
										<li>주문상품의 부분취소는 불가능합니다.</li>
										<li>카드환불은 카드사 정책에 따르며, 취소 시 사용하신 H.Point, H.Bonus, 쿠폰 등은
											모두 복원됩니다. 단, 취소시 사용기한이 지난 혜택은 복원되지 않습니다.</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="buyinfo">
							<h4>교환/반품안내</h4>
							<div class="cont">
								<div class="infotxt">
									<p>※상품설명에 배송/교환/반품/취소 관련 안내가 기재된 경우 다음 안내사항보다 우선적용됩니다.</p>
									<ul>
										<li>상품에 문제가 있는 경우<br> : 냉장/냉동상품은 제품수령 후 최대 2일(48시간)
											내,<br> 상품을 촬영한 사진과 함께 1:1문의 게시판에 등록하시면,<br> 담당자 확인
											후 교환/반품이 진행됩니다.<br> : 상온상품(유통기한 30일 이상)및 기타상품은 제품수령 후<br>
											3개월 이내에 사진과 함께 1:1문의 게시판에 등록하시면,<br> 담당자 확인 후 교환/반품이
											진행됩니다.<br> 이때 발생하는 모든 배송비는 현대식품관 투홈이 부담합니다.
										</li>
										<li>단순변심/주문착오의 경우<br> : 냉장/냉동상품은 교환/반품이 불가능합니다.<br>
											: 상온상품(유통기한 30일 이상)및 기타상품은 제품수령 후<br> 최대 7일 이내에 사진과 함께
											1:1문의 게시판에 등록하시면, 담당자 확인 후 교환/반품이 진행됩니다. 이때 발생하는 모든
											배송비(교환:왕복, 반품:편도)는 고객님께서 부담하셔야 합니다.
										</li>
										<li>교환/반품이 불가한 경우<br> : 교환/반품 가능기간을 초과하였을 경우<br>
											: 상품 및 구성품을 사용하였거나 부주의로 인하여 상품이 훼손(파손/고장/오염 등)된 경우<br> :
											상품 사용 시 상품설명에 기재된 주의사항을 지키지 않는 경우<br> : 상품택을 파손하였거나 분실했을
											경우<br> : 배송 후 설치완료된 상품인 경우<br> : 기타 ‘전자상거래 등에서의
											소비자보호에 관한 법률’이<br> 정하는 청약철회 제한사유에 해당되는 경우
										</li>
									</ul>
								</div>
							</div>
						</div>
					</section>
					<!-- //취소/교환/반품-->

					<!-- 리뷰// -->
					<section id="p_proReview" class="tab-contents proreview">
						<h3 class="hide">
							<strong>리뷰</strong>
						</h3>

						<div class="list-top">
							<button type="button" class="btn black btn-review"
								onclick="fnGaEventReview('A');fnReviewSelectPopupOpen(this, 'A');">리뷰
								작성</button>
							<span class="grade-star big"> <span><span
									style="width: 94%;"></span></span> <strong><em>4.7</em> <i
									class="bar">/</i> 5</strong>
							</span>
						</div>

						<div class="list-sort">
							<label><input type="checkbox" name="pic" id="onlyPic"
								data-pic-yn="N"
								onclick="fnGaEventReview('B');fnReviewAjaxPcList('A', 1);"><span>포토
									리뷰</span></label>
							<div class="form-sort" id="reviewImgYn">
								<label><input type="radio" name="sort" value="1"
									onclick="fnGaEventReview('C');fnReviewAjaxPcList('A', 1);"><span>베스트순</span></label>
								<label><input type="radio" name="sort" value="2"
									checked=""
									onclick="fnGaEventReview('C');fnReviewAjaxPcList('A', 1);"><span>최신순</span></label>
							</div>

							<!-- 패키지 여부가 Y일 경우 -->

						</div>

						<!-- 리뷰 리스트 동적 구현 -->
						<div class="review-list">
							<ul>
								<li data-no="735267" data-wrt-id="wonni87"
									data-ord-no="22110200676516" data-slitm-cd="S02006001076"
									data-opt-cd=""
									data-img-path="PD/PDImages/S/4/5/7/8809168569754_00.jpg"
									data-contents="세일해서 구매했는데 고기 상태 좋고 아이스포장 감사합니다"
									data-img-path1="pd/pde/2022/11/13/111448552/B863C246-2DA9-427E-A287-790EE526F8BF.jpeg"
									data-img-path2="" data-img-path3=""
									data-slitm-nm="[화식한우] 1등급 정육 국거리 200g(냉장)"
									data-slitm-desc="도축장명 및 축산물 이력번호는 상품 패키지에 개별 표기되어있습니다."
									data-atfl-no="1059455" data-scrg="5">
									<div class="star">
										<div class="grade-star">
											<span><span style="width: 100%;">5</span></span>
										</div>
									</div>
									<div class="recont">
										<div class="pic" data-menu="[화식한우] 1등급 정육 국거리 200g(냉장)"
											data-star="5"
											data-option="도축장명 및 축산물 이력번호는 상품 패키지에 개별 표기되어있습니다.">
											<button type="button" data-picidx="1">
												<img
													src="https://tohomeimage.thehyundai.com/pd/pde/2022/11/13/111448552/B863C246-2DA9-427E-A287-790EE526F8BF.jpeg?RS=720&amp;AO=1"
													style="width: auto; height: 120px;">
											</button>
										</div>
										<div class="ti">
											<span class="txt-option"> 도축장명 및 축산물 이력번호는 상품 패키지에 개별
												표기되어있습니다. </span> <span class="txt-review">세일해서 구매했는데 고기 상태
												좋고 아이스포장 감사합니다</span>
										</div>
										<div class="like">
											<button type="button" class="btn smaller gray btn-reviewlike"
												onclick="fnToggleClass(this);">0</button>
											리뷰가 도움이 되었나요?
										</div>
									</div>
									<div class="info">
										<span class="txt-id">won*****</span> <span class="txt-date">2022.11.13</span>
									</div>

									<div class="btnwrap">
										<button type="button" class="btn-notify"
											onclick="fnClickReviewReport(this)">신고</button>
									</div>
								</li>
								
							</ul>
							<!-- pagination// -->
							<div class="pagination">
								<span class="num"> <a
									href="javascript:fnReviewAjaxPcList('B', '1');" class="active">1</a>
								<!-- 현재페이지 class="active" --> <a
									href="javascript:fnReviewAjaxPcList('B', '2');">2</a> <a
									href="javascript:fnReviewAjaxPcList('B', '3');">3</a> <a
									href="javascript:fnReviewAjaxPcList('B', '4');">4</a> <a
									href="javascript:fnReviewAjaxPcList('B', '5');">5</a> <a
									href="javascript:fnReviewAjaxPcList('B', '6');">6</a> <a
									href="javascript:fnReviewAjaxPcList('B', '7');">7</a> <a
									href="javascript:fnReviewAjaxPcList('B', '8');">8</a> <a
									href="javascript:fnReviewAjaxPcList('B', '9');">9</a> <a
									href="javascript:fnReviewAjaxPcList('B', '10');">10</a>
								</span> <a href="javascript:fnBlockCnt('A', 'B');" class="next">다음</a>
							</div>
							<!-- //pagination -->
						</div>

					</section>
					<!-- //리뷰 -->

					<section id="p_proReviewWrite" class="tab-contents prowrite review" style="display: none;">
						<h3>리뷰작성</h3>
						<div class="product-list vertical">
							<span class="thumb"> <img src="" alt=""
								id="popReviewWriteImg">
							</span>
							<!-- data-no: 글번호, data-cd:패키지일 경우 상품코드,  data-ord-no: 주문번호-->
							<div class="contr" data-no="" data-cd="" data-ord-no="">
								<strong class="txt-ti"></strong> <span class="txt-option"></span>

							</div>
						</div>

						<form id="fileForm" method="post" enctype="multipart/form-data">
							<fieldset>
								<legend class="hide">리뷰작성</legend>
								<input type="hidden" name="itemEvalAtclNo" value=""> <input
									type="hidden" name="ordNo" value=""> <input
									type="hidden" name="slitmCd" value=""> <input
									type="hidden" name="optItemCd" value=""> <input
									type="hidden" name="pckgItemYn" value=""> <input
									type="hidden" name="itemEvalScrg" id="itemEvalScrg" value="">
								<input type="hidden" name="itemEvalCntn" id="itemEvalCntn"
									value=""> <input type="hidden" name="imgCnt"
									id="imgCnt" value=""> <input type="hidden"
									name="imgYn1" id="imgYn1" value=""> <input
									type="hidden" name="imgYn2" id="imgYn2" value=""> <input
									type="hidden" name="imgYn3" id="imgYn3" value=""> <input
									type="hidden" name="pathType1" id="pathType1" value="">
								<input type="hidden" name="pathType2" id="pathType2" value="">
								<input type="hidden" name="atflNo" id="atflNo" value="">

								<div class="write-area">
									<div class="reviewstar">
										<div class="grade-star big active">
											<span class="active" id="start1">1점</span> <span
												class="active" id="start2">2점</span> <span class="active"
												id="start3">3점</span> <span class="active" id="start4">4점</span>
											<span class="active" id="start5">5점</span> <input
												type="hidden" name="starV" value="5">
											<div class="txt" id="totstart">
												<em class="tot">5</em>/<em>5</em>
											</div>
										</div>
									</div>

									<div class="form-default horizon form-file" id="expsY2">
										<strong>사진 첨부</strong>
										<div class="upload-file">
											<label><input type="file" class="upload-hidden"
												title="사진 첨부" name="uploadImg" id="uploadImg1"
												accept="image/*"></label>
										</div>
										<div class="upload-file">
											<label><input type="file" class="upload-hidden"
												title="사진 첨부" name="uploadImg" id="uploadImg2"
												accept="image/*"></label>
										</div>
										<div class="upload-file">
											<label><input type="file" class="upload-hidden"
												title="사진 첨부" name="uploadImg" id="uploadImg3"
												accept="image/*"></label>
										</div>
									</div>

									<label class="form-counter" id="expsY1"> <textarea
											title="리뷰 입력"
											placeholder="최소 글자수는 10자 이상입니다. 고객님의 취향과 경험을 좀 더 자세히 공유해주세요."
											name="reviewTextarea" id="reviewTextarea"
											onkeyup="javascript:fnReviewTextareaLimit(this, 500, 'B');"></textarea>
										<span class="counter"><em>0</em> /500 자</span>
									</label>
									<p class="txt-star" id="expsN1" style="display: none;">개인별
										주관적인 의견으로 인해 상품의 기능 및 효과에 대한 오해의 소지가 있을 수 있어 평점만 선택 가능합니다.</p>
								</div>

								<div class="btns">
									<button type="button" class="btn gray middle btn-cancel"
										onclick="fn.addClass('#p_proReview');fn.removeClass('#p_proReviewWrite');">취소</button>
									<button type="button" class="btn fill black middle btn-confirm"
										onclick="fnReviewSave();">확인</button>
								</div>
							</fieldset>
						</form>

						<div class="infotxt">
							<strong>리뷰 작성 안내</strong>
							<ul>
								<li id="expsY3">권한<br>현대식품관에서 구입한 상품만 가능하며, 배송 완료일 기준
									90일까지 작성하실 수 있습니다.
								</li>
								<li id="expsY4">혜택<br>리뷰 작성 혜택은 H.Point로 지급되며 H.Point
									통합회원이 아닌 경우 지급받으실 수 없습니다.
								</li>
								<li id="expsY5">텍스트 리뷰 50P / 포토 리뷰 150P</li>
								<li id="expsY6">리뷰<br>아래 내용에 해당하는 사유라고 판단되는 경우 작성자 동의
									없이 미전시할 수 있으며, 지급된 포인트는 회수됩니다.
								</li>
								<li id="expsY7">부적합한 내용의 작성(허위 사실, 욕설, 비난, 일반식품의 효능, 효과, 해석
									불가능한 리뷰, 타 상품에 대한 리뷰 등) 타인의 권리 혹은 개인정보 침해 우려가 있는 경우 (캡처. 제3자 사진
									도용 등) 리뷰 작성 후 반품</li>

								<li id="expsN2" style="display: none;">리뷰 작성 후 반품 시 지급된 리뷰
									포인트는 회수됩니다.</li>
								<li id="expsN3" style="display: none;">포인트는 H.Point로 지급되며
									H.Point가 없으신 경우 지급받을 수 없습니다.</li>
							</ul>
						</div>
					</section>
					<!-- //리뷰작성 -->

				</div>

				<div class="rightarea" id="bottom_rightarea">
					<div class="optionarea">
						<div class="optionls">
							<div>
								<strong class="txt-ti"><%-- ${ProductDetail.productName }  --%> </strong>
								<div class="ea-area" style="display: none">
									<input type="number" title="수량 입력" value="1" readonly="">
									<button type="button" class="btn-down"
										onclick="fnOptionEaDown(this);">수량 낮추기</button>
									<button type="button" class="btn-up"
										onclick="fnOptionEaUp(this);">수량 올리기</button>
								</div>
								<span class="txt-price"><em><%-- ${ProductDetail.productPrice } --%> </em>원</span>
							</div>
						</div>
					</div>
					<div class="buybutton" style="opacity: 1; visibility: visible;">
						<p class="txt-total">
							총 금액 <strong><em><%-- ${ProductDetail.productPrice } --%> </em>원</strong>
						</p>
						<div class="btns">
							<button type="button" class="btn darkgray bigger btn-buy"
								onclick="fnPopupScaleOpenA(this, '#p_popCartAdd');">장바구니
								넣어두기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="HeaderFooter/footer.jsp"%>