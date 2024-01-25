<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="inc/session.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | Edit Topic</title>

<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

</head>
<body>
	<%@include file="inc/top.jsp"%>

	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">Edit Topic </h2>
			<p class="banner-sections">
			${tft.category_name} >	${tft.title }
			</p>
		</div>
		<!-- /BANNER -->
	</div>

	<!-- LIVE NEWS WIDGET WRAP -->


	<div class="layout-content-full grid-limit">

		<br>
		<hr>
		<br>
		<div class="section-title-wrap cyan">
			<h2 class="section-title medium">Edit: ${tft.title }</h2>
			<div class="section-title-separator"></div>
		</div>
		<br>
		<br>

		<div class="form-row">
			<!-- FORM ITEM -->
			<div class="form-item blue">
				<label for="topic_tags" class="rl-label">Topic Title</label> <input
					type="text" value='${tft.title }' id="topicname" placeholder="Your topic title...">
			</div>
			<!-- /FORM ITEM -->
		</div>
		
		<div class="form-row">
			<!-- FORM ITEM -->
			<div class="form-item blue">
				<label for="topic_tags" class="rl-label">Short Description For the topic</label> <input
					type="text" id="topicdesc" placeholder="Your topic description..." value = '${tft.description }'>
			</div>
			<!-- /FORM ITEM -->
		</div>
		
		
		<div class="form-row">
			<!-- FORM ITEM -->
			<div class="form-item blue">
				<label for="topic_tags" class="rl-label">Topic Contents</label> <br>
				<div id="summernote"></div>
			</div>
			<!-- /FORM ITEM -->
		</div>

		<script>
		var markupStr = "${tft.content }";

		$("#summernote").summernote("code", markupStr);
		</script>


		<div class="form-actions right">

			<!-- BUTTON -->
			<button class="button blue" onclick="posttopic()" type="button" id="postbtn" style="padding: 0 34px 0 34px !important">
				Edit your topic
				
				
					
			</button>

			<script
				src="${pageContext.request.contextPath}/resources/forum/js/summernote/sm.js"></script>
			<!-- /BUTTON -->
		</div>
	</div>


	<script>
	
	function posttopic()
	{
		if(checkempty())
			{
	        document.getElementById("postbtn").InnerHTML ='Post your topic <i class="fa fa-spinner fa-spin" style="font-size:24px"></i>';
		$.ajax({
			url : '${pageContext.request.contextPath}/forum/api/edittopic',
			type : 'post',
			datatype : "application/json",
			contentType : "application/json",
			async : true,
			data : JSON.stringify(getedittopicobject()),
			success : function(data) {
				console.log(data);
				const jobj = JSON.parse(data.result);
				
				window.location.href = "${pageContext.request.contextPath}/forum"+jobj.redirect;
			},

			error : function(xhr, status) {
				alert("ERROR : " + xhr + " : " + status);

				return;
			}
		});
			}
		
	}
	</script>



	<%@include file="inc/footer.jsp"%>
</body>
</html>