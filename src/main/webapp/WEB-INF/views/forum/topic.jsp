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
				<img class="live-news-widget-icon" src="/portal/resources/forum/img/icons/live-news-icon.png" alt="live-news-icon">
				<p class="live-news-widget-title">Live News</p>
			</div>
			<!-- /LIVE NEWS WIDGET TITLE WRAP -->

			<!-- LIVE NEWS WIDGET TEXT WRAP -->
			<div id="lineslide-wrap1" class="live-news-widget-text-wrap" style="position: relative; width: 100%;">
				<p class="live-news-widget-text" style="position: absolute; right: -6483px;"><span class="xm-line-item" style="white-space: nowrap;"><a href="post-v1.html" class="link">The "Clash of Eternity" new game was just released: </a>The new game from the world famous "Eternity Studios" is back with a new adventure game with a lot of classic and puzzle elements<span class="separator"><span class="separator-bar">/</span><span class="separator-bar">/</span></span></span><span class="xm-line-item" style="white-space: nowrap;"><a href="post-v2.html" class="link">We reviewed the new Magimons game: </a>Magimons is an incredible take on classic RPGs with a new and fresh approach that includes a mindblowing soundtrack<span class="separator"><span class="separator-bar">/</span><span class="separator-bar">/</span></span></span><span class="xm-line-item" style="white-space: nowrap;"><a href="post-v3.html" class="link">We reviewed the "Guardians of the Universe" movie: </a>The latest movie from the franchise has a lot of interesting and fun stuff to look for<span class="separator"><span class="separator-bar">/</span><span class="separator-bar">/</span></span></span><span class="xm-line-item" style="white-space: nowrap;"><a href="post-v4.html" class="link">Check out some Hearte Bunny original design ideas: </a>Also, get a sneak peak of the new season looks<span class="separator"><span class="separator-bar">/</span><span class="separator-bar">/</span></span></span><span class="xm-line-item" style="white-space: nowrap;"><a href="esports-post.html" class="link">Last night the Wolves beat the Rhinos 12-10: </a>In an intense match, the Lone Wolves came out victorious. Read all about the big night here<span class="separator"><span class="separator-bar">/</span><span class="separator-bar">/</span></span></span><span class="xm-line-item" style="white-space: nowrap;"><a href="post-v1.html" class="link">The "Clash of Eternity" new game was just released: </a>The new game from the world famous "Eternity Studios" is back with a new adventure game with a lot of classic and puzzle elements<span class="separator"><span class="separator-bar">/</span><span class="separator-bar">/</span></span></span><span class="xm-line-item" style="white-space: nowrap;"><a href="post-v2.html" class="link">We reviewed the new Magimons game: </a>Magimons is an incredible take on classic RPGs with a new and fresh approach that includes a mindblowing soundtrack<span class="separator"><span class="separator-bar">/</span><span class="separator-bar">/</span></span></span><span class="xm-line-item" style="white-space: nowrap;"><a href="post-v3.html" class="link">We reviewed the "Guardians of the Universe" movie: </a>The latest movie from the franchise has a lot of interesting and fun stuff to look for<span class="separator"><span class="separator-bar">/</span><span class="separator-bar">/</span></span></span><span class="xm-line-item" style="white-space: nowrap;"><a href="post-v4.html" class="link">Check out some Hearte Bunny original design ideas: </a>Also, get a sneak peak of the new season looks<span class="separator"><span class="separator-bar">/</span><span class="separator-bar">/</span></span></span><span class="xm-line-item" style="white-space: nowrap;"><a href="esports-post.html" class="link">Last night the Wolves beat the Rhinos 12-10: </a>In an intense match, the Lone Wolves came out victorious. Read all about the big night here<span class="separator"><span class="separator-bar">/</span><span class="separator-bar">/</span></span></span></p>
			</div>
			<!-- /LIVE NEWS WIDGET TEXT WRAP -->
		</div>
		<!-- /LIVE NEWS WIDGET -->
	</div>
<div class="layout-content-full layout-item grid-limit gutter-big">
    <!-- FILTERS ROW -->
    <div class="filters-row no-space">
      <!-- BUTTON -->
      <a href="forum.html" class="button small blue forum-home-link">Forums Home</a>
      <!-- /BUTTON -->

      <!-- FORUM ACTIONS -->
      <div class="forum-actions">
        <!-- DROPDOWN SIMPLE WRAP -->
        <div class="dropdown-simple-wrap" style="position: relative;">
          <!-- CURRENT OPTION -->
          <div id="forums-search-dropdown-trigger" class="current-option">
            <!-- BUTTON -->
            <p class="button small red">Search Forums</p>
            <!-- /BUTTON -->
          </div>
          <!-- /CURRENT OPTION -->
  
          <!-- DP OPTIONS -->
          <div id="forums-search-dropdown" class="dp-options medium" style="position: absolute; z-index: 9999; top: -14.6667px; right: -6px; visibility: hidden; opacity: 0; transition: all 0.4s ease-in-out 0s;">
            <!-- FORM WRAP -->
            <form class="form-wrap">
              <!-- FORM ROW -->
              <div class="form-row">
                <!-- FORM ITEM -->
                <div class="form-item">
                  <!-- SUBMIT INPUT -->
                  <div class="submit-input red">
                    <input type="text" id="forum_search_input" name="forum_search_input" placeholder="What are you looking for?...">
                    <button class="submit-input-button">
                      <!-- ARROW ICON -->
                      <svg class="arrow-icon medium">
                        <use xlink:href="#svg-arrow-medium"></use>
                      </svg>
                      <!-- /ARROW ICON -->
                    </button>
                  </div>
                  <!-- /SUBMIT INPUT -->
                </div>
                <!-- /FORM ITEM -->
              </div>
              <!-- /FORM ROW -->

              <!-- FORM CONFIRM ROW -->
              <div class="form-confirm-row">
                <!-- CHECKBOX ITEM -->
                <div class="checkbox-item">
                  <input type="checkbox" id="f_search_cat_only" name="f_search_cat_only" value="only" checked="">
                  <!-- CHECKBOX BOX -->
                  <div class="checkbox-box blue">
                    <!-- CROSS ICON -->
                    <svg class="cross-cb-icon small">
                      <use xlink:href="#svg-cross-cb-small"></use>
                    </svg>
                    <!-- /CROSS ICON -->
                  </div>
                  <!-- CHECKBOX BOX -->
                  <label for="f_search_cat_only" class="rl-label">Search this category only</label>
                </div>
                <!-- /CHECKBOX ITEM -->

                <!-- DECORATED LINK -->
                <p class="decorated-link red popup-advanced-search-trigger">Advanced Search</p>
                <!-- /DECORATED LINK -->
              </div>
              <!-- /FORM CONFIRM ROW -->
            </form>
            <!-- FORM WRAP -->
          </div>
          <!-- /DP OPTIONS -->
        </div>
        <!-- /DROPDOWN SIMPLE WRAP -->

        <!-- BUTTON -->
        <p class="button small blue popup-create-topic-trigger">Create Topic</p>
        <!-- /BUTTON -->

      
      </div>
      <!-- /FORUM ACTIONS -->
    </div>
    <!-- /FILTERS ROW -->

    <!-- TOPIC WRAP -->
    <div class="topic-wrap">
   
      <!-- TOPIC HEADER -->
      <div class="topic-header">
        <!-- TOPIC TITLE -->
        <p class="topic-title">${topicinfo.title}</p>
        <!-- /TOPIC TITLE -->

        <!-- FORUM CATEGORY TEXT -->
        <a href="${pageContext.request.contextPath}/forum/category?id=${topicinfo.category_id }" class="forum-category-text cyan">${topicinfo.category_name}</a>
        <!-- /FORUM CATEGORY TEXT -->

        <!-- TOPIC INFO -->
        <div class="topic-info">
          
          <!-- FEATURED STAT WRAP -->
          <div class="featured-stat-wrap medium center">
            <!-- FEATURED STAT TITLE -->
            <p class="featured-stat-title">${topicinfo.reply}</p>
            <!-- /FEATURED STAT TITLE -->
    
            <!-- FEATURED STAT TEXT -->
            <p class="featured-stat-text">Replies</p>
            <!-- /FEATURED STAT TEXT -->
          </div>
          <!-- /FEATURED STAT WRAP -->

          <!-- FEATURED STAT WRAP -->
          <div class="featured-stat-wrap medium center">
            <!-- FEATURED STAT TITLE -->
            <p class="featured-stat-title">${topicinfo.views}</p>
            <!-- /FEATURED STAT TITLE -->
    
            <!-- FEATURED STAT TEXT -->
            <p class="featured-stat-text">Views</p>
            <!-- /FEATURED STAT TEXT -->
          </div>
          <!-- /FEATURED STAT WRAP -->

          <!-- FEATURED STAT WRAP -->
          <div class="featured-stat-wrap medium center">
            <!-- FEATURED STAT TITLE -->
            <p class="featured-stat-title">${topicinfo.likes}</p>
            <!-- /FEATURED STAT TITLE -->
    
            <!-- FEATURED STAT TEXT -->
            <p class="featured-stat-text">Likes</p>
            <!-- /FEATURED STAT TEXT -->
          </div>
          <!-- /FEATURED STAT WRAP -->

         
        </div>
        <!-- /TOPIC INFO -->
      </div>
      <!-- /TOPIC HEADER -->

      <!-- TOPIC BODY -->
      <div class="topic-body">
        <!-- TOPIC COMMENT -->
        <div class="topic-comment">
          <!-- TOPIC COMMENT USER -->
          <div class="topic-comment-user">
            <!-- USER AVATAR -->
            <a href="profile-summary.html">
              <img class="user-avatar medium" src="${pageContext.request.contextPath}/resources/forum/img/users/09.jpg" alt="user-09">
            </a>
            <!-- /USER AVATAR -->

            <!-- TOPIC COMMENT USER TEXT -->
            <a href="profile-activity.html" class="topic-comment-user-text">${topicinfo.author_post} Posts</a>
            <!-- /TOPIC COMMENT USER TEXT -->

            <!-- BADGE LIST -->
            <!-- /BADGE LIST -->
          </div>
          <!-- /TOPIC COMMENT USER -->

          <!-- TOPIC COMMENT CONTENT WRAP -->
          <div class="topic-comment-content-wrap">
            <!-- TOPIC COMMENT CONTENT -->
            <div class="topic-comment-content">
              <!-- TOPIC COMMENT CONTENT HEADER -->
              <div class="topic-comment-content-header">
                <!-- TOPIC COMMENT USERNAME -->
                <a href="profile-summary.html" class="topic-comment-username text-tag original-poster">${topicinfo.create_by_name}</a>
                <!-- /TOPIC COMMENT USERNAME -->

                <!-- TOPIC COMMENT INFO -->
                <div class="topic-comment-info">
                  <!-- TOPIC COMMENT TIMESTAMP -->
                  <p class="topic-comment-timestamp">${topicinfo.dayago}</p>
                  <!-- /TOPIC COMMENT TIMESTAMP -->
                </div>
                <!-- /TOPIC COMMENT INFO -->
              </div>
              <!-- /TOPIC COMMENT CONTENT HEADER -->

              <!-- TOPIC COMMENT TEXT -->
              <p class="topic-comment-text">${topicinfo.description}</p>
              <!-- /TOPIC COMMENT TEXT -->

             

             
            </div>
            <!-- /TOPIC COMMENT CONTENT -->

            <!-- TOPIC COMMENT ACTIONS -->
            <div class="topic-comment-actions">
              <!-- TOPIC ACTIONS -->
              <div class="topic-actions">
                <!-- TOPIC ACTION -->
                <div class="topic-action">
                  <!-- TOPIC ACTION ICON -->
                  <div class="topic-action-icon bubble-ornament cyan">
                    <i class="icon-like like-icon"></i>
                  </div>
                  <!-- /TOPIC ACTION ICON -->
        
                  <!-- TOPIC ACTION TEXT -->
                  <p class="topic-action-text">26</p>
                  <!-- /TOPIC ACTION TEXT -->
                </div>
                <!-- /TOPIC ACTION -->

               
              </div>
              <!-- /TOPIC ACTIONS -->

              <!-- TOPIC ACTIONS -->
              <div class="topic-actions">
                <!-- TOPIC ACTION -->
                <div class="topic-action inverted">
                  <!-- TOPIC ACTION ICON -->
                  <div class="topic-action-icon bubble-ornament hoverable blue popup-quick-reply-trigger">
                    <i class="icon-action-undo reply-icon"></i>
                  </div>
                  <!-- /TOPIC ACTION ICON -->
        
                  <!-- TOPIC ACTION TEXT -->
                  <p class="topic-action-text">5 Replies</p>
                  <!-- /TOPIC ACTION TEXT -->
                </div>
                <!-- /TOPIC ACTION -->
                
             

              
                <!-- /TOPIC ACTION -->
              </div>
              <!-- /TOPIC ACTIONS -->
            </div>
            <!-- /TOPIC COMMENT ACTIONS -->
          </div>
          <!-- /TOPIC COMMENT CONTENT WRAP -->
        </div>
        <!-- /TOPIC COMMENT -->

	<c:forEach items="${ commentlist }" var="listinfo"
					varStatus="status1">

        <!-- TOPIC COMMENT -->
        <div class="topic-comment">
          <!-- TOPIC COMMENT USER -->
          <div class="topic-comment-user">
            <!-- USER AVATAR -->
            <a href="profile-summary.html">
              <img class="user-avatar medium" src="${pageContext.request.contextPath}/resources/forum/img/users/09.jpg" alt="user-17">
            </a>
            <!-- /USER AVATAR -->

            <!-- TOPIC COMMENT USER TEXT -->
            <a href="profile-activity.html" class="topic-comment-user-text">${ listinfo.userpost } Posts</a>
            <!-- /TOPIC COMMENT USER TEXT -->

         
          </div>
          <!-- /TOPIC COMMENT USER -->

          <!-- TOPIC COMMENT CONTENT WRAP -->
          <div class="topic-comment-content-wrap">
            <!-- TOPIC COMMENT CONTENT -->
            <div class="topic-comment-content">
              <!-- TOPIC COMMENT CONTENT HEADER -->
              <div class="topic-comment-content-header">
                <!-- TOPIC COMMENT USERNAME -->
                <a href="profile-summary.html" class="topic-comment-username">${ listinfo.postownername }</a>
                <!-- /TOPIC COMMENT USERNAME -->

                <!-- TOPIC COMMENT INFO -->
                <div class="topic-comment-info">
                  <!-- TOPIC COMMENT TIMESTAMP -->
                  <p class="topic-comment-timestamp">${ listinfo.dayago }</p>
                  <!-- /TOPIC COMMENT TIMESTAMP -->
                </div>
                <!-- /TOPIC COMMENT INFO -->
              </div>
              <!-- /TOPIC COMMENT CONTENT HEADER -->

              <!-- TOPIC COMMENT TEXT -->
              <p class="topic-comment-text">${ listinfo.comment }</p>
              <!-- /TOPIC COMMENT TEXT -->
            </div>
            <!-- /TOPIC COMMENT CONTENT -->

            <!-- TOPIC COMMENT ACTIONS -->
            <div class="topic-comment-actions">
              <!-- TOPIC ACTIONS -->
              <div class="topic-actions">
                <!-- TOPIC ACTION -->
                <div class="topic-action">
                  <!-- TOPIC ACTION ICON -->
                  <div class="topic-action-icon bubble-ornament hoverable cyan">
                    <i class="icon-like like-icon"></i>
                  </div>
                  <!-- /TOPIC ACTION ICON -->
        
                  <!-- TOPIC ACTION TEXT -->
                  <p class="topic-action-text">3</p>
                  <!-- /TOPIC ACTION TEXT -->
                </div>
              
              </div>
            

              <!-- TOPIC ACTIONS -->
              <div class="topic-actions">
                <!-- TOPIC ACTION -->
                <div class="topic-action inverted">
                  <!-- TOPIC ACTION ICON -->
                  <div class="topic-action-icon bubble-ornament hoverable blue popup-quick-reply-trigger">
                    <i class="icon-action-undo reply-icon"></i>
                  </div>
                  <!-- /TOPIC ACTION ICON -->
                </div>
              
                
            
              </div>
              <!-- /TOPIC ACTIONS -->
            </div>
            <!-- /TOPIC COMMENT ACTIONS -->
          </div>
          <!-- /TOPIC COMMENT CONTENT WRAP -->
        </div>
        <!-- /TOPIC COMMENT -->
	</c:forEach>
				


  </div>
  </div>
  </div>


	<%@include file="inc/footer.jsp"%>
</body>
</html>