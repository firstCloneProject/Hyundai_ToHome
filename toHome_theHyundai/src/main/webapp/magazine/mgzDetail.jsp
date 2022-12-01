<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="../css/member.min.css">
<link rel="stylesheet" type="text/css" href="../css/common.min.css">
<link rel="stylesheet" type="text/css" href="../css/css-library.min.css">
<link rel="stylesheet" type="text/css" href="../css/magazine.min.css">
<%-- <%@ include file="../HeaderFooter/header.jsp"%>
 --%>
 <%
    request.setCharacterEncoding("UTF-8");
    String recipeName = request.getParameter("recipeName");
    String recipeImagepath = request.getParameter("recipeImagepath");
%>

<!DOCTYPE html>
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script type="text/javascript" async="" src="./매거진_사과를 곁들인 이베리코 스테이크_files/js"></script><script type="text/javascript" async="" src="./매거진_사과를 곁들인 이베리코 스테이크_files/analytics.js.다운로드"></script><script async="" src="./매거진_사과를 곁들인 이베리코 스테이크_files/gtm.js.다운로드"></script><script async="" src="./매거진_사과를 곁들인 이베리코 스테이크_files/gtm.js(1).다운로드"></script><script type="text/javascript" async="" src="./매거진_사과를 곁들인 이베리코 스테이크_files/analytics.js.다운로드"></script><style class="vjs-styles-defaults">
      .video-js {
        width: 300px;
        height: 150px;
      }

      .vjs-fluid {
        padding-top: 56.25%
      }
    </style>
<head>
<meta charset="UTF-8">
<title>매거진&gt<%= recipeName %></title>
</head>
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">
<div id="wrap" class="magazine detail">
<header id="header">
      <div class="inner">
        <div class="toparea">
          <h1>
            <a href="">
              <img src="tohomemain.png" alt="현대식품관">
            </a>
          </h1>
          <!--로그인 전-->
          <div class="util" id="dawnLoginN" style="display:hidden">
            <a href="로그인 DAO">로그인</a>
            <a href="회원정보 변경">회원가입</a>
            <a href="">마이페이지</a>
            <a href="">고객센터</a>
          </div>

        </div>
        <!-- 두번째 줄 -->
        <nav class="gnbarea">

          <button type="button" class="btn-category">
            카테고리 전체보기
          </button>
          <div id="p_popCategory" class="popcategory">

            <nav class="lnb-list">
              <ul class="lnb">
                <li class="depth1">
                  <button type="button" onclick="">
                    과일과 채소
                  </button>
                  <ul class="depth2">
                    <li>
                      <a href="">
                        전체보기
                      </a>
                    </li>
                    <li>
                      <a href="">
                        계절 과일

                      </a>
                    </li>
                    <li>
                      <a href="">
                        일상채소
                      </a>
                    </li>
                    <li>
                      <a href="">
                        샐러드·쌈채소
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="depth1">
                  <button type="button" onclick="">
                    곡물 · 견과
                  </button>
                  <ul class="depth2">
                    <li>
                      <a href="">
                        전체보기
                      </a>
                    </li>
                    <li>
                      <a href="">
                        쌀

                      </a>
                    </li>
                    <li>
                      <a href="">
                        잡곡

                      </a>
                    </li>
                    <li>
                      <a href="">
                        견과

                      </a>
                    </li>
                  </ul>
                </li>
                <li class="depth1">
                  <button type="button" onclick="">
                    생선
                  </button>
                  <ul class="depth2">
                    <li>
                      <a href="">
                        전체보기
                      </a>
                    </li>
                    <li>
                      <a href="">
                        계절 과일

                      </a>
                    </li>
                  </ul>
                </li>
                <li class="depth1">
                  <button type="button" onclick="">
                    오징어
                  </button>
                  <ul class="depth2">
                    <li>
                      <a href="">
                        전체보기
                      </a>
                    </li>
                    <li>
                      <a href="">
                        생선

                      </a>
                    </li>
                    <li>
                      <a href="">
                        새우

                      </a>
                    </li>
                    <li>
                      <a href="">
                        김

                      </a>
                    </li>
                  </ul>
                </li>

                <li class="depth1">
                  <button type="button" onclick="">
                    영양제
                  </button>
                  <ul class="depth2">
                    <li>
                      <a href="">
                        전체보기
                      </a>
                    </li>
                    <li>
                      <a href="">
                        인삼 · 홍삼

                      </a>
                    </li>
                    <li>
                      <a href="">
                        비타민

                      </a>
                    </li>
                    <li>
                      <a href="">
                        영양제

                      </a>
                    </li>
                  </ul>
                </li>

                <li class="depth1">
                  <button type="button" onclick="">
                    과자
                  </button>
                  <ul class="depth2">
                    <li>
                      <a href="">
                        전체보기
                      </a>
                    </li>
                    <li>
                      <a href="">
                        스낵
                      </a>
                    </li>
                    <li>
                      <a href="">
                        쿠키
                      </a>
                    </li>

                  </ul>
                </li>
              </ul>
            </nav>
          </div>
          <ul class="gnb-list" id="homeGnbList">
            <li>
              <a href="">베스트</a>
            </li>
            <li>
              <a href="">세일</a>
            </li>
            <li>
              <a href="">매거진</a>
            </li>

          </ul>

          <!-- 검색창 구현? -->
          <div class="searcharea">
            <form name="pdPcSearchForm" id="pdPcSearchForm" method="post">
              <fieldset>
                <legend class="hide">검색어 입력</legend>
                <div class="form-entry exist search">
                  <input type="text" name="keyWord" title="검색어 입력">

                  <button type="button" class="btn-del" tabindex="-1" style="display: block" onclick="reset">삭제</button>
                  <button type="button" class="btn-search" onclick="">검색</button>

                </div>
              </fieldset>
            </form>

          </div>
          <button type="button" class="btn-cart" onclick="">
            <span>0</span>
          </button>
        </nav>
      </div>
    </header>
<!-- contents// -->
    <div id="contents">
        <div class="innercon">
	        <div class="lnbarea">
				    <h2>매거진 </h2>
				
				    <nav class="lnb">
				       <ul>    
				       </ul>
				    </nav>
				  </div>
				  <div class="detailarea">
					
							<div class="title-area">
									
									<div class="title">
											<div class="inner">
													<p></p>
													<h2><%=recipeName %></h2>
											</div>
									</div>
							</div>
							<div class="editor-info">
									<em class="editor"></em>
									<div class="btn-area">
									</div>
							</div>							
							 
							<div class="recipe-view">
								<img src="${pageContext.request.contextPath}/<%=recipeImagepath %>" alt>
								<!-- <img src="./매거진_사과를 곁들인 이베리코 스테이크_files/zktdz.jpg" alt=""> -->
								
										<!-- //이미지인 경우 -->
							</div>
			    </div>
        </div>
    <!-- //contents -->
    </div>
<%@ include file="../HeaderFooter/footer.jsp"%>

</body>
</html>