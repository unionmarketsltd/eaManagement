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
<title>Pixel Diamond | Terms &amp; Conditions</title>

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
	<div class="search-popup">
	<!-- CROSS ICON -->
	<svg class="cross-icon big close-button search-popup-close">
      <use xlink:href="#svg-cross-big"></use>
    </svg>
	<!-- /CROSS ICON -->

	<form method="GET" class="search-popup-form">
		<input type="text" id="search" class="input-line" name="search"
			placeholder="What are you looking for...?">
	</form>
	<p class="search-popup-text">Write what you are looking for and
		press enter to begin your search!</p>
</div>
<!-- /SEARCH POPUP -->

<!-- INVENTORY BAG PREVIEW -->
<!-- /INVENTORY BAG PREVIEW -->

<!-- MOBILE MENU WRAP -->
<div class="mobile-menu-wrap">
	<!-- CROSS ICON -->
	<svg class="cross-icon big mobile-menu-close">
      <use xlink:href="#svg-cross-big"></use>
    </svg>
	<!-- /CROSS ICON -->

	<!-- SEARCH POPUP OPEN -->
	<svg class="search-popup-open search-icon">
      <use xlink:href="#svg-search"></use>
    </svg>
	<!-- /SEARCH POPUP OPEN -->

	<!-- LOGO IMG -->
	<figure class="logo-img">
		<img
			src="${pageContext.request.contextPath}/resources/forum/img/brand/logo.png"
			alt="Logo">
	</figure>
	<!-- /LOGO IMG -->

	<!-- MOBILE MENU -->
	<!-- /MOBILE MENU -->
</div>
<!-- /MOBILE MENU WRAP -->

<!-- HEADER WRAP -->
<div class="header-wrap">
	<!-- HEADER -->
	<div class="header grid-limit">
		<!-- WIDGET SELECTABLES -->
		<div class="widget-selectables">
			<!-- WIDGET OPTIONS WRAP -->
			<div class="widget-options-wrap">
				<!-- CURRENT OPTION -->

				<div class="current-option">
					<!-- CURRENT OPTION VALUE -->
					<a href="${pageContext.request.contextPath}/forum/index"class="current-option-value">
						<i class="icon-home widget-option-icon"></i>
						<p class="widget-option-text">Home</p>
					</a>
					<!-- /CURRENT OPTION VALUE -->
				</div>

			</div>
			<!-- /WIDGET OPTIONS WRAP -->

			<!-- WIDGET OPTIONS WRAP -->
			<!-- /WIDGET OPTIONS WRAP -->
		</div>
		<!-- /WIDGET SELECTABLES -->

		<!-- WIDGET SELECTABLES -->


	
		
			<div class="widget-selectables">
				<!-- WIDGET OPTIONS WRAP -->
				<div class="widget-options-wrap">
					<a href="${pageContext.request.contextPath}/forum/login"
						class="button tiny blue log-button"> Login <!-- BUTTON ORNAMENT -->
						<div class="button-ornament">
							<!-- ARROW ICON -->
							<svg class="arrow-icon">
                <use xlink:href="#svg-arrow"></use>
              </svg>
							<!-- /ARROW ICON -->
						</div> <!-- /BUTTON ORNAMENT -->
					</a>
				</div>
			</div>

		



		<!-- /BUTTON -->
	</div>
	<!-- /WIDGET SELECTABLES -->
</div>

<div id="popup-advanced-search" class="popup-wrap mid" style="position: absolute; left: 50%; z-index: 100001; opacity: 1; visibility: hidden; transform: translate(0px, 0px); display: block; transition: transform 0.3s ease-in-out 0s, opacity 0.3s ease-in-out 0s, visibility 0.3s ease-in-out 0s; top: 102px; margin-left: -385px;">
    <!-- FORM BOX -->
    <div class="form-box medium">
      <!-- SECTION TITLE WRAP -->
      <div class="section-title-wrap red">
        <h2 class="section-title medium">search forum</h2>
        <div class="section-title-separator"></div>
      </div>
      <!-- /SECTION TITLE WRAP -->

      <!-- FORM WRAP -->
      <form class="form-wrap">
        <!-- BUTTON CLOSE -->
        <div class="button-close red popup-advanced-search-trigger">
          <!-- CROSS ICON -->
          <svg class="cross-icon small">
            <use xlink:href="#svg-cross-small"></use>
          </svg>
          <!-- /CROSS ICON -->
        </div>
        <!-- /BUTTON CLOSE -->

        <!-- FORM ROW -->
        <div class="form-row">
          <!-- FORM ITEM -->
          <div class="form-item red">
           
            <input type="text" id="search_text" name="search_text" placeholder="What are you looking for?...">
          </div>
          <!-- /FORM ITEM -->
        </div>


        <!-- FORM ROW -->
        <div class="form-row">
          <!-- FORM ITEM -->
          <div class="form-item">
            <label class="rl-label">Show Results</label>
      
            <!-- /CHECK RADIO LIST -->
          </div>
          <!-- /FORM ITEM -->
        </div>
        <!-- /FORM ROW -->

        <!-- FORM ACTIONS -->
        <div class="form-actions right">
          <!-- BUTTON -->
          <button class="button red" type="button" onclick="search()">
            Search Forums!
            <!-- BUTTON ORNAMENT -->
            <span class="button-ornament">
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
            </span>
            <!-- /BUTTON ORNAMENT -->
          </button>
          <!-- /BUTTON -->
        </div>
        <!-- /FORM ACTIONS -->
      </form>
      <!-- /FORM WRAP -->
    </div>
    <!-- /FORM BOX -->
  </div>
  
  
<div id="popup-create-topic" class="popup-wrap mid"
	style="position: absolute; left: 50%; z-index: 100001; opacity: 0; visibility: hidden; transform: translate(0px, 100px); display: block; transition: transform 0.3s ease-in-out 0s, opacity 0.3s ease-in-out 0s, visibility 0.3s ease-in-out 0s; top: 181px; margin-left: -385px;">
	<!-- FORM BOX -->
	<div class="form-box medium">
		<!-- SECTION TITLE WRAP -->
		<div class="section-title-wrap blue">
			<h2 class="section-title medium">Create new topic</h2>
			<div class="section-title-separator"></div>
		</div>
		<!-- /SECTION TITLE WRAP -->

		<!-- FORM WRAP -->
		<form class="form-wrap">
			<!-- BUTTON CLOSE -->
			<div class="button-close blue popup-create-topic-trigger">
				<!-- CROSS ICON -->
				<svg class="cross-icon small">
            <use xlink:href="#svg-cross-small"></use>
          </svg>
				<!-- /CROSS ICON -->
			</div>
			<!-- /BUTTON CLOSE -->

			<!-- FORM ROW -->
			<div class="form-row">
				<!-- FORM ITEM -->
				<div class="form-item half blue">
					<label for="topic_title" class="rl-label">Topic Title</label> <input
						type="text" id="topic_title" name="topic_title"
						placeholder="Enter the title here...">
				</div>
				<!-- /FORM ITEM -->

				<!-- FORM ITEM -->
				<div class="form-item half blue">
					<label for="topic_category" class="rl-label">Choose
						Category</label>
					<!-- SELECT BLOCK -->
					<div class="select-block">
						<select id="topic_category" name="topic_category">
							<option value="" hidden="">Choose the topic category</option>
							<option value="0">Movies</option>
							<option value="1">Anime</option>
							<option value="2">Manga</option>
							<option value="3">Cosplay</option>
						</select>
						<!-- ARROW ICON -->
						<svg class="arrow-icon medium">
                <use xlink:href="#svg-arrow-medium"></use>
              </svg>
						<!-- /ARROW ICON -->
					</div>
					<!-- /SELECT BLOCK -->
				</div>
				<!-- /FORM ITEM -->
			</div>
			<!-- /FORM ROW -->

			<!-- FORM ROW -->
			<div class="form-row">
				<!-- FORM ITEM -->
				<div class="form-item blue">
					<label for="topic_description" class="rl-label">Description</label>
					<textarea name="topic_description" id="topic_description"
						placeholder="Write any additional details here..."></textarea>
				</div>
				<!-- /FORM ITEM -->
			</div>
			<!-- /FORM ROW -->

			<!-- FORM ROW -->
			<div class="form-row">
				<!-- FORM ITEM -->
				<div class="form-item blue">
					<label for="topic_tags" class="rl-label">Topic Tags
						(Optional)</label> <input type="text" id="topic_tags" name="topic_tags"
						placeholder="Separate your tags with commas...">
				</div>
				<!-- /FORM ITEM -->
			</div>
			<!-- /FORM ROW -->

			<!-- FORM ACTIONS -->
			<div class="form-actions right">
				<!-- BUTTON -->
				<p class="button gray no-decoration">Discard all</p>
				<!-- /BUTTON -->

				<!-- BUTTON -->
				<button class="button blue">
					Post your topic
					<!-- BUTTON ORNAMENT -->
					<span class="button-ornament"> <!-- ARROW ICON --> <svg
							class="arrow-icon medium">
                <use xlink:href="#svg-arrow-medium"></use>
              </svg> <!-- /ARROW ICON --> <!-- CROSS ICON --> <svg
							class="cross-icon small">
                <use xlink:href="#svg-cross-small"></use>
              </svg> <!-- /CROSS ICON -->
					</span>
					<!-- /BUTTON ORNAMENT -->
				</button>
				<!-- /BUTTON -->
			</div>
			<!-- /FORM ACTIONS -->
		</form>
		<!-- /FORM WRAP -->
	</div>
	<!-- /FORM BOX -->
</div>


<script>

function search()
{
	window.location.href = "${pageContext.request.contextPath}/forum/search?keyword="+document.getElementById('search_text').value;
	
	
	}
	
var scrolltext = "";

</script>




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