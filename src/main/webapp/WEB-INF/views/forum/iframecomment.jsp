<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="inc/session.jsp"%>
<html lang="en-kr">
<head>
<%@include file="inc/header.jsp"%>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	
	<div class="layout-content-full layout-item grid-limit gutter-big">

		<!-- TOPIC WRAP -->


 
   
    

		<div id="op-comments" class="post-comment-thread">
			<!-- SECTION TITLE WRAP -->
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
							onclick="aquickreply('c','${ listinfo1.postownername }','${ listinfo1.create_by_img }',' ${ listinfo1.comment}','${ listinfo1.id}','${ listinfo1.depth}')">
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
		function aquickreply(replytype, replyto, userimg, oripost, id, depth) {
	
parent.quickreply(replytype, replyto, userimg, oripost, id, depth);
		/*	if (replytype == 'c') {
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
			}*/

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
	
 <script>
        function triggerParentFunction() {
            // Call the parent function
            parent.myParentFunction();
        }
    </script>

<script>
	loadingScripts();
function loadingScripts() {
    /* getting url of current page */
    var url = window.location.pathname.indexOf('createtopic');
    var url1 = window.location.pathname.indexOf('edittopic');
    console.log(url);
    console.log(url1);
    if (url == -1 && url1 ==-1) { /* checking whether the current page is home page or not */
        var script = document.createElement('script');
        script.src = "${pageContext.request.contextPath}/resources/forum/app.bundle.min.js";
        document.body.appendChild(script);
    } 
}
</script>
</body>
</html>