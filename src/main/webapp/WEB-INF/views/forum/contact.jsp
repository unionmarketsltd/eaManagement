<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html >
<head>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | Contact</title>



</head>
<body>
	<%@include file="inc/top.jsp"%>

	<!-- BANNER WRAP -->
	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">Contact Us</h2>
			<p class="banner-sections">
				<span class="banner-section">Home</span>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<span class="banner-section">Contact Us</span>
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

	<!-- MAP WRAP -->
	<br>
	<BR>
	
	<div class="grid3-1col centered grid-limit"
		style="margin-bottom: 115px;">
		<!-- MAP WRAP -->
		<div id="map-wrap-md" class="map-wrap medium"
			style="position: relative; overflow: hidden;">
			<div
				style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px;">
				<iframe width="100%" height="450" style="border:0" loading="lazy" allowfullscreen="" src="https://www.google.com/maps/embed/v1/place?q=5.970389999626311, 116.06466095314521&amp;key=AIzaSyDFbpYLulBfL6nw69ml0eOsjH1XSSZh5yk"></iframe>
			</div>
		</div>
		<!-- MAP WRAP -->
	</div>
	<!-- MAP WRAP -->
<br>
<BR>

	<!-- CONTACT SECTION WRAP -->
	<div class="contact-section-wrap">
		<!-- CONTACT SECTION -->
		<div class="contact-section grid-limit">
			<!-- CONTACT SECTION TITLE -->
			<p class="contact-section-title">Keep in Touch!</p>
			<!-- /CONTACT SECTION TITLE -->

			<!-- CONTACT SECTION TEXT -->
			<p class="contact-section-text">Do you have a question or wanna
				join our team? Send us an email or a message and we’ll answer you as
				fast as we can!</p>
			<!-- /CONTACT SECTION TEXT -->

			<!-- CONTACT ITEMS -->
			<div class="contact-items">
				<!-- CONTACT ITEM -->
				<div class="contact-item">
					<!-- CONTACT ITEM ICON -->
					<i class="contact-item-icon icon-envelope"></i>
					<!-- /CONTACT ITEM ICON -->

					<!-- CONTACT ITEM TITLE -->
					<p class="contact-item-title">Inquiries Contact</p>
					<!-- /CONTACT ITEM TITLE -->

					<!-- CONTACT ITEM TEXT -->
					<a href="mailto:info@pixeldiamond.com" class="contact-item-text">info@pixeldiamond.com</a>
					<!-- /CONTACT ITEM TEXT -->

					<!-- CONTACT ITEM TEXT -->
					<p class="contact-item-text">(+004) 555 1268 2779</p>
					<!-- /CONTACT ITEM TEXT -->
				</div>
				<!-- /CONTACT ITEM -->

				<!-- CONTACT ITEM -->
				<div class="contact-item">
					<!-- CONTACT ITEM ICON -->
					<i class="contact-item-icon icon-location-pin"></i>
					<!-- /CONTACT ITEM ICON -->

					<!-- CONTACT ITEM TITLE -->
					<p class="contact-item-title">Pixel Diamond HQ</p>
					<!-- /CONTACT ITEM TITLE -->

					<!-- CONTACT ITEM TEXT -->
					<p class="contact-item-text">890 W58TH ST, New York</p>
					<!-- /CONTACT ITEM TEXT -->

					<!-- CONTACT ITEM TEXT -->
					<p class="contact-item-text">NY 10001, USA</p>
					<!-- /CONTACT ITEM TEXT -->
				</div>
				<!-- /CONTACT ITEM -->

				<!-- CONTACT ITEM -->
				<div class="contact-item">
					<!-- CONTACT ITEM ICON -->
					<i class="contact-item-icon icon-game-controller"></i>
					<!-- /CONTACT ITEM ICON -->

					<!-- CONTACT ITEM TITLE -->
					<p class="contact-item-title">Work With Us!</p>
					<!-- /CONTACT ITEM TITLE -->

					<!-- CONTACT ITEM TEXT -->
					<a href="mailto:jobs@pixeldiamond.com" class="contact-item-text">jobs@pixeldiamond.com</a>
					<!-- /CONTACT ITEM TEXT -->

					<!-- CONTACT ITEM TEXT -->
					<p class="contact-item-text">HHRR - Valery Dex</p>
					<!-- /CONTACT ITEM TEXT -->
				</div>
				<!-- /CONTACT ITEM -->
			</div>
			<!-- /CONTACT ITEMS -->

			<!-- SOCIAL LINKS -->
			<div class="social-links centered">
				<!-- BUBBLE ORNAMENT -->
				<a href="#" class="bubble-ornament hoverable fb"> <!-- FACEBOOK ICON -->
					<svg class="facebook-icon">
            <use xlink:href="#svg-facebook"></use>
          </svg> <!-- /FACEBOOK ICON -->
				</a>
				<!-- /BUBBLE ORNAMENT -->

				<!-- BUBBLE ORNAMENT -->
				<a href="#" class="bubble-ornament hoverable twt"> <!-- TWITTER ICON -->
					<svg class="twitter-icon">
            <use xlink:href="#svg-twitter"></use>
          </svg> <!-- /TWITTER ICON -->
				</a>
				<!-- /BUBBLE ORNAMENT -->

				<!-- BUBBLE ORNAMENT -->
				<a href="#" class="bubble-ornament hoverable insta"> <!-- INSTAGRAM ICON -->
					<svg class="instagram-icon">
            <use xlink:href="#svg-instagram"></use>
          </svg> <!-- /INSTAGRAM ICON -->
				</a>
				<!-- /BUBBLE ORNAMENT -->

				<!-- BUBBLE ORNAMENT -->
				<a href="#" class="bubble-ornament hoverable twitch"> <!-- TWITCH ICON -->
					<svg class="twitch-icon">
            <use xlink:href="#svg-twitch"></use>
          </svg> <!-- /TWITCH ICON -->
				</a>
				<!-- /BUBBLE ORNAMENT -->

				<!-- BUBBLE ORNAMENT -->
				<a href="#" class="bubble-ornament hoverable gplus"> <!-- GPLUS ICON -->
					<svg class="gplus-icon">
            <use xlink:href="#svg-gplus"></use>
          </svg> <!-- /GPLUS ICON -->
				</a>
				<!-- /BUBBLE ORNAMENT -->

				<!-- BUBBLE ORNAMENT -->
				<a href="#" class="bubble-ornament hoverable youtube"> <!-- YOUTUBE ICON -->
					<svg class="youtube-icon">
            <use xlink:href="#svg-youtube"></use>
          </svg> <!-- /YOUTUBE ICON -->
				</a>
				<!-- /BUBBLE ORNAMENT -->
			</div>
			<!-- /SOCIAL LINKS -->

			<!-- CONTACT SECTION FORM -->
			<div class="contact-section-form">
				<!-- SECTION TITLE WRAP -->
				<div class="section-title-wrap blue">
					<h2 class="section-title medium">Send us a message</h2>
					<div class="section-title-separator"></div>
				</div>
				<!-- /SECTION TITLE WRAP -->

				<!-- FORM WRAP -->
				<form class="form-wrap">
					<!-- FORM ROW -->
					<div class="form-row">
						<!-- FORM ITEM -->
						<div class="form-item half blue">
							<label for="contact_name" class="rl-label">Your Name</label> <input
								type="text" id="contact_name" name="contact_name"
								placeholder="Enter your first name here...">
						</div>
						<!-- /FORM ITEM -->

						<!-- FORM ITEM -->
						<div class="form-item half blue">
							<label for="contact_email" class="rl-label">Your Email</label> <input
								type="text" id="contact_email" name="contact_email"
								placeholder="Enter your email here...">
						</div>
						<!-- /FORM ITEM -->
					</div>
					<!-- /FORM ROW -->

					<!-- FORM ROW -->
					<div class="form-row">
						<!-- FORM ITEM -->
						<div class="form-item blue">
							<label for="contact_subject" class="rl-label">Message
								Subject</label> <input type="text" id="contact_subject"
								name="contact_subject" placeholder="Enter the subject here...">
						</div>
						<!-- /FORM ITEM -->
					</div>
					<!-- /FORM ROW -->

					<!-- FORM ROW -->
					<div class="form-row">
						<!-- FORM ITEM -->
						<div class="form-item blue">
							<label for="contact_message" class="rl-label">Your
								Message</label>
							<textarea name="contact_message" id="contact_message"
								class="violet" placeholder="Write your message here..."></textarea>
						</div>
						<!-- /FORM ITEM -->
					</div>
					<!-- /FORM ROW -->

					<!-- SUBMIT BUTTON WRAP -->
					<div class="submit-button-wrap right">
						<!-- SUBMIT BUTTON -->
						<button class="submit-button button blue">
							Send your message
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
						<!-- /SUBMIT BUTTON -->
					</div>
					<!-- /SUBMIT BUTTON WRAP -->
				</form>
				<!-- /FORM WRAP -->
			</div>
			<!-- /CONTACT SECTION FORM -->
		</div>
		<!-- CONTACT SECTION -->

		<!-- SUBSCRIBE SECTION WRAP -->
		<div class="subscribe-section-wrap">
			<div class="subscribe-section grid-limit">
				<!-- SUBSCRIBE SECTION IMG -->
				<img class="subscribe-section-img"
					src="${pageContext.request.contextPath}/resources/forum/img/other/newsletter_people.png"
					alt="subscribe-img">
				<!-- /SUBSCRIBE SECTION IMG -->

				<!-- SUBSCRIBE SECTION INFO -->
				<div class="subscribe-section-info">
					<!-- SUBSCRIBE SECTION TITLE -->
					<p class="subscribe-section-title">Subscribe to our newsletter!</p>
					<!-- /SUBSCRIBE SECTION TITLE -->

					<!-- SUBSCRIBE SECTION TEXT -->
					<p class="subscribe-section-text">Receive the latest news,
						promos, featured videos and more</p>
					<!-- /SUBSCRIBE SECTION TEXT -->

					<!-- FORM WRAP -->
					<form class="form-wrap">
						<!-- SUBMIT INPUT -->
						<div class="submit-input medium green">
							<input type="text" id="newsletter_email" name="newsletter_email"
								placeholder="Enter your email here...">
							<button class="submit-input-button">
								<!-- ARROW ICON -->
								<svg class="arrow-icon medium">
                  <use xlink:href="#svg-arrow-medium"></use>
                </svg>
								<!-- /ARROW ICON -->
							</button>
						</div>
						<!-- /SUBMIT INPUT -->
					</form>
					<!-- /FORM WRAP -->
				</div>
				<!-- /SUBSCRIBE SECTION INFO -->
			</div>
		</div>
		<!-- /SUBSCRIBE SECTION WRAP -->
	</div>
	<!-- /CONTACT SECTION WRAP -->
	<%@include file="inc/footer.jsp"%>
</body>
<script
	src="${pageContext.request.contextPath}/resources/forum/app.bundle.min.js"></scrip

<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initBGMap"></script>
</html>