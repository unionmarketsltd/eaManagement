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
<title>Pixel Diamond | Forum</title>

</head>
<body>
	<%@include file="inc/top.jsp"%>

	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title"><%=request.getAttribute("categoryname")%></h2>
			<p class="banner-sections">
				<a style="color: white"
					href="${pageContext.request.contextPath}/forum/forum?id=<%=request.getAttribute("forumid")%>"
					class="banner-section"><%=request.getAttribute("forumname")%></a>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<a style="color: white"
					href="${pageContext.request.contextPath}/forum/category?id=<%=request.getAttribute("categoryid")%>"
					class="banner-section"><%=request.getAttribute("categoryname")%></a>
			</p>
		</div>
		<!-- /BANNER -->
	</div>

	<!-- LIVE NEWS WIDGET WRAP -->
	<div class="live-news-widget-wrap">
		<!-- LIVE NEWS WIDGET -->
		<div class="live-news-widget grid-limit">
			<!-- LIVE NEWS WIDGET STAIRS -->
			<div class="live-news-widget-stairs left red">
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
			</div>
			<!-- /LIVE NEWS WIDGET STAIRS -->

			<!-- LIVE NEWS WIDGET STAIRS -->
			<div class="live-news-widget-stairs right blue">
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
				<div class="live-news-widget-stair"></div>
			</div>
			<!-- /LIVE NEWS WIDGET STAIRS -->

			<!-- LIVE NEWS WIDGET TITLE WRAP -->
			<div class="live-news-widget-title-wrap">
				<img class="live-news-widget-icon"
					src="${pageContext.request.contextPath}/resources/forum/img/icons/live-news-icon.png"
					alt="live-news-icon">
				<p class="live-news-widget-title">Live News</p>
			</div>
			<!-- /LIVE NEWS WIDGET TITLE WRAP -->

			<!-- LIVE NEWS WIDGET TEXT WRAP -->
			<div id="lineslide-wrap1" class="live-news-widget-text-wrap">
				<p class="live-news-widget-text"></p>
			</div>
			<!-- /LIVE NEWS WIDGET TEXT WRAP -->
		</div>
		<!-- /LIVE NEWS WIDGET -->
	</div>


	<div class="layout-content-full grid-limit">
		<!-- FILTERS ROW -->
		<div class="filters-row"
			style="border-bottom: 1px solid white !important">


			<!-- FORUM ACTIONS -->
			<div class="forum-actions">
				

				<!-- BUTTON -->
				<a class="button small red popup-advanced-search-trigger">Search Forum
					</a>
				<a  href="${pageContext.request.contextPath}/forum/createtopic?cat=<%=request.getAttribute("categoryid")%>" class="button small blue ">Create
					Topic</a>
				<!-- /BUTTON -->

	
				<!-- /DROPDOWN SIMPLE WRAP -->
			</div>
			<!-- /FORUM ACTIONS -->
		</div>
		<div class="table forum-categories">

			<div class="table-rows no-color">
				<!-- TABLE ROW -->
				<div class="table-row large">
					<!-- TABLE ROW ITEM -->
					<div class="table-row-item">
						<!-- FORUM CATEGORY WRAP -->
						<div class="forum-category-wrap">
							<!-- FORUM CATEGORY IMG -->
							<a href="forum-categories.html"> <img
								class="forum-category-img"
								src="${pageContext.request.contextPath}/resources/forum/img/forum/category-10.png"
								alt="category-08">
							</a>
							<!-- /FORUM CATEGORY IMG -->

							<!-- FORUM CATEGORY TITLE -->
							<a href="forum-categories.html" class="forum-category-title"><%=request.getAttribute("name")%></a>
							<!-- /FORUM CATEGORY TITLE -->

							<!-- FORUM CATEGORY DESCRIPTION -->
							<p class="forum-category-description"><%=request.getAttribute("desc")%></p>
							<!-- /FORUM CATEGORY DESCRIPTION -->
						</div>
						<!-- /FORUM CATEGORY WRAP -->
					</div>
					<!-- /TABLE ROW ITEM -->

					<!-- TABLE ROW ITEM -->
					<div class="table-row-item padded-large">
						<p class="table-text bold light"><%=request.getAttribute("post")%>
							Topics
						</p>
					</div>
					<!-- /TABLE ROW ITEM -->

					<!-- TABLE ROW ITEM -->
					<div class="table-row-item padded-large">
						<p class="table-text bold light"><%=request.getAttribute("comment")%>
							Comments
						</p>
					</div>
					<!-- /TABLE ROW ITEM -->

					<!-- TABLE ROW ITEM -->
					<div class="table-row-item">
						<!-- FORUM POST LINKS -->
						<div class="forum-post-links">
							<!-- FORUM POST LINK WRAP -->
							<div class="forum-post-link-wrap">
								<!-- FORUM POST LINK -->
								<a href="topic.html" class="forum-post-link">Create By : <%=request.getAttribute("createby")%>
								</a>
								<!-- /FORUM POST LINK -->

								<!-- FORUM POST TIMESTAMP -->
								<p class="forum-post-timestamp">*</p>
								<!-- /FORUM POST TIMESTAMP -->
							</div>
							<!-- /FORUM POST LINK WRAP -->

							<!-- FORUM POST LINK WRAP -->
							<div class="forum-post-link-wrap">
								<!-- FORUM POST LINK -->
								<a href="topic.html" class="forum-post-link">Create Date : <%=request.getAttribute("createdate")%>
								</a>
								<!-- /FORUM POST LINK -->

								<!-- FORUM POST TIMESTAMP -->
								<p class="forum-post-timestamp">*</p>
								<!-- /FORUM POST TIMESTAMP -->
							</div>
							<!-- /FORUM POST LINK WRAP -->

							<!-- FORUM POST LINK WRAP -->
							<div class="forum-post-link-wrap">
								<!-- FORUM POST LINK -->
								<a href="topic.html" class="forum-post-link">Latest Activity
									: <%=request.getAttribute("createdate")%></a>
								<!-- /FORUM POST LINK -->

								<!-- FORUM POST TIMESTAMP -->
								<p class="forum-post-timestamp">*</p>
								<!-- /FORUM POST TIMESTAMP -->
							</div>
							<!-- /FORUM POST LINK WRAP -->
						</div>
						<!-- /FORUM POST LINKS -->
					</div>
					<!-- /TABLE ROW ITEM -->
				</div>
				<!-- /TABLE ROW -->

				<!-- TABLE ROW -->

				<!-- /TABLE ROW -->
			</div>
			<!-- /TABLE ROWS -->
		</div>

		<div class="table forum-topics">
			<!-- TABLE ROW HEADER -->
			<div class="table-row-header">
				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item left">
					<p class="table-row-header-title">Topic</p>
				</div>
				<div class="table-row-header-item left ">
					<p class="table-row-header-title">Author</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->



				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item padded-big">
					<p class="table-row-header-title">Views</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->

				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item padded-big">
					<p class="table-row-header-title">Likes</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->
<div class="table-row-header-item padded-big">
					<p class="table-row-header-title">replied</p>
				</div>


				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item padded-big">
					<p class="table-row-header-title">Last Activity</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->
			</div>
			<!-- /TABLE ROW HEADER -->

			<!-- TABLE ROWS -->
			<div class="table-rows">
				<!-- TABLE ROW -->


				<c:forEach items="${ topiclist }" var="listcatinfo"
					varStatus="status1">


					<div class="table-row large">
						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<!-- FORUM POST LINK -->
							<a href="${pageContext.request.contextPath}/forum/topic?id=${listcatinfo.id}"
								class="forum-post-link <c:choose>
										<c:when test="${listcatinfo.pin_post == 1}">pin-tag
										</c:when>
										<c:otherwise>spoiler-tag</c:otherwise>
									</c:choose>
									
									">${listcatinfo.title }</a>
							<!-- /FORUM POST LINK -->

							<!-- FORUM POST DESCRIPTION PREVIEW -->
							<p class="forum-post-description-preview forum-post-link-update">${listcatinfo.description}</p>
							<!-- /FORUM POST DESCRIPTION PREVIEW -->
						</div>
						<!-- /TABLE ROW ITEM -->

						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<!-- FORUM CATEGORY TEXT -->
							<a href="${pageContext.request.contextPath}/forum/user?id=${listcatinfo.create_by_id}" class="forum-category-text blue">
								${listcatinfo.create_by_name}</a>
							<!-- /FORUM CATEGORY TEXT -->
						</div>
						<!-- /TABLE ROW ITEM -->


						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<p class="table-text bold">${listcatinfo.views}</p>
						</div>
						<!-- /TABLE ROW ITEM -->

						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<p class="table-text bold light">${listcatinfo.likes}</p>
						</div>
						<!-- /TABLE ROW ITEM -->
<div class="table-row-item">
							<p class="table-text bold light">${listcatinfo.reply}</p>
						</div>
						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<p class="table-text bold light">${listcatinfo.last_update_date}</p>
						</div>
						<!-- /TABLE ROW ITEM -->
					</div>
					<!-- /TABLE ROW -->



				</c:forEach>
				


			</div>
		</div>
	</div>




	<%@include file="inc/footer.jsp"%>
</body>
</html>