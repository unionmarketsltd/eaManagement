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
	<div class="layout-content-full layout-item grid-limit gutter-big">
	
		
		<div class="post-open geeky-news">
          <!-- POST OPEN CONTENT -->
          <div class="post-open-content v5">
            <!-- POST OPEN BODY  -->
            <div class="post-open-body">
              <!-- TAG LIST -->
              <div class="tag-list">
                <!-- TAG ORNAMENT -->
                <a href="news-v4.html" class="tag-ornament">${topicinfo.category_name}</a>
                <!-- /TAG ORNAMENT -->
              </div>
              <!-- /TAG LIST -->
    
              <!-- POST OPEN TITLE -->
              <p class="post-open-title">${topicinfo.title}</p>
              <!-- /POST OPEN TITLE -->
    
              <!-- POST OPEN TEXT -->
              <p class="post-open-text bold">${topicinfo.description}</p>
              <!-- /POST OPEN TEXT -->
    
              <!-- POST OPEN AUTHOR WRAP -->
              <div class="post-open-author-wrap">
                <!-- USER AVATAR -->
                <a href="search-results.html">
                  <figure class="user-avatar tiny liquid imgLiquid_bgSize imgLiquid_ready" style="background-image: url(${topicinfo.create_by_img}); background-size: cover; background-position: center center; background-repeat: no-repeat;">
                    <img src="${topicinfo.create_by_img}" alt="user-04" style="display: none;">
                  </figure>
                </a>
                <!-- /USER AVATAR -->
    
                <!-- POST OPEN AUTHOR INFO -->
                <div class="post-open-author-info">
                  <!-- POST OPEN AUTHOR -->
                  <p class="post-open-author">By <a href="search-results.html" class="post-open-author-name">${topicinfo.create_by_name}</a></p>
                  <!-- /POST OPEN AUTHOR -->
    
                  <!-- POST OPEN TIMESTAMP -->
                  <p class="post-open-timestamp">${topicinfo.create_date}</p>
                  <!-- /POST OPEN TIMESTAMP -->
                </div>
                <!-- /POST OPEN AUTHOR INFO -->
    
                <!-- POST OPEN COMMENT INFO -->
                <div class="post-open-comment-info">
                  <i class="icon-bubbles post-open-comment-icon"></i>
                  <!-- POST OPEN COMMENT COUNT -->
                  <a href="#op-comments" class="post-open-comment-count">${topicinfo.reply}</a>
                  <!-- /POST OPEN COMMENT COUNT -->
    
                  <!-- POST OPEN COMMENT TEXT-->
                  <p class="post-open-comment-text">Comments</p>
                  <!-- /POST OPEN COMMENT TEXT-->
                </div>
                <!-- /POST OPEN COMMENT INFO -->
              </div>
              <div style="margin-left: 5%; margin-right: 5%; color: #777; font-family: 'Roboto', sans-serif;">
              
              ${topicinfo.content}
              
              </div>

            </div>

          </div>

        </div>

		<!-- TOPIC WRAP -->




		<div id="op-comments" class="post-comment-thread">
			<!-- SECTION TITLE WRAP -->
			<div class="section-title-wrap blue">
				<h2 class="section-title medium">Comments (${topicinfo.reply})</h2>
				<div class="section-title-separator"></div>
			</div>
			<!-- /SECTION TITLE WRAP -->
			
				<c:forEach items="${ commentlist }" var="listinfo1"
					varStatus="status1">
					
					
			<div class="post-comment" 
			
			<c:choose><c:when test="${listinfo1.depth > 0}"> style="padding: 9px 0 9px calc(100px *${ listinfo1.depth+1 });
    border-bottom: 1px dotted #80808000;"</c:when> <c:otherwise>style="border-top: 1px solid #dbdbdb !important;border-bottom:none !important"</c:otherwise></c:choose>
			
			
			>
				<!-- USER AVATAR -->
				
				
				<figure
					class="user-avatar  liquid imgLiquid_bgSize imgLiquid_ready"
					style=" left:calc(110px *${ listinfo1.depth }); background-image: url(${ listinfo1.create_by_img }); background-size: cover; background-position: center center; background-repeat: no-repeat;">
					
					<img src="${ listinfo1.create_by_img }" alt="user-07" style="display: none;">
				</figure>
				<!-- /USER AVATAR -->

				<!-- POST COMMENT USERNAME -->
				<p class="post-comment-username"> 
				<c:choose><c:when test="${listinfo1.depth > 0}"> <span style="font-size: 25px;
    color: #6969694f;">&#11172;</span></c:when></c:choose> ${ listinfo1.postownername }</p>
				<!-- /POST COMMENT USERNAME -->

				<!-- POST COMMENT TIMESTAMP -->
				<p class="post-comment-timestamp">${ listinfo1.userpost} Posts</p>
				<!-- /POST COMMENT TIMESTAMP -->

				<!-- REPORT BUTTON -->
				<a href="#" class="report-button">${ listinfo1.dayago }</a>
				<!-- /REPORT BUTTON -->

				<!-- POST COMMENT TEXT -->
				<p class="post-comment-text">${ listinfo1.comment}</p>
				<!-- /POST COMMENT TEXT -->

				<!-- POST COMMENT ACTIONS -->
				<div class="post-comment-actions">
					<!-- REPLY BUTTON -->
					<div class="reply-button bubble-ornament blue">
						<i class="icon-action-undo reply-icon"></i>
					</div>
					<!-- /REPLY BUTTON -->

					<!-- LIKE BUTTON -->
					<div class="like-button bubble-ornament hoverable cyan">
						<i class="icon-like like-icon"></i>
					</div>
					<!-- /LIKE BUTTON -->

					<!-- LIKES COUNT -->
					<p class="likes-count"> ${ listinfo1.like} Thumbs Up</p>
					<!-- /LIKES COUNT -->
				</div>
				<!-- /POST COMMENT ACTIONS -->

				
				<!-- /POST COMMENT -->
			</div>
			</c:forEach>
		</div>
		
		<div>
			<a href="#" class="button blue cloner-wrap"  style="position: relative;position: relative;
    float: right;
    width: 215px;">
        Reply to this topic
        <!-- BUTTON ORNAMENT -->
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
        </div>
      </a>
		</div>
	</div>


	


	<%@include file="inc/footer.jsp"%>
</body>
</html>