<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 완료</title>
<link rel="stylesheet" type="text/css" href="../css/member.min.css">
<link rel="stylesheet" type="text/css" href="../css/common.min.css">
<link rel="stylesheet" type="text/css" href="../css/css-library.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap"
	rel="stylesheet">
<style>
img {
    font-family: "NotoSansKR", sans-serif, Malgungothic, "맑은고딕", Dotum, "돋움";
    line-height: 1.6;
    letter-spacing: -0.025em;
    word-break: keep-all;
    word-wrap: break-word;
    font-weight: 200;
    color: #101010;
    box-sizing: border-box;
    vertical-align: top;
}

#h1 {
    
    margin: 0;
    
}
</style>
</head>
<body>
<header id="header" class="short">
    	<div class="skip">
        <a href="#contents">본문으로 건너뛰기</a>
    	</div>
    
	    <div class="inner">
	        <!-- toparea// -->
	        <div class="toparea">
	            <a href="${pageContext.request.contextPath}/main.jsp"><img src="${pageContext.request.contextPath}/img/header_logo_freex34.png" alt="현대식품관"></a>
	            
	            <div class="util">
	                        <!-- util : 로그인 전// -->
	                        <a href="login.jsp">로그인</a>
	                        <a href="join.jsp">회원가입</a>
	            </div>
	            
	        </div>
	        <!-- //toparea -->
	    </div>
	</header>
	<div id="wrap" class="member joinstep2">
		<div id="contents">
			<div class="innercon">
				<div class="linearea">
					<h3>
					<b>가입이 완료되었습니다!</b>
					</h3>
					<form name="mainform" method="post">
									<br></br>
					 	<div class="btns">
					 		<button type="button" class="btn big black"
					 			onclick="location.href='${pageContext.request.contextPath}/main.jsp' ">
					 			<b>홈으로</b>
					 		</button>
					 		<button type="button" class="btn fill big black"
					 			onclick="location.href='${pageContext.request.contextPath}/login/login.jsp' ">
					 			<b>로그인</b>
					 		</button>
					 		
						</div>
					</form>
</div></div></div></div>
</body>
</html>