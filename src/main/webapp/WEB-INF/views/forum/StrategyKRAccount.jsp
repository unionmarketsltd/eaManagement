<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en-kr">
<head>
<%@include file="inc/session.jsp"%>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | Home</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
        // Wait for the DOM content to be fully loaded
        document.addEventListener("DOMContentLoaded", function() {
            // Display the body content once everything is loaded
            document.body.style.display = "block";
        });
    </script>

</head>
<body style="display: none">
	<%@include file="inc/top.jsp"%>

	<!-- BANNER WRAP -->

	<!-- BANNER SLIDER -->
	<!-- /BANNER SLIDER -->


	<div class="banner-wrap gaming-news cloner-wrap-3"
		data-title="Code Copied<br>to Clipboard!" style="position: relative;">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">${name}</h2>
			<%-- <p class="banner-sections">
				<span class="banner-section">Trade Account</span>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
            <use xlink:href="#svg-arrow"></use>
          </svg>
				<!-- /ARROW ICON -->
				<span class="banner-section">${accountid} </span>
			</p> --%>
		</div>
		<!-- /BANNER -->
		<div class="xm-tooltip v2 red medium"
			style="white-space: nowrap; position: absolute; z-index: 99999; top: -58px; left: 50%; margin-left: -58.5px; visibility: hidden; opacity: 0; transform: scale(0); transition: all 0.3s ease-in-out 0s;">
			<p class="xm-tooltip-text">
				Code Copied<br>to Clipboard!
			</p>
		</div>
	</div>

	<%@include file="inc/newsscroll.jsp"%>

	<div class="layout-content-full v2 grid-limit layout-item gutter-big">
	

		<div class="widget-item">
			<!-- SECTION TITLE WRAP -->
			<div class="section-title-wrap violet no-space">
				<h2 class="section-title medium">Account Overview</h2>
				<div class="section-title-separator"></div>
			</div>
			<!-- /SECTION TITLE WRAP -->

			<!-- TAB WRAP -->
			<div class="tab-wrap">
				<!-- TAB BODY -->
				<div class="tab-body">
					<!-- TAB ITEM -->
					<div class="tab-item">
						<!-- WIDGET TEAM OVERVIEW -->
						<div class="widget-team-overview">
							<!-- TEAM OVERVIEW -->
							<div class="team-overview">


								<!-- OVERVIEW INFO WRAP -->
								<div class="overview-info-wrap" style="margin: auto">
									<!-- OVERVIEW INFO -->
									<div class="overview-info">
										<!-- OVERVIEW INFO ITEM -->
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">시스템명</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text">${name}</p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
									</div>
									<div class="overview-info">
										<!-- /OVERVIEW INFO ITEM -->

										<!-- OVERVIEW INFO ITEM -->
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">전략유형</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text">${strategytype}</p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<!-- /OVERVIEW INFO ITEM -->

									</div>
									<div class="overview-info">
										<!-- /OVERVIEW INFO ITEM -->

										<!-- OVERVIEW INFO ITEM -->
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">설정일</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text">${startdate}</p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<!-- /OVERVIEW INFO ITEM -->

									</div>
									<div class="overview-info">
										<!-- /OVERVIEW INFO ITEM -->

										<!-- OVERVIEW INFO ITEM -->
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">수익률</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text">
												${profitrate}%
											</p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
									</div>
									
									<div class="overview-info">
										<!-- /OVERVIEW INFO ITEM -->

										<!-- OVERVIEW INFO ITEM -->
										<div class="overview-info-item">
											<!-- OVERVIEW INFO ITEM TITLE -->
											<p class="overview-info-item-title">설명</p>
											<!-- /OVERVIEW INFO ITEM TITLE -->

											<!-- OVERVIEW INFO ITEM TEXT -->
											<p class="overview-info-item-text">${description}</p>
											<!-- /OVERVIEW INFO ITEM TEXT -->
										</div>
										<!-- /OVERVIEW INFO ITEM -->

									</div>
									
								</div>
								<!-- ARC RATE WRAP -->
								<!-- /ARC RATE WRAP -->
							</div>
							<!-- /TEAM OVERVIEW -->
						</div>
						<!-- /WIDGET TEAM OVERVIEW -->
					</div>
					<!-- /TAB ITEM -->
				</div>
				<!-- /TAB BODY -->

				<!-- TAB HEADER -->
				<!-- /TAB HEADER -->
			</div>
			<!-- /TAB WRAP -->
		</div>

			<!-- SECTION TITLE WRAP -->
			<div class="section-title-wrap violet no-space">
				<h2 class="section-title medium">Strategy</h2>
				<div class="section-title-separator"></div>
			</div>
			<!-- /SECTION TITLE WRAP -->
			
		<div
			style="margin-left: 5%; margin-right: 5%; color: #777; font-family: 'Roboto', sans-serif;">

			${content}</div>






	</div>

	<!-- LAYOUT CONTENT 1 -->
	<!-- /LAYOUT CONTENT 1 -->
	<%@include file="inc/footer.jsp"%>
</body>
</html>