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
<title>INVESFORUM | Create Topic</title>

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
			<h2 class="banner-title"><%=request.getAttribute("categoryname")%></h2>
			<p class="banner-sections">
				<a style="color: white"
					href="${pageContext.request.contextPath}/forum/forum?id=<%=request.getAttribute("forumid")%>"
					class="banner-section"><%=request.getAttribute("forumname")%></a>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<a style="color: white"
					href="${pageContext.request.contextPath}/forum/category?id=<%=request.getAttribute("categoryid")%>"
					class="banner-section"><%=request.getAttribute("categoryname")%></a>
			</p>
		</div>
		<!-- /BANNER -->
	</div>

	<!-- LIVE NEWS WIDGET WRAP -->


	<div class="layout-content-full grid-limit">

		<div class="table forum-categories">

			<div class="table-rows no-color">
				<!-- TABLE ROW -->
				<div class="table-row large">
					<!-- TABLE ROW ITEM -->
					<div class="table-row-item">
						<!-- FORUM CATEGORY WRAP -->
						<div class="forum-category-wrap">
							<!-- FORUM CATEGORY IMG -->
							<a href="#"> <img class="forum-category-img"
								src="${pageContext.request.contextPath}/resources/forum/img/forum/category-10.png"
								alt="category-08">
							</a>
							<!-- /FORUM CATEGORY IMG -->

							<!-- FORUM CATEGORY TITLE -->
							<a href="#" class="forum-category-title"><%=request.getAttribute("name")%></a>
							<!-- /FORUM CATEGORY TITLE -->

							<!-- FORUM CATEGORY DESCRIPTION -->
							<p class="#"><%=request.getAttribute("desc")%></p>
							<!-- /FORUM CATEGORY DESCRIPTION -->
						</div>
						<!-- /FORUM CATEGORY WRAP -->
					</div>
					<!-- /TABLE ROW ITEM -->

					<!-- TABLE ROW ITEM -->
					<div class="table-row-item padded-large">
						<p class="table-text bold light"><%=request.getAttribute("post")%>
							Topics
						</p>
					</div>
					<!-- /TABLE ROW ITEM -->

					<!-- TABLE ROW ITEM -->
					<div class="table-row-item padded-large">
						<p class="table-text bold light"><%=request.getAttribute("comment")%>
							Comments
						</p>
					</div>
					<!-- /TABLE ROW ITEM -->

					<!-- TABLE ROW ITEM -->
					<div class="table-row-item">
						<!-- FORUM POST LINKS -->
						<div class="forum-post-links">
							<!-- FORUM POST LINK WRAP -->
							<div class="forum-post-link-wrap">
								<!-- FORUM POST LINK -->
								<a href="#" class="forum-post-link">Create By : <%=request.getAttribute("createby")%>
								</a>
								<!-- /FORUM POST LINK -->

								<!-- FORUM POST TIMESTAMP -->
								<p class="forum-post-timestamp">*</p>
								<!-- /FORUM POST TIMESTAMP -->
							</div>
							<!-- /FORUM POST LINK WRAP -->

							<!-- FORUM POST LINK WRAP -->
							<div class="forum-post-link-wrap">
								<!-- FORUM POST LINK -->
								<a href="#" class="forum-post-link">Create Date : <%=request.getAttribute("createdate")%>
								</a>
								<!-- /FORUM POST LINK -->

								<!-- FORUM POST TIMESTAMP -->
								<p class="forum-post-timestamp">*</p>
								<!-- /FORUM POST TIMESTAMP -->
							</div>
							<!-- /FORUM POST LINK WRAP -->

							<!-- FORUM POST LINK WRAP -->
							<div class="forum-post-link-wrap">
								<!-- FORUM POST LINK -->
								<a href="#" class="forum-post-link">Latest Activity : <%=request.getAttribute("createdate")%></a>
								<!-- /FORUM POST LINK -->

								<!-- FORUM POST TIMESTAMP -->
								<p class="forum-post-timestamp">*</p>
								<!-- /FORUM POST TIMESTAMP -->
							</div>
							<!-- /FORUM POST LINK WRAP -->
						</div>
						<!-- /FORUM POST LINKS -->
					</div>
					<!-- /TABLE ROW ITEM -->
				</div>
				<!-- /TABLE ROW -->

				<!-- TABLE ROW -->

				<!-- /TABLE ROW -->
			</div>
			<!-- /TABLE ROWS -->
		</div>

		<br>
		<hr>
		<br>
		<div class="section-title-wrap cyan">
			<h2 class="section-title medium">Create a new topic</h2>
			<div class="section-title-separator"></div>
		</div>
		<br>
		<br>

		<div class="form-row">
			<!-- FORM ITEM -->
			<div class="form-item blue">
				<label for="topic_tags" class="rl-label">Topic Title</label> <input
					type="text" id="topicname" placeholder="Your topic title...">
			</div>
			<!-- /FORM ITEM -->
		</div>
		
		<div class="form-row">
			<!-- FORM ITEM -->
			<div class="form-item blue">
				<label for="topic_tags" class="rl-label">Short Description For the topic</label> <input
					type="text" id="topicdesc" placeholder="Your topic description...">
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
			
		</script>


		<div class="form-actions right">

			<!-- BUTTON -->
			<button class="button blue" onclick="posttopic()" type="button" id="postbtn" style="padding: 0 34px 0 34px !important">
				Post your topic
				
				
					
			</button>

			<script
				src="${pageContext.request.contextPath}/resources/forum/js/summernote/sm.js"></script>
			<!-- /BUTTON -->
		</div>
		
		  <h2>Upload File - Multiple File</h2>
    <form method="POST" action="${pageContext.request.contextPath}/forum/uploadFile" enctype="multipart/form-data">
        <input type="file" name="file" id="fileinput" multiple/>
        <input type="text" name=id id="topicid" style="display:none"/>
        <br/><br/>
        <button type="submit" id="uploadbtn" style="display:none">Upload</button>
    </form>
	</div>


	<script>
	
	
	
	function posttopic()
	{
		if(checkempty())
			{
	        document.getElementById("postbtn").InnerHTML ='Post your topic <i class="fa fa-spinner fa-spin" style="font-size:24px"></i>';
		$.ajax({
			url : '${pageContext.request.contextPath}/forum/api/createnewtopic',
			type : 'post',
			datatype : "application/json",
			contentType : "application/json",
			async : true,
			data : JSON.stringify(getnewtopicobject()),
			success : function(data) {
				console.log(data);
				const jobj = JSON.parse(data.result);
				
				
				if(jobj.id >0)
					{
					 const fileInput = document.getElementById('fileinput');
			            if (fileInput.files.length > 0) {
			            	 document.getElementById("topicid").value = jobj.id;
			                document.getElementById("uploadbtn").click();
			            } else {
			            	window.location.href = "${pageContext.request.contextPath}/forum/topic?id="+jobj.id;
			            }
					}
				
				
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