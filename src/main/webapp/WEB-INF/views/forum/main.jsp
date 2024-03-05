<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="inc/session.jsp"%>
<html >
<head>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | Forum</title>

</head>
<body>
	<%@include file="inc/top.jsp"%>

	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">Main Forums</h2>
			<p class="banner-sections">
				<span class="banner-section">Home</span>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<span class="banner-section">Main Forums</span>
			</p>
		</div>
		<!-- /BANNER -->
	</div>
<%@include file="inc/newsscroll.jsp"%>
	

	<div class="layout-content-full grid-limit">
		<!-- FILTERS ROW -->
		<div class="filters-row">


			<!-- FORUM ACTIONS -->
			<div class="forum-actions">
				<!-- DROPDOWN SIMPLE WRAP -->
				<!-- /DROPDOWN SIMPLE WRAP -->

				<!-- BUTTON -->
				
				
				<p class="button small red popup-advanced-search-trigger">Search Forum
					</p>
				<!-- <p class="button small blue popup-create-topic-trigger">Create
					Topic</p> -->
			
			</div>
			<!-- /FORUM ACTIONS -->
		</div>
		<!-- /FILTERS ROW -->

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

	<%@include file="inc/footer.jsp"%>
</body>
</html>