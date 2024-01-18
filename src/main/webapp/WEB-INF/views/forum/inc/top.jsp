<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- SEARCH POPUP -->
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
					<div class="current-option-value">
						<i class="icon-home widget-option-icon"></i>
						<p class="widget-option-text">Home</p>
					</div>
					<!-- /CURRENT OPTION VALUE -->
				</div>

			</div>
			<!-- /WIDGET OPTIONS WRAP -->

			<!-- WIDGET OPTIONS WRAP -->
			<!-- /WIDGET OPTIONS WRAP -->
		</div>
		<!-- /WIDGET SELECTABLES -->

		<!-- WIDGET SELECTABLES -->


		<c:if test="${s_isLogin == 1}">


			<div class="widget-selectables">
				<!-- WIDGET OPTIONS WRAP -->
				<div class="widget-options-wrap">
					<!-- CURRENT OPTION -->
					<div id="account-dropdown-trigger" class="current-option">
						<!-- CURRENT OPTION VALUE -->
						<div class="current-option-value">
							<img class="widget-option-img user-avatar micro"
								src="${pageContext.request.contextPath}/resources/forum/img/users/05.jpg"
								alt="avatar-01">
							<p class="widget-option-text">James_Spiegel</p>
						</div>
						<!-- /CURRENT OPTION VALUE -->

						<!-- ARROW ICON -->
						<svg class="arrow-icon">
              <use xlink:href="#svg-arrow"></use>
            </svg>
						<!-- /ARROW ICON -->
					</div>
					<!-- /CURRENT OPTION -->

					<!-- WIDGET OPTIONS -->
					<div id="account-dropdown" class="widget-options short linkable">
						<!-- WIDGET OPTION HEADING -->
						<div class="widget-option-heading blue">
							<p class="widget-option-text">Main Account</p>
						</div>
						<!-- /WIDGET OPTION HEADING -->

						<!-- WIDGET OPTION -->
						<a href="account-settings.html" class="widget-option">
							<p class="widget-option-text">Account Settings</p>
						</a>
						<!-- /WIDGET OPTION -->

						<!-- WIDGET OPTION -->
						<a href="#" class="widget-option">
							<p class="widget-option-text">Shipping Details</p>
						</a>
						<!-- /WIDGET OPTION -->

						<!-- WIDGET OPTION -->
						<a href="#" class="widget-option">
							<p class="widget-option-text">Billing Details</p>
						</a>
						<!-- /WIDGET OPTION -->

						<!-- WIDGET OPTION -->
						<a href="orders-history.html" class="widget-option">
							<p class="widget-option-text">Orders History</p>
						</a>
						<!-- /WIDGET OPTION -->

						<!-- WIDGET OPTION HEADING -->
						<div class="widget-option-heading red">
							<p class="widget-option-text">Pixel Forums</p>
						</div>
						<!-- /WIDGET OPTION HEADING -->

						<!-- WIDGET OPTION -->
						<a href="profile-summary.html" class="widget-option">
							<p class="widget-option-text">Summary</p>
						</a>
						<!-- /WIDGET OPTION -->

						<!-- WIDGET OPTION -->
						<a href="profile-activity.html" class="widget-option">
							<p class="widget-option-text">Activity</p>
						</a>
						<!-- /WIDGET OPTION -->

						<!-- WIDGET OPTION -->
						<a href="profile-notifications.html" class="widget-option">
							<p class="widget-option-text">Notifications</p>
						</a>
						<!-- /WIDGET OPTION -->

						<!-- WIDGET OPTION -->
						<a href="profile-messages.html" class="widget-option">
							<p class="widget-option-text">Messages</p>
						</a>
						<!-- /WIDGET OPTION -->

						<!-- WIDGET OPTION -->
						<a href="profile-badges.html" class="widget-option">
							<p class="widget-option-text">Profile Badges</p>
						</a>
						<!-- /WIDGET OPTION -->

						<!-- WIDGET OPTION -->
						<a href="profile-settings.html" class="widget-option">
							<p class="widget-option-text">Settings</p>
						</a>
						<!-- /WIDGET OPTION -->
					</div>
					<!-- /WIDGET OPTIONS -->
				</div>
				<!-- /WIDGET OPTIONS WRAP -->

				<!-- WIDGET OPTIONS WRAP -->
				<div class="widget-options-wrap">
					<!-- CURRENT OPTION -->
					<a href="wishlist.html">
						<div class="current-option">
							<!-- CURRENT OPTION VALUE -->
							<div class="current-option-value">
								<i class="icon-heart widget-option-icon"></i>
								<p class="widget-option-text">
									Wishlist <span class="quantity">(5)</span>
								</p>
							</div>
							<!-- /CURRENT OPTION VALUE -->
						</div>
					</a>
					<!-- /CURRENT OPTION -->
				</div>
				<!-- /WIDGET OPTIONS WRAP -->

				<!-- WIDGET OPTIONS WRAP -->
				<div class="widget-options-wrap">
					<!-- CURRENT OPTION -->
					<a href="product-compare.html">
						<div class="current-option">
							<!-- CURRENT OPTION VALUE -->
							<div class="current-option-value">
								<i class="icon-tag widget-option-icon"></i>
								<p class="widget-option-text">
									Compare <span class="quantity">(2)</span>
								</p>
							</div>
							<!-- /CURRENT OPTION VALUE -->
						</div>
					</a>
					<!-- /CURRENT OPTION -->
				</div>
				<!-- /WIDGET OPTIONS WRAP -->

				<!-- BUTTON -->


				<a href="${pageContext.request.contextPath}/forum/logout"
					class="button tiny red log-button"> Logout <!-- BUTTON ORNAMENT -->
					<div class="button-ornament">
						<!-- ARROW ICON -->
						<svg class="arrow-icon">
                <use xlink:href="#svg-arrow"></use>
              </svg>
						<!-- /ARROW ICON -->
					</div> <!-- /BUTTON ORNAMENT -->
				</a>
			</div>

		</c:if>
		<c:if test="${s_isLogin != 1}">
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

		</c:if>



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
            <!-- CHECK RADIO LIST -->
            <div class="check-radio-list">
              <!-- RADIO ITEM -->
              <div class="radio-item">
                <input type="radio" id="search_topic_post" name="search_results" value="search_topic_post" checked="">
                <!-- RADIO CIRCLE -->
                <div class="radio-circle red"></div>
                <!-- RADIO CIRCLE -->
                <label for="search_topic_post" class="rl-label">Topics and Posts</label>
              </div>
              <!-- /RADIO ITEM -->
          
              <!-- RADIO ITEM -->
              <div class="radio-item">
                <input type="radio" id="search_topic" name="search_results" value="search_topic">
                <!-- RADIO CIRCLE -->
                <div class="radio-circle red"></div>
                <!-- RADIO CIRCLE -->
                <label for="search_topic" class="rl-label">Only Topics</label>
              </div>
              <!-- /RADIO ITEM -->

              <!-- RADIO ITEM -->
              <div class="radio-item">
                <input type="radio" id="search_post" name="search_results" value="search_post">
                <!-- RADIO CIRCLE -->
                <div class="radio-circle red"></div>
                <!-- RADIO CIRCLE -->
                <label for="search_post" class="rl-label">Only Posts</label>
              </div>
              <!-- /RADIO ITEM -->
            </div>
            <!-- /CHECK RADIO LIST -->
          </div>
          <!-- /FORM ITEM -->
        </div>
        <!-- /FORM ROW -->

        <!-- FORM ACTIONS -->
        <div class="form-actions right">
          <!-- BUTTON -->
          <button class="button red">
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


 