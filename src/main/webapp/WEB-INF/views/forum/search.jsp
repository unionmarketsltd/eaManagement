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
<title>INVESFORUM | Search</title>

</head>
<body>
	<%@include file="inc/top.jsp"%>

	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">Search Result</h2>
			<p class="banner-sections">
				<div style="color: white; text-align:center; font-family: 'Exo', sans-serif;" class="banner-section"><%=request.getAttribute("searchfor")%></div>
			</p>
		</div>
		<!-- /BANNER -->
	</div>

	<%@include file="inc/newsscroll.jsp"%>


	<div class="layout-content-full grid-limit">
		
		

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


				<c:forEach items="${ resultlist }" var="listcatinfo"
					varStatus="status1">


					<div class="table-row large">
						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<!-- FORUM POST LINK -->
							<a href="${pageContext.request.contextPath}/forum/topic?id=${listcatinfo.id}"
								class="forum-post-link spoiler-tag">${listcatinfo.category_name } > ${listcatinfo.title }</a>
							<!-- /FORUM POST LINK -->

							<!-- FORUM POST DESCRIPTION PREVIEW -->
							<p class="forum-post-description-preview forum-post-link-update">${listcatinfo.description}</p>
							<!-- /FORUM POST DESCRIPTION PREVIEW -->
						</div>
						<!-- /TABLE ROW ITEM -->

						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<!-- FORUM CATEGORY TEXT -->
							<div class="forum-category-text blue">
								${listcatinfo.create_by}</div>
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
						
						</div>
						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<p class="table-text bold light">${listcatinfo.create_date}</p>
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