<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="inc/session.jsp"%>
<html lang="en">
<head>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | My Page</title>

</head>
<body>
	<%@include file="inc/top.jsp"%>

	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">해외선물 증권계좌</h2>
			<p class="banner-sections">
				<a style="color: white"
					href="${pageContext.request.contextPath}/home/index"
					class="banner-section">Home</a>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<a style="color: white"
					href="#"
					class="banner-section">Trade Account</a>
					<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<a style="color: white"
					href="#"
					class="banner-section">해외선물 증권계좌</a>
			</p>
		</div>
		<!-- /BANNER -->
	</div>

	<%@include file="inc/newsscroll.jsp"%>



	<div class="layout-content-full grid-limit">
    
    <div class="section-title-wrap blue no-space">
                <h2 class="section-title medium">해외선물 증권계좌</h2>
                <div class="section-title-separator"></div>
              </div>

		<div class="table forum-topics">
			<!-- TABLE ROW HEADER -->
			<div class="table-row-header">
				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item">
					<p class="table-row-header-title">시스템명</p>
				</div>
				
				
				<div class="table-row-header-item left ">
					<p class="table-row-header-title">설명</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->

				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item left">
					<p class="table-row-header-title">수익률</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item">
					<p class="table-row-header-title">거래 시작일</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item">
					<p class="table-row-header-title"></p>
				</div>


				
			</div>
			<!-- /TABLE ROW HEADER -->

			<!-- TABLE ROWS -->
			<div class="table-rows">
				<!-- TABLE ROW -->


				<c:forEach items="${ acclist }" var="acclist"
					varStatus="status1">


					<div class="table-row large">
						<div class="table-row-item left">
							<p class="table-text bold">${acclist.name}</p>
						</div>
						<div class="table-row-item left">
							<p class="table-text bold">${acclist.description}</p>
						</div>
						<div class="table-row-item">
							<p class="table-text bold">${acclist.profitrate}%</p>
						</div>
						<div class="table-row-item">
							<p class="table-text bold light">${acclist.startdate}</p>
						</div>
						<!-- /TABLE ROW ITEM -->
						<div class="table-row-item right">
							<p class="table-text bold center">
							<div class="forum-post-tags">
							<a href="${pageContext.request.contextPath}/forum/viewKRAccount?accountid=${acclist.accountid}" class="forum-tag-button cyan">실계좌보기</a>
							<a href="${pageContext.request.contextPath}/forum/StrategyKRAccount?accountid=${acclist.accountid}" class="forum-tag-button red">상품설명서</a></div></p>
						</div>
			
					</div>
					<!-- /TABLE ROW -->



				</c:forEach>



			</div>

		</div>
		
		
	
		
		
	</div>




	<%@include file="inc/footer.jsp"%>
</body>
</html>