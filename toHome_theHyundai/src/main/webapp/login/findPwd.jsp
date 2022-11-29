<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>아이디/비밀번호 찾기</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" type="text/css" href="../css/member.min.css">
<link rel="stylesheet" type="text/css" href="../css/common.min.css">
<link rel="stylesheet" type="text/css" href="../css/css-library.min.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">

</head>
<body>
	<div id="wrap" class="member pwreset">
	    <div id="contents">
	        <div class="innercon">
	            <h2>비밀번호 찾기</h2>
	            <div class="linearea">
	                <h3><b>회원정보를 입력해주세요.</b></h3>
	                <form id="mainform" method="post">
	                    <fieldset class="form-field">
	                        <ul>
	                            <li>
	                                <label class="form-entry">
	                                    <strong class="ti"><b>아이디</b></strong>
	                                    <input type="text" id="id" name="id" class="big" title="아이디 입력" placeholder="아이디 입력" onkeydown="resetID();"><button type="button" class="btn-del" tabindex="-1">삭제</button>
	                                </label>
	                            </li>

                                <li class="name">
                                    <label class="form-entry">
                                        <strong class="ti"><b>이름</b></strong>
                                            <input type="text" class="big" name="name" id="name" title="이름 입력" placeholder="이름 입력" >
                                            <button type="button" class="btn-del" tabindex="-1">삭제</button>
                                    </label>
                                </li>

                                <li class="phone">
                                    <label class="form-entry">
                                        <strong class="ti"><b>전화번호</b></strong>
                                            <input type="text" class="big" name="phone" id="phone" title="전화번호 입력" placeholder="전화번호 입력" >
                                            <button type="button" class="btn-del" tabindex="-1">삭제</button>
                                    </label>
                                </li>

                            </ul>
	                        <button type="button" class="btn fill big black" onclick="javascript:resetPwd();">비밀번호 찾기</button>
                        </fieldset>

<!--                         <button type="button" class="btn big black" onclick="javascript:location.href='/front/cua/front/joinStep1.do?publicYn=Y'"><b>취소</b></button>--> 
                           <!-- <button type="button" class="btn fill big black" onclick="javascript:goRegist()"><b>가입하기</b></button> -->
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>