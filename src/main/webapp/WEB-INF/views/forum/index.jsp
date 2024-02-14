<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | Home</title>



</head>
<body>
	<%@include file="inc/top.jsp"%>
 
	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">Welcome!</h2>
		</div>
		<!-- /BANNER -->
	</div>
<%@include file="inc/newsscroll.jsp"%>
	
	
<div class="layout-content-full grid-limit">
    
    <div class="section-title-wrap blue no-space">
                <h2 class="section-title medium">MT5 Account List</h2>
                <div class="section-title-separator"></div>
              </div>

		<div class="table forum-topics">
			<!-- TABLE ROW HEADER -->
			<div class="table-row-header">
				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item">
					<p class="table-row-header-title">Name</p>
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
				<div class="table-row-header-item left">
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
							<a href="${pageContext.request.contextPath}/forum/viewMt5Account?id=${acclist.login}" class="forum-tag-button cyan">실계좌보기</a>
							<a href="${pageContext.request.contextPath}/forum/StrategyMt5Account?id=${acclist.login}" class="forum-tag-button red">상품설명서</a></div></p>
						</div>
			
					</div>
					<!-- /TABLE ROW -->



				</c:forEach>



			</div>

		</div>
		<br><br>
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


				<c:forEach items="${ kracclist }" var="kracclist"
					varStatus="status1">


					<div class="table-row large">
						<div class="table-row-item left">
							<p class="table-text bold">${kracclist.name}</p>
						</div>
						<div class="table-row-item left">
							<p class="table-text bold">${kracclist.description}</p>
						</div>
						<div class="table-row-item">
							<p class="table-text bold">${kracclist.profitrate}%</p>
						</div>
						<div class="table-row-item">
							<p class="table-text bold light">${kracclist.startdate}</p>
						</div>
						<!-- /TABLE ROW ITEM -->
						<div class="table-row-item right">
							<p class="table-text bold center">
							<div class="forum-post-tags">
							<a href="${pageContext.request.contextPath}/forum/viewKRAccount?accountid=${kracclist.accountid}" class="forum-tag-button cyan">실계좌보기</a>
							<a href="${pageContext.request.contextPath}/forum/StrategyKRAccount?accountid=${kracclist.accountid}" class="forum-tag-button red">상품설명서</a></div></p>
						</div>
			
					</div>
					<!-- /TABLE ROW -->



				</c:forEach>



			</div>

		</div>
	
		<br><br>
		
    	<div class="section-title-wrap blue no-space">
                <h2 class="section-title medium">Forum</h2>
                <div class="section-title-separator"></div>
              </div>
		

		<!-- TABLE -->
		<div class="table forum-categories">
			<!-- TABLE ROW HEADER -->
			<div class="table-row-header">
				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item left">
					<p class="table-row-header-title">Forum</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->

				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item padded-large">
					<p class="table-row-header-title">Topics</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->

				<!-- TABLE ROW HEADER ITEM -->
			
				<!-- /TABLE ROW HEADER ITEM -->

				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item left">
					<p class="table-row-header-title">Category</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->
			</div>
			<!-- /TABLE ROW HEADER -->

			<!-- TABLE ROWS -->
			<div class="table-rows no-color">
				<!-- TABLE ROW -->

				<c:forEach items="${ forumlist }" var="listinfo" varStatus="status">


					<div class="table-row large">
						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<!-- FORUM CATEGORY WRAP -->
							<div class="forum-category-wrap">
								<!-- FORUM CATEGORY IMG -->
								<div> <img
									class="forum-category-img"
									src="${pageContext.request.contextPath}/resources/forum/img/forum/${listinfo.logo }"
									alt="category-02">
								</div>
								<!-- /FORUM CATEGORY IMG -->

								<!-- FORUM CATEGORY TITLE -->
								<div class="forum-category-title">${listinfo.name }</div>
								<!-- /FORUM CATEGORY TITLE -->

								<!-- FORUM CATEGORY DESCRIPTION -->
								<p class="forum-category-description">${listinfo.description }</p>
								<!-- /FORUM CATEGORY DESCRIPTION -->
							</div>
							<!-- /FORUM CATEGORY WRAP -->
						</div>
						<!-- /TABLE ROW ITEM -->

						<!-- TABLE ROW ITEM -->
						<div class="table-row-item padded-large">
							<p class="table-text bold light">

								<c:forEach items="${ listforumtopiccount }"
									var="listtopiccountinfo" varStatus="status2">

									<c:choose>
										<c:when test="${listinfo.id == listtopiccountinfo.id}">
											${listtopiccountinfo.topic}
										</c:when>
									</c:choose>
								</c:forEach>


							</p>
						</div>
						<!-- /TABLE ROW ITEM -->

						<!-- TABLE ROW ITEM -->
						<!--  <div class="table-row-item padded-large">
							<p class="table-text bold light">	<c:forEach items="${ listforumtopiccount }"
									var="listtopiccountinfo2" varStatus="status2">

									<c:choose>
										<c:when test="${listinfo.id == listtopiccountinfo2.id}">
											${listtopiccountinfo2.cat}
										</c:when>
									</c:choose>
								</c:forEach></p>
						</div>-->
						<!-- /TABLE ROW ITEM -->

						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<!-- FORUM POST LINKS -->
							<div class="forum-post-links">


								<c:forEach items="${ forumcatlist }" var="listcatinfo"
									varStatus="status1">

									<c:choose>
										<c:when test="${listcatinfo.forum_id == listinfo.id}">
											<div class="forum-post-link-wrap">

												<a href="${pageContext.request.contextPath}/forum/category?id=${listcatinfo.id }" class="forum-post-link">${listcatinfo.name}
													- ${listcatinfo.description}</a>

												<p class="forum-post-timestamp"></p>

											</div>
										</c:when>
									</c:choose>
								</c:forEach>
							</div>
							<!-- /FORUM POST LINKS -->
						</div>
						<!-- /TABLE ROW ITEM -->
					</div>
					<!-- /TABLE ROW -->




				</c:forEach>


				<!-- /TABLE ROW -->
			</div>
			<!-- /TABLE ROWS -->
		</div>
		<!-- /TABLE -->
	</div>

  <!-- LAYOUT CONTENT 1 -->
  <!-- /LAYOUT CONTENT 1 -->
	<%@include file="inc/footer.jsp"%>
</body>
</html>