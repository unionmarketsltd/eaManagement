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
			<h2 class="banner-title">my page</h2>
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
					href="${pageContext.request.contextPath}/forum/mypage"
					class="banner-section">My Page</a>
			</p>
		</div>
		<!-- /BANNER -->
	</div>

	<%@include file="inc/newsscroll.jsp"%>



	<div class="layout-content-full grid-limit">
		<div class="profile-header">
      <!-- PROFILE USER -->
      <div class="profile-user">
        <!-- USER AVATAR -->
        <img class="user-avatar big" src="${userinfo.google_image_url}" alt="user-05">
        <!-- /USER AVATAR -->

        <!-- PROFILE USER NAME -->
        <p class="profile-user-name">${userinfo.name}</p>
        <!-- /PROFILE USER NAME -->

        <!-- PROFILE USER INFO -->
        <p class="profile-user-info">${userinfo.email}</p>
           <p class="profile-user-info">Registration Date: ${userinfo.email}</p>
        <!-- /PROFILE USER INFO -->


        <!-- /BADGE LIST -->
      </div>
      <!-- /PROFILE USER -->

      <!-- BUTTON -->
     
    </div>
    <br>
    <br>
    
    <div class="section-title-wrap blue no-space">
                <h2 class="section-title medium">My Topics</h2>
                <div class="section-title-separator"></div>
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
					<p class="table-row-header-title">Likes</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item padded-big">
					<p class="table-row-header-title">Comments</p>
				</div>


				
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
						
							<c:choose>
						<c:when test="${fn:length(listcatinfo.thumbnail) > 0}">
						<a
								href="${pageContext.request.contextPath}/forum/topic?id=${listcatinfo.id}">
						<div class="titlegrid">
						
						<div class="titlegriddiv1">	<img src="${listcatinfo.thumbnail}" alt="thumbnail" width="140" height="100"></div>
						<div class="titlegriddiv2"><div
								
								class="forum-post-link <c:choose>
										<c:when test="${listcatinfo.pin_post == 1}">pin-tag
										</c:when>
										<c:otherwise>spoiler-tag</c:otherwise>
									</c:choose>
									
									">${listcatinfo.title }</div></div>
						<div class="titlegriddiv3"><p class="forum-post-description-preview forum-post-link-update">${listcatinfo.description}</p></div>
						</div>
						</a>
						</c:when>
						<c:otherwise>
						<a
								href="${pageContext.request.contextPath}/forum/topic?id=${listcatinfo.id}"
								class="forum-post-link <c:choose>
										<c:when test="${listcatinfo.pin_post == 1}">pin-tag
										</c:when>
										<c:otherwise>spoiler-tag</c:otherwise>
									</c:choose>
									
									">${listcatinfo.title }</a>
							<!-- /FORUM POST LINK -->

							<!-- FORUM POST DESCRIPTION PREVIEW -->
							<p class="forum-post-description-preview forum-post-link-update">${listcatinfo.description}</p>
							
							
						</c:otherwise>
						</c:choose>
							<!-- FORUM POST LINK -->
							
							<!-- /FORUM POST DESCRIPTION PREVIEW -->
						</div>
						<!-- /TABLE ROW ITEM -->

						<!-- TABLE ROW ITEM -->
				
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
			
					</div>
					<!-- /TABLE ROW -->



				</c:forEach>



			</div>

		</div>
		
		
		
		
		 <br>
    <br>
    
    <div class="section-title-wrap blue no-space">
                <h2 class="section-title medium">My Commented Topics</h2>
                <div class="section-title-separator"></div>
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
					<p class="table-row-header-title">Likes</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item padded-big">
					<p class="table-row-header-title">Comments</p>
				</div>


				
			</div>
			<!-- /TABLE ROW HEADER -->

			<!-- TABLE ROWS -->
			<div class="table-rows">
				<!-- TABLE ROW -->


				<c:forEach items="${ commentedtopiclist }" var="listcatinfo1"
					varStatus="status1">


					<div class="table-row large">
						<!-- TABLE ROW ITEM -->
						
						
					
					
						
						
						<div class="table-row-item">
						
							<c:choose>
						<c:when test="${fn:length(listcatinfo1.thumbnail) > 0}">
						<a
								href="${pageContext.request.contextPath}/forum/topic?id=${listcatinfo1.id}">
						<div class="titlegrid">
						
						<div class="titlegriddiv1">	<img src="${listcatinfo1.thumbnail}" alt="thumbnail" width="140" height="100"></div>
						<div class="titlegriddiv2"><div
								
								class="forum-post-link <c:choose>
										<c:when test="${listcatinfo1.pin_post == 1}">pin-tag
										</c:when>
										<c:otherwise>spoiler-tag</c:otherwise>
									</c:choose>
									
									">${listcatinfo1.title }</div></div>
						<div class="titlegriddiv3"><p class="forum-post-description-preview forum-post-link-update">${listcatinfo1.description}</p></div>
						</div>
						</a>
						</c:when>
						<c:otherwise>
						<a
								href="${pageContext.request.contextPath}/forum/topic?id=${listcatinfo1.id}"
								class="forum-post-link <c:choose>
										<c:when test="${listcatinfo1.pin_post == 1}">pin-tag
										</c:when>
										<c:otherwise>spoiler-tag</c:otherwise>
									</c:choose>
									
									">${listcatinfo1.title }</a>
							<!-- /FORUM POST LINK -->

							<!-- FORUM POST DESCRIPTION PREVIEW -->
							<p class="forum-post-description-preview forum-post-link-update">${listcatinfo1.description}</p>
							
							
						</c:otherwise>
						</c:choose>
							<!-- FORUM POST LINK -->
							
							<!-- /FORUM POST DESCRIPTION PREVIEW -->
						</div>
						<!-- /TABLE ROW ITEM -->

						<!-- TABLE ROW ITEM -->
				
						<!-- /TABLE ROW ITEM -->


						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<p class="table-text bold">${listcatinfo1.views}</p>
						</div>
						<!-- /TABLE ROW ITEM -->

						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<p class="table-text bold light">${listcatinfo1.likes}</p>
						</div>
						<!-- /TABLE ROW ITEM -->
						<div class="table-row-item">
							<p class="table-text bold light">${listcatinfo1.reply}</p>
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