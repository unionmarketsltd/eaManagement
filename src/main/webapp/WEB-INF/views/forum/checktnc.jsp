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
<title>INVESFORUM | Terms &amp; Conditions</title>

<meta name="google-signin-client_id"
	content="945983721111-1v3fr2s7cn3j18ihreqrjpkk2381miir.apps.googleusercontent.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<script src="https://accounts.google.com/gsi/client" async></script>
<style>
iframe {
	margin-left: auto !important;
	margin-right: auto !important
}
</style>



</head>
<body>
<%@include file="inc/top.jsp"%>

	<!-- BANNER WRAP -->
	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">Terms and Conditions</h2>
			<p class="banner-sections">
				<span class="banner-section">Home</span>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<span class="banner-section">Terms and Conditions </span>
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

	<div class="layout-content-full">
		<!-- ERROR DISPLAY -->
		<div class="error-display grid-limit" style="padding-top:10px !important">
		
			<p class="error-title">Welcome ,<%=request.getAttribute("name")%>!</p>
		

			
			<p class="error-subtitle">Before continue, please read and accept the terms and conditions below.</p>
		
			
			<p class="error-text">
				terms and conditions here ==>"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
			</p>
			
		</div>
		
		<div class="section-actions">
		
			<button  type="button" class="button violet" onclick=" agreedtnc()"> I agreed  <!-- BUTTON ORNAMENT -->
				<div class="button-ornament">
					<!-- ARROW ICON -->
					<svg class="arrow-icon medium">
            <use xlink:href="#svg-arrow-medium"></use>
          </svg>
					<!-- /ARROW ICON -->

					<!-- CROSS ICON -->
					<svg class="cross-icon small">
            <use xlink:href="#svg-cross-small"></use>
          </svg>
					<!-- /CROSS ICON -->
				</div> <!-- /BUTTON ORNAMENT -->
			</button>
			<!-- /BUTTON -->
		</div>
		<!-- /SECTION ACTIONS -->
	</div>



	<script>
	function agreedtnc() {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/forum/agreedtnc',
					type : 'get',
					async : true,
					data : '',
					success : function(data) {
						window.location.href = "${pageContext.request.contextPath}"+data.result;
						
					},
					error : function(xhr, status) {
						
						alert("ERROR : " + data.result + xhr + " : " + status);
						return;
					}
				});
	}
	</script>


	<%@include file="inc/footer.jsp"%>
</body>
</html>