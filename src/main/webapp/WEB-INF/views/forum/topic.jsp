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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
						<a
							href="${pageContext.request.contextPath}/forum/category?id=${topicinfo.category_id}"
							class="tag-ornament">${topicinfo.category_name}</a>
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
							<figure
								class="user-avatar tiny liquid imgLiquid_bgSize imgLiquid_ready"
								style="background-image: url(${topicinfo.create_by_img}); background-size: cover; background-position: center center; background-repeat: no-repeat;">
								<img src="${topicinfo.create_by_img}" alt="user-04"
									style="display: none;">
							</figure>
						</a>
						<!-- /USER AVATAR -->

						<!-- POST OPEN AUTHOR INFO -->
						<div class="post-open-author-info">
							<!-- POST OPEN AUTHOR -->
							<p class="post-open-author">
								By <a href="search-results.html" class="post-open-author-name">${topicinfo.create_by_name}</a>
							</p>
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

						<div class="post-open-comment-info" style="margin-left: 18px">
							<i class="fa fa-heart post-open-comment-icon" aria-hidden="true"
								style="color: #f30a5c; font-size: 36px;"></i>

							<!-- POST OPEN COMMENT COUNT -->
							<a href="#op-comments" class="post-open-comment-count">${topicinfo.totallikes}</a>
							<!-- /POST OPEN COMMENT COUNT -->

							<!-- POST OPEN COMMENT TEXT-->
							<p class="post-open-comment-text">Likes</p>
							<!-- /POST OPEN COMMENT TEXT-->
						</div>
						<c:choose>
							<c:when test="${isallowedit eq 1}">
								<a
									href="${pageContext.request.contextPath}/forum/edittopic?id=${topicinfo.id}"
									class="post-open-comment-info"
									style="margin-left: 21px; margin-top: 3px"> <i
									class="fa fa-edit post-open-comment-icon" aria-hidden="true"
									style="color: #80808073; font-size: 22px;"></i>


								</a>


								<a href="#" onclick="deletepost()"
									class="post-open-comment-info" style="margin-left: -9px"> <i
									class="fa fa-trash post-open-comment-icon" aria-hidden="true"
									style="color: #80808073; font-size: 23px;"></i> <!-- POST OPEN COMMENT COUNT -->



								</a>

								<script>
								
								function deletethistopic() {
									

									$
											.ajax({
												url : '${pageContext.request.contextPath}/forum/api/deletetopic',
												type : 'post',
												datatype : "application/json",
												contentType : "application/json",
												async : true,
												data : '{"id":"' + ${topicinfo.id} + '" , "cid":"' + ${topicinfo.category_id} + '"}',
												success : function(data) {
													console.log(data);
													const jobj = JSON.parse(data.result);

													window.location.href = "${pageContext.request.contextPath}/forum"
															+ jobj.redirect;
												},

												error : function(xhr, status) {
													alert("ERROR : " + xhr + " : " + status);

													return;
												}
											});
								}
								
								
								
								function deletepost()
								{
									
							            var userResponse = confirm("Do you want to delete this topic?");
							            
							            if (userResponse) {
							            	deletethistopic();
							            } else {
							              
							            }
							        }
								
								
								
								</script>



							</c:when>
						</c:choose>
						<!-- /POST OPEN COMMENT INFO -->
					</div>
					<div
						style="margin-left: 5%; margin-right: 5%; color: #777; font-family: 'Roboto', sans-serif;">

						${topicinfo.content}</div>

				</div>

			</div>

		</div>

		<!-- TOPIC WRAP -->




		<div id="op-comments" class="post-comment-thread">
			<!-- SECTION TITLE WRAP -->
			<div class="section-title-wrap blue">
				<h2 class="section-title medium">Comments (${topicinfo.reply})</h2>



				<button type="button"
					class="button blue cloner-wrap popup-quick-reply-trigger"
					onclick="quickreply('t','Ng mingfung','https://lh3.googleusercontent.com/a/ACg8ocLEDhkqXsmJnfw5FH_3OHfVWY-lCOtU_iKQL9tnxGIqnA=s96-c','how to trade EURUSD','','')"
					style="position: relative; position: relative; float: right; width: 215px; margin-top: -36px;">
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
				</button>

				<c:choose>
					<c:when test="${isuserlike eq 0}">
						<button type="button" class="button gray cloner-wrap" id="likebtn"
							onclick="likethistopic('Y')"
							style="position: relative; position: relative; float: right; width: 215px; margin-top: -36px; margin-right: 10px">
							<span id="likebtntext">click to like this </span>
							<div class="button-ornament">
								<!-- ARROW ICON -->
								<div class="arrow-icon medium">
									<i class="fa fa-heart" aria-hidden="true"
										style="margin-left: -4px"></i>
								</div>
								<!-- /ARROW ICON -->

								<!-- CROSS ICON -->
								<svg class="cross-icon small">
            <use xlink:href="#svg-cross-small"></use>
          </svg>
								<!-- /CROSS ICON -->
							</div>
						</button>
					</c:when>
					<c:otherwise>
						<button type="button" class="button red cloner-wrap" id="likebtn"
							onclick="likethistopic('N')"
							style="position: relative; position: relative; float: right; width: 215px; margin-top: -36px; margin-right: 10px">
							<span id="likebtntext">i liked this topic </span>
							<div class="button-ornament">
								<!-- ARROW ICON -->
								<div class="arrow-icon medium">
									<i class="fa fa-heart" aria-hidden="true"
										style="margin-left: -4px"></i>
								</div>
								<!-- /ARROW ICON -->

								<!-- CROSS ICON -->
								<svg class="cross-icon small">
            <use xlink:href="#svg-cross-small"></use>
          </svg>
								<!-- /CROSS ICON -->
							</div>
						</button>
					</c:otherwise>
				</c:choose>



				<a
					href="${pageContext.request.contextPath}/forum/category?id=${topicinfo.category_id}"
					class="button yellow cloner-wrap "
					onclick="quickreply('t','Ng mingfung','https://lh3.googleusercontent.com/a/ACg8ocLEDhkqXsmJnfw5FH_3OHfVWY-lCOtU_iKQL9tnxGIqnA=s96-c','how to trade EURUSD','','')"
					style="position: relative; position: relative; float: right; width: 215px; margin-top: -36px; margin-right: 10px">
					Back to category list <!-- BUTTON ORNAMENT -->
					<div class="button-ornament">
						<!-- ARROW ICON -->
						<div class="arrow-icon medium">
							<i class="fa fa-arrow-left" aria-hidden="true"
								style="margin-left: -4px"></i>
						</div>
						<!-- /ARROW ICON -->

						<!-- CROSS ICON -->
						<svg class="cross-icon small">
            <use xlink:href="#svg-cross-small"></use>
          </svg>
						<!-- /CROSS ICON -->
					</div>
				</a>




				<div class="section-title-separator"></div>
			</div>
			<!-- /SECTION TITLE WRAP -->

			<c:forEach items="${ commentlist }" var="listinfo1"
				varStatus="status1">


				<div class="post-comment"
					<c:choose><c:when test="${listinfo1.depth > 0}"> style="padding: 9px 0 9px calc(100px *${ listinfo1.depth+1 });
    border-bottom: 1px dotted #80808000;"</c:when> <c:otherwise>style="border-top: 1px solid #dbdbdb !important;border-bottom:none !important"</c:otherwise></c:choose>>
					<!-- USER AVATAR -->


					<figure
						class="user-avatar  liquid imgLiquid_bgSize imgLiquid_ready"
						style=" left:calc(100px *${ listinfo1.depth }); background-image: url(${ listinfo1.create_by_img }); background-size: cover; background-position: center center; background-repeat: no-repeat;">

						<img src="${ listinfo1.create_by_img }" alt="user-07"
							style="display: none;">
					</figure>
					<!-- /USER AVATAR -->

					<!-- POST COMMENT USERNAME -->
					<p class="post-comment-username">
						<c:choose>
							<c:when test="${listinfo1.depth > 0}">
								<span style="font-size: 25px; color: #6969694f;">&#11172;</span>
							</c:when>
						</c:choose>
						${ listinfo1.postownername }
					</p>
					<!-- /POST COMMENT USERNAME -->

					<!-- POST COMMENT TIMESTAMP -->
					<!-- <p class="post-comment-timestamp">${ listinfo1.userpost}Posts</p> -->
					<!-- /POST COMMENT TIMESTAMP -->

					<!-- REPORT BUTTON -->
					<a href="#" class="report-button">${ listinfo1.dayago }</a>
					<!-- /REPORT BUTTON -->

					<!-- POST COMMENT TEXT -->
					<p class="post-comment-text">${ listinfo1.comment}</p>
					<!-- /POST COMMENT TEXT -->

					<!-- POST COMMENT ACTIONS -->
					<div class="post-comment-actions">

						<div
							class="topic-action-icon bubble-ornament hoverable blue popup-quick-reply-trigger"
							onclick="quickreply('c','${ listinfo1.postownername }','${ listinfo1.create_by_img }',' ${ listinfo1.comment}','${ listinfo1.id}','${ listinfo1.depth}')">
							<i class="icon-action-undo reply-icon"></i>
						</div>

						<!-- LIKE BUTTON -->

						<c:forEach items="${ tcullist }" var="tcullistinfo"
							varStatus="status4">
							<c:choose>
								<c:when test="${tcullistinfo.cid eq listinfo1.id }">
									<div
										class="like-button bubble-ornament
									
									<c:if test="${tcullistinfo.stat eq 1}">
									
									</c:if>
									<c:if test="${tcullistinfo.stat ne 1}">
									hoverable
								</c:if>cyan"
										id="comment_${tcullistinfo.cid}"
										onclick="likecomment('${listinfo1.id}','<c:if test="${tcullistinfo.stat eq 1}">N</c:if><c:if test="${tcullistinfo.stat ne 1}">Y</c:if>')">
										<i class="icon-like like-icon"></i>
									</div>
								</c:when>






							</c:choose>
						</c:forEach>



						<c:forEach items="${ topiccommentlikeslist }" var="likelistinfo"
							varStatus="status4">
							<c:choose>
								<c:when test="${likelistinfo.cid eq listinfo1.id }">
									<p class="likes-count" id="likecount_${likelistinfo.cid}">${ likelistinfo.likecount}</p><p class="likes-count"  style="margin-left:3px !important"> Likes</p>
								</c:when>






							</c:choose>
						</c:forEach>

						<!-- /LIKE BUTTON -->

						<!-- LIKES COUNT -->
						<!--  <p class="likes-count">${ listinfo1.like}ThumbsUp</p>-->
						<!-- /LIKES COUNT -->
					</div>
					<!-- /POST COMMENT ACTIONS -->

					<!-- /POST COMMENT -->
				</div>
			</c:forEach>
		</div>

		<div style="border-top: 1px dotted grey; padding-top: 19px;">
			<button type="button"
				class="button blue cloner-wrap popup-quick-reply-trigger"
				onclick="quickreply('t','${topicinfo.create_by_name}','${topicinfo.create_by_img}','${topicinfo.title}','${ listinfo1.id}','${ listinfo1.depth}')"
				style="position: relative; position: relative; float: right; width: 215px;">
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
			</button>
		</div>
	</div>


	<div id="popup-quick-reply" class="popup-wrap full"
		style="position: fixed; left: 50%; z-index: 100001; opacity: 0; visibility: hidden; transform: translate(0px, 0px); display: block; transition: transform 0.3s ease-in-out 0s, opacity 0.3s ease-in-out 0s, visibility 0.3s ease-in-out 0s; top: 501px; margin-left: -685.5px;">
		<!-- QUICK FORM WRAP -->
		<div class="quick-form-wrap">
			<!-- QUICK FORM -->
			<div class="quick-form grid-limit">
				<!-- SECTION TITLE WRAP -->
				<div class="section-title-wrap blue">
					<h2 class="section-title medium" id="replytype"></h2>
					<div class="section-title-separator"></div>
				</div>
				<!-- /SECTION TITLE WRAP -->

				<!-- TOPIC COMMENT REPLY USER -->
				<div class="topic-comment-reply-user">
					<!-- TOPIC COMMENT REPLY ICON -->
					<i class="topic-comment-reply-icon icon-action-redo"></i>
					<!-- /TOPIC COMMENT REPLY ICON -->

					<!-- USER AVATAR -->
					<img class="user-avatar tiny" id="replytoimg"
						src="img/users/09.jpg" alt="user-09">
					<!-- /USER AVATAR -->

					<!-- TOPIC COMMENT REPLY NAME -->
					<p class="topic-comment-reply-name" id="replyto">Eli-Valentine1890</p>
					<!-- /TOPIC COMMENT REPLY NAME -->
				</div>
				<!-- /TOPIC COMMENT REPLY USER -->


				<p id="replytooripost" style="margin-left: 33px"></p>
				<br> <br>

				<!-- FORM WRAP -->
				<form class="form-wrap">
					<!-- FORM ROW -->
					<div class="form-row">
						<!-- FORM ITEM -->
						<div class="form-item blue">
							<label for="quick_reply_text" class="rl-label">Write your
								reply</label>
							<textarea name="quick_reply_text" id="quick_reply_text"
								placeholder="Write your reply here..."></textarea>
						</div>
						<!-- /FORM ITEM -->
					</div>
					<!-- /FORM ROW -->

					<!-- FORM ACTIONS -->
					<div class="form-actions right">
						<!-- BUTTON -->
						<p class="button gray no-decoration popup-quick-reply-trigger">Discard
							all</p>
						<!-- /BUTTON -->

						<!-- BUTTON -->
						<button class="button blue" type="button" onclick="postreply()">
							<span id="replybtn"></span>
							<!-- BUTTON ORNAMENT -->
							<span class="button-ornament" id="replybtnicon"> <!-- ARROW ICON -->
								<svg class="arrow-icon medium">
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
			<!-- /QUICK FORM -->
		</div>
		<!-- /QUICK FORM WRAP -->
	</div>








	<script>
		function quickreply(replytype, replyto, userimg, oripost, id, depth) {

			if (replytype == 'c') {
				document.getElementById('replytooripost').innerHTML = oripost;
				document.getElementById('replytoimg').src = userimg;
				document.getElementById('replyto').innerHTML = replyto
						+ '<span id = "replypid">' + id + '</span>'
						+ '<span id = "replydepth">' + depth + '</span>';
				document.getElementById('replytype').innerHTML = "Reply to this comment";
				document.getElementById('replybtn').innerHTML = "Reply this comment";
			} else {
				document.getElementById('replytooripost').innerHTML = oripost;
				document.getElementById('replytoimg').src = userimg;
				document.getElementById('replyto').innerHTML = replyto
						+ '<span id = "replypid">' + id + '</span>'
						+ '<span id = "replydepth">' + depth + '</span>';
				document.getElementById('replytype').innerHTML = "Reply to this topic";
				document.getElementById('replybtn').innerHTML = "Reply this topic";
			}

		}
	</script>



	<script>
		function getnewreplyobject(type) {

			var tid = new URLSearchParams(window.location.search).get('id');

			var cmd = document.getElementById("quick_reply_text").value;

			var obj = new Object();

			obj.tid = tid;

			if (type == 'c') {
				var pid = document.getElementById("replypid").innerHTML;
				var depth = document.getElementById("replydepth").innerHTML;
				obj.pid = pid;
				obj.depth = (parseInt(depth) + 1).toString();

			} else {
				obj.pid = "-1";
				obj.depth = "0";

			}

			obj.cmd = cmd;
			return obj;
		}

		function postreply() {
			document.getElementById("replybtnicon").innerHTML = '<i class="fa fa-spinner fa-spin" style="margin-top: 4px;font-size:24px"></i>';

			var type = "";
			if (document.getElementById("replytype").innerHTML
					.indexOf("comment") >= 0) {
				type = 'c';

			} else {
				type = 't';

			}

			$
					.ajax({
						url : '${pageContext.request.contextPath}/forum/api/createnewreply',
						type : 'post',
						datatype : "application/json",
						contentType : "application/json",
						async : true,
						data : JSON.stringify(getnewreplyobject(type)),
						success : function(data) {
							console.log(data);
							const jobj = JSON.parse(data.result);

							window.location.href = "${pageContext.request.contextPath}/forum"
									+ jobj.redirect;
						},

						error : function(xhr, status) {
							alert("ERROR : " + xhr + " : " + status);

							return;
						}
					});

		}

		function likethistopic(yesno1) {
			const id = new URLSearchParams(window.location.search).get('id');
			var yesno ="";
			if (document.getElementById("likebtn").classList
					.contains("gray")) {
				yesno = 'Y';
				document.getElementById("likebtn").classList
						.remove("gray");
				document.getElementById("likebtn").classList
				.add("red");
				
				
				document.getElementById("likebtntext").innerHTML='i liked this topic';
			} else {
				yesno = 'N';
				document.getElementById("likebtn").classList
						.remove("red");
				document.getElementById("likebtn").classList
				.add("gray");
				document.getElementById("likebtntext").innerHTML='click to like this';
			}
			

			$
					.ajax({
						url : '${pageContext.request.contextPath}/forum/api/userliketopic',
						type : 'post',
						datatype : "application/json",
						contentType : "application/json",
						async : true,
						data : '{"id":"' + id + '" , "yesno":"' + yesno + '"}',
						success : function(data) {
							console.log(data);
							const jobj = JSON.parse(data.result);

							//window.location.href = "${pageContext.request.contextPath}/forum"+ jobj.redirect;
						},

						error : function(xhr, status) {
							alert("ERROR : " + xhr + " : " + status);

							return;
						}
					});
		}
		
		
		

		function likecomment(cid, yesno1) {
			console.log(cid);
			var yesno;
			if (document.getElementById("comment_" + cid).classList
					.contains("hoverable")) {
				yesno = 'Y';
				document.getElementById("comment_" + cid).classList
						.remove("hoverable");
				var element = document.getElementById("likecount_" + cid);
	                var currentNumber = parseInt(element.innerHTML.trim(), 10);
	                var newNumber = currentNumber + 1;
	                element.innerHTML = newNumber;
	
				
			} else {
				yesno = 'N';
				document.getElementById("comment_" + cid).classList
						.add("hoverable");
				
				var element = document.getElementById("likecount_" + cid);
                var currentNumber = parseInt(element.innerHTML.trim(), 10);
                var newNumber = currentNumber - 1;
                element.innerHTML = newNumber;
                
                
			}

			const id = new URLSearchParams(window.location.search).get('id');
			$
					.ajax({
						url : '${pageContext.request.contextPath}/forum/api/userlikecomment',
						type : 'post',
						datatype : "application/json",
						contentType : "application/json",
						async : true,
						data : '{"id":"' + cid + '" , "yesno":"' + yesno
								+ '","tid":"' + id + '"}',
						success : function(data) {
							console.log(data);
							const jobj = JSON.parse(data.result);

							//window.location.href = "${pageContext.request.contextPath}/forum"+jobj.redirect;
							if (jobj.redirect.indexOf("topic") >= 0)
								var comid = "comment_" + cid;
							console.log(comid);

							if (yesno == 'Y') {
								document.getElementById(comid).classList
										.remove("hoverable");

							} else {
								document.getElementById(comid).classList
										.add("hoverable");
							}
						},

						error : function(xhr, status) {
							alert("ERROR : " + xhr + " : " + status);

							return;
						}
					});
		}
	</script>






	<%@include file="inc/footer.jsp"%>
</body>
</html>