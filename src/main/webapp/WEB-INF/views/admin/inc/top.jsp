<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- SEARCH POPUP -->

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


	

		<!-- /BUTTON -->
	</div>
	<!-- /WIDGET SELECTABLES -->
</div>
<nav class="navigation-wrap" style="border-bottom: 1px solid #ebebeb;">
    <!-- NAVIGATION -->
    <div class="navigation grid-limit">
      <!-- LOGO -->
      <div class="logo">
        <!-- LOGO IMG -->
           <figure class="logo-img">
      <img src="${pageContext.request.contextPath}/resources/forum/img/brand/logo.png" alt="Logo">
    </figure>
        <!-- /LOGO IMG -->

        <!-- LOGO TEXT -->
        <div class="logo-text">
          <h2 class="logo-title">inves<span class="highlight">forum</span></h2>
          <p class="logo-info">ADMIN CONSOLE</p>
        </div>
        <!-- /LOGO TEXT -->
      </div>
    </div>
    <!-- NAVIGATION -->
  </nav>


