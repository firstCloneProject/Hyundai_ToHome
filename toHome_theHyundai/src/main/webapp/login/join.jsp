<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="joinDate" value="<%=new java.util.Date()%>" />
<fmt:formatDate value="${joinDate}" var="joinDate" pattern="yyyyMMdd" />
<!DOCTYPE html>
<html>
<head>
<style class="vjs-styles-defaults">
.video-js {
	width: 300px;
	height: 150px;
}

.vjs-fluid {
	padding-top: 56.25%
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%-- <c:set var="contextPath" value="/Hyundai"   />  --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>회원가입</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" type="text/css" href="../css/member.min.css">
<link rel="stylesheet" type="text/css" href="../css/common.min.css">
<link rel="stylesheet" type="text/css" href="../css/css-library.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap"
	rel="stylesheet">
<!-- <script type="text/javascript" src="../js/function.min.js"></script> -->

</head>
<body>
	<div id="wrap" class="member joinstep2">
		<div id="contents">
			<div class="innercon">
				<h2>현대식품관 회원가입</h2>
				<div class="linearea">
					<h3>
						<b>가입정보를 입력해 주세요.</b>
					</h3>
					<form name="mainform" method="post" action="${contextPath}/cust/addCustomer.do">
						<fieldset class="form-field hpoint">
							<legend class="tit">
								회원정보<small><span class="need">*</span> 필수입력사항</small>
							</legend>
							<ul>
								<li><label class="form-entry inline"> <strong
										class="ti"><b>이메일</b><span class="need">*<span
												class="hide">필수</span></span></strong> <input type="text" class="big"
										id="customerId" name="customerId" title="아이디"
										placeholder="아이디"> <!-- onkeydown="resetID();" -->
										<button type="button" class="btn-del" tabindex="-1">삭제</button>
										<button type="button" class="btn fill big gray"
											onclick="javascript:idCheck();">인증하기</button>
								</label>
									<div class="infotxt">
										<ul>
											<li><b>현대식품관은 이메일을 아이디로 사용합니다.</b></li>
										</ul>
									</div></li>

								<li><label class="form-entry"> <strong class="ti"><b>비밀번호</b><span
											class="need">*<span class="hide">필수</span></span></strong> <input
										type="password" class="big" name="pwd" id="pwd"
										title="비밀번호 입력" placeholder="비밀번호 확인"> <!-- onkeydown="resetpwd();" -->
										<button type="button" class="btn-del" tabindex="-1">삭제</button>
								</label>
									<div class="infotxt">
										<ul>
											<li><b>영문, 숫자, 특수문자를 포함하여 8~30자 사용 가능</b></li>
											<li><b>연속된3자리 이상의 숫자,문자는 사용 불가</b></li>
										</ul>
									</div></li>

								<li class="pw"><label class="form-entry"> <input
										type="password" class="big" name="pwd2" id="pwd2"
										title="비밀번호 확인 입력" placeholder="비밀번호 확인">
										<button type="button" class="btn-del" tabindex="-1">삭제</button>
								</label>
									<div class="infotxt">
										<ul>
											<li><b>비밀번호를 다시 입력해주세요.</b></li>
										</ul>
									</div></li>

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
									<div class="infotxt">
										<ul>
											<li><b>하이픈(-)없이 숫자만 입력해주세요 (예: 01022220000)</b></li>
										</ul>
									</div>
								</li>

								<li>
									<div class="form-birth">
										<label class="form-entry"> <strong class="ti"><b>생년월일
													및 성별</b></strong> <!--                                                 <input type="number" name="birth" class="big" title="생년월일" placeholder="생년월일" value="" onkeydown="javascript:fn.inputMsgClear(#birth);">-->
											<input type="text" id="birth"  name="birth" class="big" title="생년월일" placeholder="생년월일" value=""> <!-- onkeydown="javascript:fn.inputMsgClear(#birth);" -->
											
											<input type="hidden" id="joinDate" name="joinDate" value="${joinDate}" >
											
										</label>
										<button type="button" id="female" class="btn-gender active">여성</button>
										<button type="button" id="male" class="btn-gender">남성</button>
									    <input type="hidden" name="gender" id="gender" value="2">
										
										<script type="text/javascript" src="../js/member.min.js"></script>


										<div class="infotxt">
											<ul>
												<li><b>8자리 숫자만 입력 (예. 20190715)</b></li>
											</ul>
										</div>
									</div>
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
										</label> <label><input type="checkbox" name="ADD_DSTN"
											class="big" id="ADD_DSTN" value="Y"><span><b>배송지 목록에 추가</b></span></label>
									</div>
								</li>

							</ul>
						</fieldset>
						<div class="btns">
							<button type="button" class="btn big black"
								onclick="javascript:location.href='/front/cua/front/joinStep1.do?publicYn=Y'">
								<b>취소</b>
							</button>
							<!-- <button type="button" class="btn fill big black" onclick="javascript:goRegist()"><b>가입하기</b></button> -->
<!-- 							<button type="button" class="btn fill big black" onclick="javascript:goRegist()"><b>가입하기</b></button>
 -->							<button type="submit" class="btn fill big black">
								<b>가입하기</b>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
    $('#male').click(function(){
	    $('#male').addClass("active");
	    $('#female').removeClass("active");
	    $('input[name=SEX_GBCD]').val('1');
	    
	});
	$('#female').click(function(){
	    $('#female').addClass("active");
	    $('#male').removeClass("active");
	    $('input[name=SEX_GBCD]').val('2');
	});
	
	function resetID() {
	    initIdCheck = false;
	    fn.inputMsgClear('#customerID');
	}
/* 	
	//아이디 중복 확인
	var initIdCheck = false;
	var EMAIL_SELF_CERT_LOG_NO = '';
	function idCheck() {
	
	    if (!validEmail('ITNT_ID')) {
	        return;
	    }
	
	    $.ajax({
	        type : 'POST',
//	        url : '/front/cua/front/selectMember.do',
	        url : '/front/cua/front/countItntId.do',
	        data : 'ITNT_ID=' + $('#ITNT_ID').val()+'&EMAIL_SELF_CERT_GBCD=11',
	        dataType : 'json',
	        async : false,
	        success : function(data) {
	            //console.log(data);
	            if (data.result == false) {
	                initIdCheck = true;
	                fn.inputMsgClear();
	                fn.inputMsg('#ITNT_ID', '사용가능합니다.', true);
	
	                $.ajax({
	                    type : 'POST',
	                    url : '/front/cua/front/certEmail.do',
	                    data : 'ITNT_ID=' + $('#ITNT_ID').val()+'&EMAIL_SELF_CERT_GBCD=11',
	                    dataType : 'json',
	                    async : false,
	                    success : function(data) {
	                        console.log(data)
	                        EMAIL_SELF_CERT_LOG_NO = data.EMAIL_SELF_CERT_LOG_NO;
	                        alert('가입 인증 메일이 발송되었습니다.\n메일 내의 인증링크를 클릭하셔서 메일 인증을 완료하신 후 가입을 진행해주시기 바랍니다.');
	                        
	                        // 이메일 안되서 자동인증처리.	
	                        /*
	                        var certLink = data.certLink;                           
	                        $.ajax({
	                            type : 'POST',
	                            url : certLink,
	                            //data : 'ITNT_ID=' + $('#ITNT_ID').val(),
	                            //dataType : 'json',
	                            success : function(data) {
	                                //console.log(data)
	                            }
	                        });
	                        */
	                    }
	                });
	
	            } else {
	                initIdCheck = false;
	                fn.inputMsgClear()
	                fn.inputMsg('#ITNT_ID', '이미 존재하는 아이디입니다.', false);
	            }
	        }
	    })
	}
	
    //회원등록
	var clickAble = true;
	function goRegist() {
		console.log("함수 불러옴")
	    $('#customerId').val($('#customerId').val().replaceAll(' ', ''));
	    
	    /* if (!initIdCheck) {
	        alert('아이디 인증을 완료해주세요.');
	        return;
	    } */
	
	    $("input[name='pwd']").trigger('blur');
	    //console.log('isValidPasswd : ' + isValidPasswd);
	    /* if (!isValidPasswd) {
	        return;
	    } */
	
	    if ($('input[name=pwd]').val() != $('input[name=pwd2]').val()) {
	        alert('비밀번호가 일치하지 않습니다.');
	        return;
	    }
	    
        /* if (!isDate($('input[name=birth]').val()) ){
            alert('생년월일을 확인해주십시오.');
            return;
        } */

        if(!$("#male").hasClass("active") && !$("#female").hasClass("active")){
            alert('성별을 선택해주십시오.');
            return;
        }
        
        if( $('input[name=birth]').val() == ""){
            $('input[name=birth]').val($("input[name='birth']").val());
        }
	    
	   /*  if(!isValidRcmmCust()){
	    	return;
	    } */
	    
	    // 상세주소 공백 여러개 제거
        var address = $('input[name=address]').val();
        if( address != null) {
            $('input[name=address]').val( address.replace(/ +/g, " ") );
        }
        
	    /* if (clickAble) {
	        clickAble = false;
	
	        var emailDomain = $('#customerId').val().split('@')[1];
	        //console.log(emailDomain);
	        //if(true)return;
	        $('#EMAIL_ADR').val($('#customerId').val());
	
	        var flag = true;
	        $.ajax({
	            type : 'POST',
	            url : '/front/cua/front/emailDomainCheck.do',
	            data : 'p=' + emailDomain,
	            dataType : 'json',
	            async : false,
	            success : function(data) {
	                if (!data) {
	                    if (!confirm('입력하신 이메일 주소가 맞습니까?\n계속 진행하시겠습니까?')) {
	                        flag = false;
	                        clickAble = true;
	                    }
	                }
	            },
	            error : function(xhr, status, error) {
	                if (!confirm('입력하신 이메일 주소가 맞습니까?\n계속 진행하시겠습니까?')) {
	                    flag = false;
	                    clickAble = true;
	                }
	            }
	        }) */
	
	
	     } else {
	         alert('가입 진행 중입니다.\n잠시만 기다려주십시오.')
	     }
	  	var flag = true;
	    if (flag) {
	            /* $('input[name=EMAIL_SELF_CERT_LOG_NO]').val(EMAIL_SELF_CERT_LOG_NO);
	            fn_showLoadingBar(); */
	            //console.log('가입..........')
	            setTimeout(function(){
		            $.ajax({
		                type : 'POST',
		                url : "http://localhost:8080/Hyundai/customer/cust",
		                data : $('form[name=mainform]').serialize(),
		                dataType : 'json',
		                async : false,
		                success : function(data) {
		                    //console.log(data);
		                    if (data.SUCCESS) {
		                        $('form[name=mainform]').get(0).action = '/addCustomer.do';
		                        $('form[name=mainform]').get(0).submit();
		                    } else {
		                        alert(data.MESSAGE);
		                        clickAble = true;
		                        return;
		                    }
		                },
		                error : function(xhr, status, error) {
		                    alert('시스템오류로 가입이 되지않았습니다.\n다시 시도해 주시기 바랍니다.');
		                    clickAble = true;
		                },
                        complete : function(){
/*                             fn_hideLoadingBar();*/
                        		console.log("전송됨!") 
                        }
		            });
	            }, 500);    // End setTimeout
	        }
	} */
	var isValidPasswd = false;
	$(document).ready(function() {
		  $('#pwd2').blur(function(){
	            fn.inputMsgClear('#pwd2');  
	            
	            
	            if( $('#pwd').val() != $('#pwd2').val() ){  
	                fn.inputMsg('#pwd2', '비밀번호가 일치하지 않습니다.', false);
	            }else{
	                fn.inputMsgClear('#pwd2');  
	            }
	        }).keyup(function(){
	             fn.inputMsgClear('#pwd2');  
	             
	             
	             if( $('#pwd').val() != $('#pwd2').val() ){  
	                 fn.inputMsg('#pwd2', '비밀번호가 일치하지 않습니다.', false);
	             }else{
	                 fn.inputMsgClear('#pwd2');  
	             }
	        });
		  
	    $("input[name='pwd']").blur(function() {
	        var objParent = $(this).parent();
	        var pwd = $(this).val();
	
	        if (isEmpty(pwd)) {
	            fn.inputMsgClear('#pwd');
	            fn.inputMsg('#pwd', '비밀번호를 입력해 주세요.', false);
	            isValidPasswd = false;
	        } else {
	            var v_num = 0;
	            var v_engL = 0;
	            var v_engS = 0;
	            var v_spe = 0;
	            var pattern1 = /\s/g;
	
	            isValidPasswd = true;
	
	            //1.비밀번호에 포함된 문자,숫자,특수문자구분,한글
	            for (var i = 0; i < pwd.length; i++) {
	
	                if (ufn_ASCII(pwd, i) >= 48 && ufn_ASCII(pwd, i) <= 57) {
	                    v_num = 1;
	                }//숫자
	                else if (ufn_ASCII(pwd, i) >= 65 && ufn_ASCII(pwd, i) <= 90) {
	                    v_engL = 1;
	                }//영대
	                else if (ufn_ASCII(pwd, i) >= 97 && ufn_ASCII(pwd, i) <= 122) {
	                    v_engS = 1;
	                }//영소
	                else if ((ufn_ASCII(pwd, i) >= 33 && ufn_ASCII(pwd, i) <= 47) || (ufn_ASCII(pwd, i) >= 58 && ufn_ASCII(pwd, i) <= 64) || (ufn_ASCII(pwd, i) >= 91 && ufn_ASCII(pwd, i) <= 96) || (ufn_ASCII(pwd, i) >= 123 && ufn_ASCII(pwd, i) <= 126)) {
	                    v_spe = 1;//특수문자
	                }
	            }
	
	            var v_eng = (v_engL + v_engS) > 0 ? 1 : 0;
	
	            //2.비밀번호 자리수 체크 및 자리수별 조합된 경우의 수 체크
	            if (pwd.length < 8 || 30 < pwd.length) {
	                fn.inputMsgClear('#pwd');
	                fn.inputMsg('#pwd', '비밀번호는 8~30 자리 이내로 입력해주세요.', false);
	                isValidPasswd = false;
	            } else if ((v_num + v_eng + v_spe) < 3) {
	                fn.inputMsgClear('#pwd');
	                fn.inputMsg('#pwd', '비밀번호는 영문, 숫자, 특수문자를 포함하여 입력해 주세요.', false);
	                isValidPasswd = false;
	            } else if (pattern1.test(pwd)) {
	                fn.inputMsgClear('#pwd');
	                fn.inputMsg('#pwd', '비밀번호는 공백을 입력하실수 없습니다.', false);
	                isValidPasswd = false;
	            } else {
	
	                //3.연속된숫자 및 문자 체크 / 연속 중복된 문자,숫자 체크
	                for (var i = 0; i < pwd.length; i++) {
	                    //3자리 연속된 숫자거나 123, 3자리연속된 문자 사용불가
	                    if (((ufn_ASCII(pwd, i) - ufn_ASCII(pwd, i - 1) == 1) && (ufn_ASCII(pwd, i - 1) - ufn_ASCII(pwd, i - 2) == 1)) || ((ufn_ASCII(pwd, i) - ufn_ASCII(pwd, i - 1) == -1) && (ufn_ASCII(pwd, i - 1) - ufn_ASCII(pwd, i - 2) == -1))) {
	                        if (ufn_ASCII(pwd, i - 1) >= 40 && ufn_ASCII(pwd, i - 1) <= 57) {
	                            //특수문자와 숫자
	                            fn.inputMsgClear('#pwd');
	                            fn.inputMsg('#pwd', '연속된 3자리 문자를 입력하실 수 없습니다.', false);
	                            isValidPasswd = false;
	                            break;
	                        } else if (ufn_ASCII(pwd, i - 1) >= 65 && ufn_ASCII(pwd, i - 1) <= 90) {
	                            // 영문대문자
	                            fn.inputMsgClear('#pwd');
	                            fn.inputMsg('#pwd', '연속된 3자리 문자를 입력하실 수 없습니다.', false);
	                            isValidPasswd = false;
	                            break;
	                        } else if (ufn_ASCII(pwd, i - 1) >= 97 && ufn_ASCII(pwd, i - 1) <= 122) {
	                            //영문소문자
	                            fn.inputMsgClear('#pwd');
	                            fn.inputMsg('#pwd', '연속된 3자리 문자를 입력하실 수 없습니다.', false);
	                            isValidPasswd = false;
	                            break;
	                        }
	                    }
	                    //3자리 동일한 문자 or 숫자 불가
	                    else if ((ufn_ASCII(pwd, i) - ufn_ASCII(pwd, i - 1) == 0) && (ufn_ASCII(pwd, i - 1) - ufn_ASCII(pwd, i - 2) == 0)) {
	                        fn.inputMsgClear('#pwd');
	                        fn.inputMsg('#pwd', '동일한 문자를 3자연속 입력하실 수 없습니다.', false);
	                        isValidPasswd = false;
	                        break;
	                    }
	                }
	            }
	        }
	        if (isValidPasswd) {
	            fn.inputMsgClear('#pwd');
	        }
	    });
	});
	
	function ufn_ASCII(pwd, i) {
	    return pwd.substr(i, i + 1).charCodeAt(0);
	}
	
    </script>
</body>
</html>