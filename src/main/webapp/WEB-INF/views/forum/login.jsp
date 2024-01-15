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
<title>Pixel Diamond | Login &amp; Register</title>

<meta name="google-signin-client_id"
	content="945983721111-1v3fr2s7cn3j18ihreqrjpkk2381miir.apps.googleusercontent.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<script src="https://accounts.google.com/gsi/client" async></script>
<style>
iframe {

margin-left:auto !important;
margin-right:auto !important
}
</style>



</head>
<body>
	<%@include file="inc/top.jsp"%>

	<!-- BANNER WRAP -->
	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">Login </h2>
			<p class="banner-sections">
				<span class="banner-section">Home</span>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<span class="banner-section">Login </span>
			</p>
		</div>
		<!-- /BANNER -->
	</div>
	<!-- /BANNER WRAP -->

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
	<!-- /LIVE NEWS WIDGET WRAP -->

	<!-- LAYOUT CONTENT FULL -->
	
			

				<!-- TAB BODY -->
				<div class="tab-body">
					<!-- TAB ITEM -->
					<div class="tab-item">
						<!-- FORM BOX -->
						<div class="form-box">
							<!-- SECTION TITLE WRAP -->
							<div class="section-title-wrap blue">
								<h2 class="section-title medium">Login to your account With
									Google</h2>
								<div class="section-title-separator"></div>
							</div>
							<!-- /SECTION TITLE WRAP -->

							<!-- FORM WRAP -->
							<form class="form-wrap">
								<!-- FORM ROW -->
								<div class="form-row">
									<!-- FORM ITEM -->
									<div class="form-item blue">
										<div id="signinwithgoogle" style="text-align: center">


											<div id="g_id_onload"
												data-client_id="945983721111-1v3fr2s7cn3j18ihreqrjpkk2381miir.apps.googleusercontent.com"
												data-context="signin" data-ux_mode="popup"
												data-callback="handleCredentialResponse" data-nonce=""
												data-auto_prompt="false"></div>

											<div class="g_id_signin" data-type="standard"
												data-shape="pill" data-theme="filled_blue"
												data-text="signin_with" data-size="large"
												data-logo_alignment="left"></div>
										</div>
									</div>
									<!-- /FORM ITEM -->
								</div>
								<!-- /FORM ROW -->

								<!-- FORM ROW -->

								<!-- /FORM ACTIONS -->
							</form>
							<!-- /FORM WRAP -->
						</div>
						<!-- /FORM BOX -->
					</div>
					<!-- /TAB ITEM -->
				</div>
				<!-- /TAB BODY -->
		

	<script src="${pageContext.request.contextPath}/resources/forum/js/googleoauth/googleoauth.js"></script>
	<%@include file="inc/footer.jsp"%>
</body>
</html>