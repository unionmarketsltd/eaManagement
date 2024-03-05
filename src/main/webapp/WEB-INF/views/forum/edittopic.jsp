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
<html >
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
			<h2 class="banner-title">Edit Topic</h2>
			<p class="banner-sections">${tft.category_name}> ${tft.title }</p>
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
		<br> <br>

		<div class="form-row">
			<!-- FORM ITEM -->
			<div class="form-item blue">
				<label for="topic_tags" class="rl-label">Topic Title</label> <input
					type="text" value="${fn:replace(fn:replace(tft.title, '\'', ''), '\"', '')}" id="topicname"
					placeholder="Your topic title...">
			</div>
			<!-- /FORM ITEM -->
		</div>

		<div class="form-row">
			<!-- FORM ITEM -->
			<div class="form-item blue">
				<label for="topic_tags" class="rl-label">Short Description
					For the topic</label> <input type="text" id="topicdesc"
					placeholder="Your topic description..."  value="${fn:replace(fn:replace(tft.description, '\'', ''), '\"', '')}">
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

		<br>
		<BR>

		<div class="table records cloner-wrap"
			data-title="Code Copied<br>to Clipboard!" style="position: relative;">
			<!-- TABLE ROW HEADER -->
			<div class="table-row-header">
				<!-- TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item left">
					<p class="table-row-header-title">File Name</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->

				<!-- TABLE ROW HEADER ITEM -->
			
				<!-- /TABLE ROW HEADER ITEM -->


				<!-- /TABLE ROW HEADER ITEM -->
			</div>
			<!-- /TABLE ROW HEADER -->

			<!-- TABLE ROWS -->

			<c:forEach items="${ filelist }" var="listinfo" varStatus="status1">
				<div class="table-rows">
					<!-- TABLE ROW -->
					<div class="table-row">
						<!-- TABLE ROW ITEM -->
						<div class="table-row-item">
							<!-- FEATURED INFO -->
							<div class="featured-info">

								<p class="featured-info-text">${ listinfo.file_name}</p>
								<!-- /FEATURED INFO IMG -->
							</div>
							<!-- /FEATURED INFO -->
						</div>
						<!-- /TABLE ROW ITEM -->

						<!-- TABLE ROW ITEM -->
						<div class="table-row-item left">
							<!-- FEATURED INFO -->
							

								<button type="button" onclick="deletefile('${listinfo.id}')"  class="button tiny red  cloner-wrap"
									
									style="position: relative;"> Delete<!-- BUTTON ORNAMENT -->
									<div class="button-ornament">
										<!-- ARROW ICON -->
										<svg class="arrow-icon">
            <use xlink:href="#svg-arrow"></use>
          </svg>
										<!-- /ARROW ICON -->

										<!-- CROSS ICON -->
										<svg class="cross-icon small">
            <use xlink:href="#svg-cross-small"></use>
          </svg>
										<!-- /CROSS ICON -->
									</div> <!-- /BUTTON ORNAMENT -->
									</button>
								<!-- /FEATURED INFO IMG -->
						
							<!-- /FEATURED INFO -->
						</div>

					</div>

				</div>

			</c:forEach>
			<!-- /TABLE ROWS -->
		
		</div>

		<div class="form-actions right">

			<!-- BUTTON -->
			<button class="button blue" onclick="posttopic()" type="button"
				id="postbtn" style="padding: 0 34px 0 34px !important">
				Edit your topic</button>

			<script
				src="${pageContext.request.contextPath}/resources/forum/js/summernote/sm.js"></script>
			<!-- /BUTTON -->
		</div>



	</div>


	<script>
		function posttopic() {
			if (checkempty()) {
				document.getElementById("postbtn").InnerHTML = 'Post your topic <i class="fa fa-spinner fa-spin" style="font-size:24px"></i>';
				$
						.ajax({
							url : '${pageContext.request.contextPath}/forum/api/edittopic',
							type : 'post',
							datatype : "application/json",
							contentType : "application/json",
							async : true,
							data : JSON.stringify(getedittopicobject()),
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

		}
		
		
		
		
		
		function deletefile(id) {
			
				$
						.ajax({
							url : '${pageContext.request.contextPath}/forum/api/deletefile',
							type : 'post',
							datatype : "application/json",
							contentType : "application/json",
							async : true,
							data : '{"id":"'+id+'"}',
							success : function(data) {
								console.log(data);
								//const jobj = JSON.parse(data.result);

								window.location.reload();
							},

							error : function(xhr, status) {
								window.location.reload();

								return;
							}
						});
			

		}
	</script>



	<%@include file="inc/footer.jsp"%>
</body>
</html>