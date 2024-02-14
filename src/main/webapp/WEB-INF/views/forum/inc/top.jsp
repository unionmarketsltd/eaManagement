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

	<div class="search-popup-form">
		<input type="text" id="top_search" class="input-line" name="search"
			placeholder="What are you looking for...?">
	</div>
	<p class="search-popup-text">Write what you are looking for and
		press enter to begin your search!</p>
</div>
<div class="window-overlay "><div class="mobile-menu-wrap ">
    <!-- CROSS ICON -->
    <svg class="cross-icon big mobile-menu-close">
      <use xlink:href="#svg-cross-big"></use>
    </svg>
    <!-- /CROSS ICON -->

    <!-- SEARCH POPUP OPEN -->
  
    <!-- /SEARCH POPUP OPEN -->

    <!-- LOGO IMG -->
    <figure class="logo-img">
      <img src="${pageContext.request.contextPath}/resources/forum/img/brand/logo.png" alt="Logo">
    </figure>
    <!-- /LOGO IMG -->

    <!-- MOBILE MENU -->
    <ul class="mobile-menu">
      <!-- MOBILE MENU ITEM -->
      <li class="mobile-menu-item">
        <a href="${pageContext.request.contextPath}/forum/index" class="mobile-menu-item-link">Home</a>
      </li>




		<c:forEach items="${ top_forumlist }" var="top_listinfo1"
				varStatus="status">
			 <li class="mobile-menu-item">
        <p class="mobile-menu-item-link pd-dropdown-handler">${top_listinfo1.name } </p> <!-- SUBMENU -->
          <svg class="arrow-icon medium">
          <use xlink:href="#svg-arrow-medium"></use>
        </svg>
				  <ul class="mobile-dropdown pd-dropdown" style="display: none;">
				   <li class="mobile-dropdown-item">
									<c:forEach items="${ top_forumcatlist }" var="top_forumcatlist1"
										varStatus="status2">
										<!-- LINK SECTION -->
										<c:choose>
											<c:when
												test="${top_listinfo1.id == top_forumcatlist1.forum_id}">
												
															<a
																href="${pageContext.request.contextPath}/forum/category?id=${top_forumcatlist1.id}"
																style="color: #363636" class="mobile-dropdown-item-link pd-dropdown-handler">${top_forumcatlist1.name}</a>
													
											
											</c:when>
										</c:choose>

										
									</c:forEach>
 </li>
</ul>
			</c:forEach>
			<li class="mobile-menu-item">
        <p class="mobile-menu-item-link pd-dropdown-handler">Trade Account </p> <!-- SUBMENU -->
          <svg class="arrow-icon medium">
          <use xlink:href="#svg-arrow-medium"></use>
        </svg>
				  <ul class="mobile-dropdown pd-dropdown" style="display: none;">
				   <li class="mobile-dropdown-item">
												
															<a
																href="${pageContext.request.contextPath}/forum/MT5AccountList"
																style="color: #363636" class="mobile-dropdown-item-link pd-dropdown-handler">FOREX MT5 ACCOUNTS</a>
													
															<a
																href="${pageContext.request.contextPath}/forum/KRAccountList"
																style="color: #363636" class="mobile-dropdown-item-link pd-dropdown-handler">해외선물 증권계좌 </a>
								
 </li>
</ul>
  
   <li class="mobile-menu-item">
        <a href="${pageContext.request.contextPath}/forum/contact" class="mobile-menu-item-link">Contact</a>
      </li>
    <!-- /MOBILE MENU -->
  </div></div>

<!-- HEADER WRAP -->
<div class="header-wrap">
	<!-- HEADER -->
	<div class="header grid-limit">
		<!-- WIDGET SELECTABLES -->

		<div class="widget-selectables">
			<!-- WIDGET OPTIONS WRAP -->
			<div class="widget-options-wrap" style="position: relative;">
				<!-- CURRENT OPTION -->
				<div id="lang-dropdown-trigger" class="current-option">
					<!-- CURRENT OPTION VALUE -->
					<div id="lang-dropdown-option-value" class="current-option-value">
						<img class="widget-option-img"
							src="/portal/resources/forum/img/flags/flag-us.png" alt="flag-us">
						<p class="widget-option-text">English</p>
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
				<div id="lang-dropdown" class="widget-options small"
					style="position: absolute; z-index: 9999; top: -18px; left: -10px; visibility: hidden; opacity: 0; transition: all 0.4s ease-in-out 0s;">
					<!-- WIDGET OPTION -->
					<div class="widget-option">
						<img class="widget-option-img"
							src="/portal/resources/forum/img/flags/flag-us.png" alt="flag-us">
						<p class="widget-option-text">English</p>
					</div>
					<!-- /WIDGET OPTION -->

					<!-- WIDGET OPTION -->
					<!--  <div class="widget-option">
              <img class="widget-option-img"src="/portal/resources/forum/img/flags/flag-es.png" alt="flag-es">
              <p class="widget-option-text">Spanish</p>
            </div>-->
					<!-- /WIDGET OPTION -->

					<!-- WIDGET OPTION -->
					<!-- <div class="widget-option">
              <img class="widget-option-img"src="/portal/resources/forum/img/flags/flag-fr.png" alt="flag-fr">
              <p class="widget-option-text">French</p>
            </div>-->
					<!-- /WIDGET OPTION -->

					<!-- WIDGET OPTION -->
					<!-- <div class="widget-option">
              <img class="widget-option-img"src="/portal/resources/forum/img/flags/flag-jp.png" alt="flag-jp">
              <p class="widget-option-text">Japanese</p>
            </div>-->
					<!-- /WIDGET OPTION -->
				</div>
				<!-- /WIDGET OPTIONS -->
			</div>
			<!-- /WIDGET OPTIONS WRAP -->

			<!-- WIDGET OPTIONS WRAP -->
			<!-- /WIDGET OPTIONS WRAP -->
		</div>
		<div class="widget-selectables">
			<!-- WIDGET OPTIONS WRAP -->
			<div class="widget-options-wrap">
				<!-- CURRENT OPTION -->


			</div>

		</div>
		<!-- /WIDGET SELECTABLES -->

		<!-- WIDGET SELECTABLES -->


		<c:if test="${s_isLogin == 1}">


			<div class="widget-selectables">
				<!-- WIDGET OPTIONS WRAP -->
				<div class="widget-options-wrap">
					<!-- CURRENT OPTION -->
					<a href="${pageContext.request.contextPath}/forum/mypage" class="current-option" style="float:right">
						<!-- CURRENT OPTION VALUE -->
						<div class="current-option-value">
							<img class="widget-option-img user-avatar micro" src="${top_photo}"
								alt="avatar-01">
							<p class="widget-option-text">${top_name}</p>
						</div>
						<!-- /CURRENT OPTION VALUE -->

						<!-- ARROW ICON -->
					
						<!-- /ARROW ICON -->
					</a>
					<!-- /CURRENT OPTION -->

				</div>



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

<div id="popup-advanced-search" class="popup-wrap mid"
	style="position: absolute; left: 50%; z-index: 100001; opacity: 1; visibility: hidden; transform: translate(0px, 0px); display: block; transition: transform 0.3s ease-in-out 0s, opacity 0.3s ease-in-out 0s, visibility 0.3s ease-in-out 0s; top: 102px; margin-left: -385px;">
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

					<input type="text" id="search_text" name="search_text"
						placeholder="What are you looking for?...">
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




<!-- NAVIGATION WRAP -->
<nav class="navigation-wrap" style="border-bottom: 1px solid #80808014;">
	<!-- NAVIGATION -->
	<div class="navigation grid-limit">
		<!-- LOGO -->
		<div class="logo">
			<!-- LOGO IMG -->
			<figure class="logo-img">
				<img
					src="${pageContext.request.contextPath}/resources/forum/img/brand/logo.png"
					alt="Logo">
			</figure>
			<!-- /LOGO IMG -->

			<!-- LOGO TEXT -->
			<div class="logo-text">
				<h2 class="logo-title">
					Inves<span class="highlight">Forum</span>
				</h2>
				<p class="logo-info">The Latest Asset News</p>
			</div>
			<!-- /LOGO TEXT -->
		</div>
		<!-- /LOGO -->



		<!-- SEARCH BUTTON -->
		<div class="search-button search-popup-open">
			<!-- SEARCH ICON -->
			<svg class="search-icon">
          <use xlink:href="#svg-search"></use>
        </svg>
			<!-- /SEARCH ICON -->
		</div>
		<!-- /SEARCH BUTTON -->




		<!-- MAIN MENU -->
		<ul class="main-menu">
			<!-- MAIN MENU ITEM -->
			<li class="main-menu-item"><a
				href="${pageContext.request.contextPath}/forum/index"
				class="main-menu-item-link">Home</a></li>

			<!-- /MAIN MENU ITEM -->
			<c:forEach items="${ top_forumlist }" var="top_listinfo"
				varStatus="status">
				<!-- Forums -->
				<!-- MAIN MENU ITEM -->
				<li class="main-menu-item"><a href="#"
					class="main-menu-item-link"> ${top_listinfo.name } <!-- SVG ARROW -->
						<svg class="arrow-icon">
              <use xlink:href="#svg-arrow"></use>
            </svg> <!-- /SVG ARROW -->
				</a> <!-- SUBMENU -->
					<ul class="submenu void">
						<!-- SUBMENU ITEM -->
						<li class="submenu-item padded">
							<!-- LINK SECTIONS WRAP -->
							<div class="link-sections-wrap">
								<!-- LINK SECTIONS -->
								<div class="link-sections">
									<c:forEach items="${ top_forumcatlist }" var="top_forumcatlist"
										varStatus="status2">
										<!-- LINK SECTION -->
										<c:choose>
											<c:when
												test="${top_listinfo.id == top_forumcatlist.forum_id}">
												<div class="link-section">
													<!-- SECTION TITLE WRAP -->

													<div class="section-title-wrap blue">
														<h2 class="section-title small">
															<a
																href="${pageContext.request.contextPath}/forum/category?id=${top_forumcatlist.id}"
																style="color: #363636">${top_forumcatlist.name}</a>
														</h2>
														<div class="section-title-separator"></div>
													</div>
													<!-- /SECTION TITLE WRAP -->

													<!-- LINK LIST -->
													<ul class="link-list medium">
														<!-- LINK LIST ITEM -->
														<li class="link-list-item"><a
															href="${pageContext.request.contextPath}/forum/category?id=${top_forumcatlist.id}">${top_forumcatlist.description}</a>
														</li>
														<!-- /LINK LIST ITEM -->

													</ul>
													<!-- /LINK LIST -->
												</div>
											</c:when>
										</c:choose>

										<!-- /LINK SECTION -->
									</c:forEach>


									<!-- LINE SEPARATOR -->
									<div class="line-separator"></div>

									<!-- NEWS ITEMS PREVIEW -->
									<div class="news-items-preview">
										<!-- POST PREVIEW -->
										<c:set var="limit" value="0" />
										<c:forEach items="${ top_listlatesttopic }"
											var="top_listlatesttopicinfo" varStatus="status3">
											<!-- LINK SECTION -->

											<c:choose>
												<c:when
													test="${top_listlatesttopicinfo.fid == top_listinfo.id}">
													<c:set var="limit" value="${limit + 1}" />
													<c:choose>
														<c:when test="${limit lt 5}">

															<div class="post-preview gaming-news">
																<!-- POST PREVIEW IMG WRAP -->
																<a
																	href="${pageContext.request.contextPath}/forum/topic?id=${top_listlatesttopicinfo.tid}">




																	<div class="post-preview-img-wrap">
																		<!-- POST PREVIEW IMG -->
																		<figure class="post-preview-img liquid">

																			<c:choose>
																				<c:when
																					test="${fn:length(top_listlatesttopicinfo.thumbnail) > 10}">
																					<img src="${top_listlatesttopicinfo.thumbnail}"
																						alt="post-09">
																				</c:when>
																				<c:otherwise>



																					<img
																						src="${pageContext.request.contextPath}/resources/forum/img/defaultimg/d_${top_listlatesttopicinfo.thumbnail}.jpg"
																						alt="post-09">

																				</c:otherwise>

																			</c:choose>


																		</figure>
																		<!-- /POST PREVIEW IMG -->
																	</div>
																</a>
																<!-- /POST PREVIEW IMG WRAP -->

																<!-- TAG ORNAMENT -->
																<a
																	href="${pageContext.request.contextPath}/forum/topic?id=${top_listlatesttopicinfo.tid}"
																	class="tag-ornament">${top_listlatesttopicinfo.category_name}</a>
																<!-- /TAG ORNAMENT -->

																<!-- POST PREVIEW TITLE -->
																<a
																	href="${pageContext.request.contextPath}/forum/topic?id=${top_listlatesttopicinfo.tid}"
																	class="post-preview-title">${top_listlatesttopicinfo.title}</a>
																<!-- POST AUTHOR INFO -->
																<div class="post-author-info-wrap">
																	<p class="post-author-info small light">
																		By <a
																			href="${pageContext.request.contextPath}/forum/topic?id=${top_listlatesttopicinfo.tid}"
																			class="post-author">${top_listlatesttopicinfo.author}</a><span
																			class="separator">|</span>${top_listlatesttopicinfo.createdate}
																	</p>
																</div>
																<!-- /POST AUTHOR INFO -->
																<!-- POST PREVIEW TEXT -->
																<p class="post-preview-text">${top_listlatesttopicinfo.descs}</p>
															</div>

														</c:when>
													</c:choose>
												</c:when>
											</c:choose>

											<!-- /LINK SECTION -->
										</c:forEach>

									</div>
						</li>
						<!-- /SUBMENU ITEM -->
					</ul> <!-- /SUBMENU --></li>
				<!-- /MAIN MENU ITEM -->
			</c:forEach>
			
			
			<li class="main-menu-item">
          <a href="#" class="main-menu-item-link">
            Trade Account
            <!-- SVG ARROW -->
            <svg class="arrow-icon">
              <use xlink:href="#svg-arrow"></use>
            </svg>
            <!-- /SVG ARROW -->
          </a>

          <!-- SUBMENU -->
          <ul class="submenu void">
            <!-- SUBMENU ITEM -->
            <li class="submenu-item padded">
              <!-- LINK SECTIONS -->
              <div class="link-sections">
                <!-- LINK SECTION -->
                <div class="link-section">
                  <!-- SECTION TITLE WRAP -->
                  <div class="section-title-wrap blue">
                    <h2 class="section-title small"><a href="${pageContext.request.contextPath}/forum/MT5AccountList" style="color: #363636">Forex MT5 Accounts</a></h2>
                    <div class="section-title-separator"></div>
                  </div>
                  <!-- /SECTION TITLE WRAP -->

                  <!-- LINK LIST -->
                  <%-- <ul class="link-list">
                    <!-- LINK LIST ITEM -->
                   
                    
                    <c:forEach items="${top_tmal}" var="toptmal" varStatus="status66">
											
								 <li class="link-list-item">
                      <a href="${pageContext.request.contextPath}/forum/viewMt5Account?id=${toptmal.login}">${toptmal.name}</a>
                    </li>			
											
											</c:forEach>
                    
                    
                   
                  </ul> --%>
                  <!-- /LINK LIST -->
                  <ul class="link-list medium">
					<!-- LINK LIST ITEM -->
					<li class="link-list-item"><a href="${pageContext.request.contextPath}/forum/MT5AccountList" style="color: #363636">Forex MT5 Account List</a>
					</li>
					<!-- /LINK LIST ITEM -->

				 </ul>
				</div>
				
											
												<div class="link-section">
													<!-- SECTION TITLE WRAP -->

													<div class="section-title-wrap blue">
														<h2 class="section-title small">
															<a href="${pageContext.request.contextPath}/forum/KRAccountList" style="color: #363636">해외선물 증권계좌</a>
														</h2>
														<div class="section-title-separator"></div>
													</div>
													<!-- /SECTION TITLE WRAP -->

													<!-- LINK LIST -->
													<ul class="link-list medium">
														<!-- LINK LIST ITEM -->
														<li class="link-list-item"><a href="${pageContext.request.contextPath}/forum/KRAccountList">해외선물 증권계좌 계좌리스트</a>
														</li>
														<!-- /LINK LIST ITEM -->

													</ul>
													<!-- /LINK LIST -->
												</div>
				
			  </div>
			  
            </li>
            <!-- /SUBMENU ITEM -->
          </ul>
          <!-- /SUBMENU -->
        </li>
			<!-- MAIN MENU ITEM -->
			<li class="main-menu-item"><a
				href="${pageContext.request.contextPath}/forum/contact"
				class="main-menu-item-link">Contact</a></li>
			<!-- /MAIN MENU ITEM -->

		</ul>
		<!-- /MAIN MENU -->
	</div>
	<!-- NAVIGATION -->
</nav>
<!-- /NAVIGATION WRAP -->
<div class="mobile-menu-pull mobile-menu-open">
    <!-- MENU PULL ICON -->
    <svg class="menu-pull-icon">
      <use xlink:href="#svg-menu-pull"></use>
    </svg>
    <!-- /MENU PULL ICON -->
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
	function search() {
		window.location.href = "${pageContext.request.contextPath}/forum/search?keyword="
				+ document.getElementById('search_text').value;

	}

	var scrolltext = "";

	document
			.getElementById("top_search")
			.addEventListener(
					"keyup",
					function(event) {
						if (event.keyCode === 13) {
							window.location.href = "${pageContext.request.contextPath}/forum/search?keyword="
									+ document.getElementById('top_search').value;

						}
					});
</script>



