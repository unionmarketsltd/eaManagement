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
		<div class="filters-row">


			<!-- FORUM ACTIONS -->
			<div class="forum-actions">
				<!-- DROPDOWN SIMPLE WRAP -->
				<div class="dropdown-simple-wrap" style="position: relative;">
					<!-- CURRENT OPTION -->
					<div id="forums-search-dropdown-trigger" class="current-option">
						<!-- BUTTON -->
						<p class="button small red">Search Forums</p>
						<!-- /BUTTON -->
					</div>
					<!-- /CURRENT OPTION -->

					<!-- DP OPTIONS -->
					<div id="forums-search-dropdown" class="dp-options medium"
						style="position: absolute; z-index: 9999; top: -14.6667px; right: -6px; visibility: hidden; opacity: 0; transition: all 0.4s ease-in-out 0s;">
						<!-- FORM WRAP -->
						<form class="form-wrap">
							<!-- FORM ROW -->
							<div class="form-row">
								<!-- FORM ITEM -->
								<div class="form-item">
									<!-- SUBMIT INPUT -->
									<div class="submit-input red">
										<input type="text" id="forum_search_input"
											name="forum_search_input"
											placeholder="What are you looking for?...">
										<button class="submit-input-button">
											<!-- ARROW ICON -->
											<svg class="arrow-icon medium">
                        <use xlink:href="#svg-arrow-medium"></use>
                      </svg>
											<!-- /ARROW ICON -->
										</button>
									</div>
									<!-- /SUBMIT INPUT -->
								</div>
								<!-- /FORM ITEM -->
							</div>
							<!-- /FORM ROW -->

							<!-- FORM CONFIRM ROW -->
							<div class="form-confirm-row">
								<!-- CHECKBOX ITEM -->
								<div class="checkbox-item">
									<input type="checkbox" id="f_search_cat_only"
										name="f_search_cat_only" value="only" checked="">
									<!-- CHECKBOX BOX -->
									<div class="checkbox-box blue">
										<!-- CROSS ICON -->
										<svg class="cross-cb-icon small">
                      <use xlink:href="#svg-cross-cb-small"></use>
                    </svg>
										<!-- /CROSS ICON -->
									</div>
									<!-- CHECKBOX BOX -->
									<label for="f_search_cat_only" class="rl-label">Search
										this category only</label>
								</div>
								<!-- /CHECKBOX ITEM -->

								<!-- DECORATED LINK -->
								<p class="decorated-link red popup-advanced-search-trigger">Advanced
									Search</p>
								<!-- /DECORATED LINK -->
							</div>
							<!-- /FORM CONFIRM ROW -->
						</form>
						<!-- FORM WRAP -->
					</div>
					<!-- /DP OPTIONS -->
				</div>
				<!-- /DROPDOWN SIMPLE WRAP -->

				<!-- BUTTON -->
				<p class="button small blue popup-create-topic-trigger">Create
					Topic</p>
				<!-- /BUTTON -->

				<!-- DROPDOWN SIMPLE WRAP -->
				<div class="dropdown-simple-wrap" style="position: relative;">
					<!-- CURRENT OPTION -->
					<div id="forums-user-dropdown-trigger" class="current-option">
						<!-- USER AVATAR WRAP -->
						<figure class="user-avatar-wrap">
							<!-- USER AVATAR -->
							<img class="user-avatar smaller"
								src="${pageContext.request.contextPath}/resources/forum/img/users/05.jpg"
								alt="user-05">
							<!-- /USER AVATAR -->

							<!-- USER AVATAR DECORATION -->
							<div class="user-avatar-decoration">
								<!-- USER AVATAR DECORATION TEXT -->
								<p class="user-avatar-decoration-text">2</p>
								<!-- /USER AVATAR DECORATION TEXT -->
							</div>
							<!-- /USER AVATAR DECORATION -->
						</figure>
						<!-- /USER AVATAR WRAP -->
					</div>
					<!-- /CURRENT OPTION -->

					<!-- DP OPTIONS -->
					<div id="forums-user-dropdown"
						class="dp-options medium no-padding-bottom"
						style="position: absolute; z-index: 9999; top: -14.6667px; right: -34px; visibility: hidden; opacity: 0; transition: all 0.4s ease-in-out 0s;">
						<!-- USER DROPDOWN -->
						<div class="user-dropdown">
							<!-- USER DROPDOWN HEADER -->
							<div class="user-dropdown-header">
								<!-- USER DROPDOWN HEADER TEXT -->
								<a href="profile-summary.html" class="user-dropdown-header-text">James_Spiegel</a>
								<!-- /USER DROPDOWN HEADER TEXT -->

								<!-- USER DROPDOWN HEADER ACTIONS -->
								<div class="user-dropdown-header-actions">
									<!-- USER DROPDOWN HEADER ACTION -->
									<a href="profile-messages.html"
										class="user-dropdown-header-action"> <i
										class="icon-envelope"></i>
									</a>
									<!-- /USER DROPDOWN HEADER ACTION -->

									<!-- USER DROPDOWN HEADER ACTION -->
									<a href="profile-settings.html"
										class="user-dropdown-header-action"> <i
										class="icon-settings"></i>
									</a>
									<!-- /USER DROPDOWN HEADER ACTION -->
								</div>
								<!-- /USER DROPDOWN HEADER ACTIONS -->
							</div>
							<!-- /USER DROPDOWN HEADER -->

							<!-- USER DROPDOWN BODY -->
							<div class="user-dropdown-body">
								<!-- NOTIFICATION ITEM -->
								<div class="notification-item">
									<!-- NOTIFICATION ITEM ICON -->
									<i class="notification-item-icon icon-action-undo"></i>
									<!-- /NOTIFICATION ITEM ICON -->

									<!-- NOTIFICATION ITEM TEXT -->
									<a href="topic.html" class="notification-item-text">3
										Replies <span class="highlight">The American league
											movie is around the corner! Here's the last trailer</span>
									</a>
									<!-- /NOTIFICATION ITEM TEXT -->
								</div>
								<!-- /NOTIFICATION ITEM -->

								<!-- NOTIFICATION ITEM -->
								<div class="notification-item">
									<!-- NOTIFICATION ITEM ICON -->
									<p class="notification-item-icon">@</p>
									<!-- /NOTIFICATION ITEM ICON -->

									<!-- NOTIFICATION ITEM TEXT -->
									<a href="topic.html" class="notification-item-text">Beardman-Returns
										<span class="highlight">Power studios announced three
											"Game of Dragons" universe pilots</span>
									</a>
									<!-- /NOTIFICATION ITEM TEXT -->
								</div>
								<!-- /NOTIFICATION ITEM -->

								<!-- NOTIFICATION ITEM -->
								<div class="notification-item">
									<!-- NOTIFICATION ITEM ICON -->
									<i class="notification-item-icon icon-action-undo read"></i>
									<!-- /NOTIFICATION ITEM ICON -->

									<!-- NOTIFICATION ITEM TEXT -->
									<a href="topic.html" class="notification-item-text">1 Reply
										<span class="highlight">Post your best GTE V online
											character photos and vote for the best</span>
									</a>
									<!-- /NOTIFICATION ITEM TEXT -->
								</div>
								<!-- /NOTIFICATION ITEM -->

								<!-- NOTIFICATION ITEM -->
								<div class="notification-item">
									<!-- NOTIFICATION ITEM ICON -->
									<i class="notification-item-icon icon-envelope"></i>
									<!-- /NOTIFICATION ITEM ICON -->

									<!-- NOTIFICATION ITEM TEXT -->
									<a href="topic.html" class="notification-item-text">Dexter
										Danvers <span class="highlight">Inquiry about the forum
											rules</span>
									</a>
									<!-- /NOTIFICATION ITEM TEXT -->
								</div>
								<!-- /NOTIFICATION ITEM -->

								<!-- NOTIFICATION ITEM -->
								<div class="notification-item">
									<!-- NOTIFICATION ITEM ICON -->
									<i class="notification-item-icon icon-like"></i>
									<!-- /NOTIFICATION ITEM ICON -->

									<!-- NOTIFICATION ITEM TEXT -->
									<a href="topic.html" class="notification-item-text">Thunder-Gamer
										<span class="highlight">The american league movie is
											around the corner! Here's the last trailer</span>
									</a>
									<!-- /NOTIFICATION ITEM TEXT -->
								</div>
								<!-- /NOTIFICATION ITEM -->

								<!-- NOTIFICATION ITEM -->
								<div class="notification-item">
									<!-- NOTIFICATION ITEM ICON -->
									<i class="notification-item-icon icon-action-undo read"></i>
									<!-- /NOTIFICATION ITEM ICON -->

									<!-- NOTIFICATION ITEM TEXT -->
									<a href="topic.html" class="notification-item-text">5
										Replies <span class="highlight">Introduce yourself and
											show us your cosplays!</span>
									</a>
									<!-- /NOTIFICATION ITEM TEXT -->
								</div>
								<!-- /NOTIFICATION ITEM -->
							</div>
							<!-- /USER DROPDOWN BODY -->

							<!-- MORE ITEMS LOADER -->
							<a href="profile-notifications.html" class="more-items-loader">
								<div class="square"></div>
								<div class="square"></div>
								<div class="square"></div>
							</a>
							<!-- /MORE ITEMS LOADER -->
						</div>
						<!-- /USER DROPDOWN -->
					</div>
					<!-- /DP OPTIONS -->
				</div>
				<!-- /DROPDOWN SIMPLE WRAP -->
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
				<div class="table-row-header-item padded-large">
					<p class="table-row-header-title">Posts</p>
				</div>
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
								<a href="forum-categories.html"> <img
									class="forum-category-img"
									src="${pageContext.request.contextPath}/resources/forum/img/forum/${listinfo.logo }"
									alt="category-02">
								</a>
								<!-- /FORUM CATEGORY IMG -->

								<!-- FORUM CATEGORY TITLE -->
								<a href="${pageContext.request.contextPath}/forum/forum?id=${listinfo.id }" class="forum-category-title">${listinfo.name }</a>
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
						<div class="table-row-item padded-large">
							<p class="table-text bold light">1987</p>
						</div>
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

												<p class="forum-post-timestamp">5m</p>

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