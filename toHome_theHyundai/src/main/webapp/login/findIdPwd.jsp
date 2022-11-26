<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>아이디/비밀번호 찾기</title><link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" type="text/css" href="../css/member.min.css">
<link rel="stylesheet" type="text/css" href="../css/common.min.css">
<link rel="stylesheet" type="text/css" href="../css/css-library.min.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">

</head>
<body>
    <div id="wrap" class="member certify">
        <div id="contents">
            <div class="innercon">
                <h2>아이디/비밀번호 찾기</h2>
    
                <div class="linearea">
                    <h3>아이디/비밀번호가 기억나지 않으세요?</h3>
                    <p class="txt">회원가입 시 입력한 정보로<br>아이디 확인 및 비밀번호 재설정이 가능합니다.</p>
    
                    <div class="btns">
                        <button type="button" class="btn big black" onclick="javascript:location.href='${pageContext.request.contextPath}/login/findId.jsp'"><b>아이디 찾기</b></button>
                        <button type="button" class="btn fill big black" onclick="javascript:location.href='${pageContext.request.contextPath}/login/findPwd.jsp'"><b>비밀번호 찾기</b></button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>