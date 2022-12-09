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
#h1 {
    
    margin: 0;
    
}
input[type="text"].input_id {
        -webkit-text-size-adjust: 100%;
    word-break: keep-all;
    word-wrap: break-word;
    list-style: none;
    box-sizing: border-box;
    -webkit-border-radius: 0;
    overflow: visible;
    font-family: sans-serif;
    margin: 0;
    padding: 0 19px;
    font-size: 15px;
    color: #101010;
    border: 1px solid #dbd9d6;
    -webkit-appearance: none;
    height: 56px;
    line-height: 54px;
    padding-right: 56px;
    display: inline-block;
    width: calc(100% - 100px);
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
	<div id="wrap" class="member joinstep2">
		<header id="header" class="short">
    	<div class="skip">
        <a href="#contents">본문으로 건너뛰기</a>
    	</div>
    
	    <div class="inner">
	        <!-- toparea// -->
	        <div class="toparea">
	            <h1 id="h1"><a href="${pageContext.request.contextPath}/main.jsp"><img src="${pageContext.request.contextPath}/img/header_logo_freex34.png" alt="현대식품관"></a></h1>
	            
	            <div class="util">
	                        <!-- util : 로그인 전// -->
	                        <a href="login.jsp">로그인</a>
	                        <a href="join.jsp">회원가입</a>
	                        <!-- //util : 로그인 전 -->
	              
	            </div>
	            
	        </div>
	        <!-- //toparea -->
	    </div>
	</header>
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
								회원정보
							</legend>
							<ul>
								<li><label class="form-entry inline"> 
									<strong class="ti"><b>아이디</b></strong> 
									<input type="text" class="input_id" id="customerId" name="customerId" title="아이디" placeholder="아이디" required/>
									<!-- <font id = "checkId" size="2"></font>  -->
										<button type="button" class="btn-del" tabindex="-1">삭제</button>
										<button type="button" id="btnCheck" class="btn fill big gray" onclick="idCheck()">인증하기</button>
										
								</label><span id="result"></span>
									</li>

								<li><label class="form-entry"> <strong class="ti"><b>비밀번호</b></strong> <input
										type="password" class="big" name="pwd1" id="pwd1"
										title="비밀번호 입력" placeholder="비밀번호" required/> <!-- onkeydown="resetpwd();" -->
										<button type="button" class="btn-del" tabindex="-1">삭제</button>
								</label>
									<div class="infotxt">
										<ul>
											<li><b>영문, 숫자, 특수문자를 포함하여 8~30자 사용 가능</b></li>
										</ul>
									</div></li>

								<li class="pw"><label class="form-entry"> <input
										type="password" class="big" name="pwd2" id="pwd2"
										title="비밀번호 확인 입력" placeholder="비밀번호 확인">
										<button type="button" class="btn-del" tabindex="-1">삭제</button>
								</label>
								<div class="alert alert-success" id="alert-success"><b>비밀번호가 일치합니다.</b></div>
								<div class="alert alert-danger" id="alert-danger"><b>비밀번호가 일치하지 않습니다.</b></div>
								</li>

								<li class="name"><label class="form-entry"> <strong
										class="ti"><b>이름</b></strong> <input type="text" class="big"
										name="name" id="name" title="이름 입력" placeholder="이름 입력" required/>
										<button type="button" class="btn-del" tabindex="-1">삭제</button>
								</label></li>

								<li>
									<!-- class="phone" --> <label class="form-entry"> <strong
										class="ti"><b>전화번호</b></strong> <input type="text" class="big"
										name="telNo" id="telNo" title="전화번호 입력" placeholder="전화번호 입력" required/>
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
											<input type="text" id="birth"  name="birth" class="big" title="생년월일" placeholder="생년월일" value="" required/> <!-- onkeydown="javascript:fn.inputMsgClear(#birth);" -->
											
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
											id="address" name="address" class="big" title="주소 입력"
											placeholder="주소 입력" required/>
										<button type="button" class="btn-del" tabindex="-1">삭제</button>
										</label> 
									</div>
								</li>

							</ul>
						</fieldset>
						<div class="btns">
							<button type="button" class="btn big black"
								onclick="location.href='${pageContext.request.contextPath}/main.jsp'">
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
	
	$(function(){
        $("#alert-success").hide();
        $("#alert-danger").hide();
        $("input").keyup(function(){
            var pwd1=$("#pwd1").val();
            var pwd2=$("#pwd2").val();
            if(pwd1 != "" || pwd2 != ""){
                if(pwd1 == pwd2){
                    $("#alert-success").show();
                    $("#alert-danger").hide();
                    $("#submit").removeAttr("disabled");
                }else{
                    $("#alert-success").hide();
                    $("#alert-danger").show();
                    $("#submit").attr("disabled", "disabled");
                }    
            }
        });
    });
	
/* 	$('#btnCheck').click(function() {
		if ($('#txtid').val() != '') {
				
	        // 아이디를 서버로 전송 > DB 유효성 검사 > 결과 반환받기
	        $.ajax({
	   					
	            type: 'GET',
	            url: '/ajax/login/idcheck.action',
	            data: 'id=' + $('#txtid').val(),
	            dataType: 'json',
	            success: function(result) {
	                if (result == '0') {
	                    $('#result').text('사용 가능한 아이디입니다.');
	                } else {
	                    $('#result').text('이미 사용중인 아이디입니다.');
	                }
	            },
	            error: function(a, b, c) {
	                console.log(a, b, c);
	            }
	   					
	        });
	   				
	    } else {
	        alert('아이디를 입력하세요.');
	        $('#txtid').focus();
	    }
	   			
	}); */
	function idCheck() {
	      let customerId = document.getElementById('customerId').value;

	      $.ajax({
	         url : "../ajax/checkId.do",
	         type : "post",
	         data : {
	            customerId : customerId
	         },
	         success : function(data) {
	        	if(data.result == 1){
	        		alert("사용 가능한 아이디입니다.");
	        	}else{
	        		alert("이미 존재하는 아이디입니다.");
	  				$("#customerId").val("");
	        	}
	         },
	         error : function(e) {
				alert(e);
	            console.log(e);
	         },
	      });
	   }
	
	/*  $('.input_id').focusout(function(){
		let customerId = $('.input_id').val(); // input_id에 입력되는 값
		
		$.ajax({
			url : "cust/checkId.do",
			type : "post",
			data : {customerId: customerId},
			dataType : 'json',
			success : function(result){
				if(result == 0){
					$("#checkId").html('사용할 수 없는 아이디입니다.');
					$("#checkId").attr('color','red');
				} else{
					$("#checkId").html('사용할 수 있는 아이디입니다.');
					$("#checkId").attr('color','green');
				} 
			},
			error : function(){
				alert("서버요청실패");
			}
		})
		 
	}) */
	         
    </script>
</body>
</html>