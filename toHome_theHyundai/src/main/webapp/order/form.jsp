<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<form name="mainform" method="post" action="${contextPath}/cust/addCustomer.do">
  <fieldset class="form-field hpoint">
    <ul>
      <li class="name"><label class="form-entry"> <strong
          class="ti"><b>이름</b><span class="need">*<span
              class="hide">필수</span></span></strong> <input type="text" class="big"
          name="name" id="name" title="이름 입력" placeholder="이름 입력">
          <button type="button" class="btn-del" tabindex="-1">삭제</button>
      </label></li>

      <li>
        <!-- class="phone" --> <label class="form-entry"> <strong
          class="ti"><b>전화번호</b><span class="need">*<span
              class="hide">필수</span></span></strong> <input type="text" class="big"
          name="telNo" id="telNo" title="전화번호 입력" placeholder="전화번호 입력">
          <button type="button" class="btn-del" tabindex="-1">삭제</button>
      </label>
      </li>
      
      <li>
        <div class="form-addr">
          <strong class="ti"><b>주소</b></strong>
          <!-- <input type="text" name="RDNM_POST_NO" class="big post" title="우편번호" placeholder="우편번호" readonly="">
                              <button type="button" class="btn fill big gray" onclick="javascript:showSearchAddressPop('pc');">주소찾기</button>
                              <input type="text" name="RDNM_BASE_ADR" class="big" title="기본주소" placeholder="기본주소" readonly=""> -->
          <label class="form-entry"> <input type="text"
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