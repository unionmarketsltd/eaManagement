<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<%@include file="inc/session.jsp"%>
<head>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | Home</title>



</head>
<body>
	<%@include file="inc/top.jsp"%>
 

	
<div class="layout-content-full grid-limit-new">
    
    <div class="tab-body">
        <!-- TAB ITEM -->
        <div class="tab-item spaced">
          <!-- LAYOUT CONTENT 4 -->
          <div class="layout-content-4 v2 layout-item-1-3">
            <!-- LAYOUT SIDEBAR -->
           <%@include file="inc/sidemenu.jsp" %>

            <!-- LAYOUT BODY -->
            <div class="layout-body">
              <!-- ACCOUNT SETTINGS FORM -->
        
              <div class="form-item blue">
							<label for="as_username" class="rl-label">Search topic</label>
							<input type="text" id="search" name="as_username"
								placeholder="Enter your search keyword here..."
								value="${keyword}">

						</div>
						<br> <br>
						<button class="button blue" style="float: right"
							onclick="search()">
							Search
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



<br>
<br>
<br>

              
              
              
              <div class="section-title-wrap blue no-space">
                <h2 class="section-title medium">${tabletype} topic</h2>
                <div class="section-title-separator"></div>
              </div>
              
              <div class="table forum-topics">
			<!-- TABLE ROW HEADER -->
			<div class="table-row-header">
				<!-- TABLE ROW HEADER ITEM -->
				
				
				<div class="table-row-header-item left ">
					<p class="table-row-header-title">topic</p>
				</div>
				
				<div class="table-row-header-item left">
					<p class="table-row-header-title">Description</p>
				</div>

				<div class="table-row-header-item left">
					<p class="table-row-header-title">Category</p>
				</div>
				<!-- /TABLE ROW HEADER ITEM -->
				<div class="table-row-header-item left">
					<p class="table-row-header-title">create by</p>
				</div>
				
				
				<div class="table-row-header-item left">
					<p class="table-row-header-title">create date</p>
				</div>
				
				<div class="table-row-header-item left">
					<p class="table-row-header-title">action</p>
				</div>
					


				
			</div>
			<!-- /TABLE ROW HEADER -->

<c:forEach items="${ topiclist }" var="listinfo">

			<!-- TABLE ROWS -->
			<div class="table-rows">
				<!-- TABLE ROW -->

					<div class="table-row large">
			
						
						<div class="table-row-item left">
							<p class="table-text bold">${listinfo.id}.${listinfo.title} 
							
							</p>
						</div>
						
						<div class="table-row-item left">
							<p class="table-text bold" style="max-width:300px">${listinfo.description} 
							
							</p>
						</div>
						
						<div class="table-row-item left">
							<p class="table-text bold">${listinfo.category_name}</p>
						</div>
						
						<div class="table-row-item left">
							<p class="table-text bold">${listinfo.create_by}</p>
						</div>
						
						<div class="table-row-item left">
							<p class="table-text bold">${listinfo.create_date}</p>
						</div>
						
						<div class="table-row-item left">
							
						
							<button type="button" class="button small blue" onclick="deletetopic(${listinfo.id})">Delete</button>
							
						
						</div>
			
					</div>
					<!-- /TABLE ROW -->

			</div>

</c:forEach>

		</div>
			<div class="page-navigation blue spaced right">
								<c:forEach items="${ pagination }" var="pagebutton">${pagebutton}</c:forEach>
							</div>
		<script>
		function search() {
			let keyword = document.getElementById("search").value;

			window.location.href = "${pageContext.request.contextPath}/admin/topicsetting?keyword="
					+ keyword;

		}
		
		</script>
              
<script>

function deletetopic(id)
{
	
	$.ajax({
		url : '${pageContext.request.contextPath}/admin/api/deletetopic?id='+id,
		type : 'get',
		datatype : "application/json",
		contentType : "application/json",
		async : true,
		data : '',
		success : function(data) {
			console.log(data);
			window.location.href = "${pageContext.request.contextPath}/admin/topicsetting";

		},

		error : function(xhr, status) {
			alert("ERROR : " + xhr + " : " + status);

			return;
		}
	});
}
	</script>

            </div>
            <!-- /LAYOUT BODY -->
          </div>
          <!-- /LAYOUT CONTENT 4 -->
        </div>
        <!-- /TAB ITEM -->
      </div>
	</div>

  <!-- LAYOUT CONTENT 1 -->
  <!-- /LAYOUT CONTENT 1 -->
	<%@include file="inc/footer.jsp"%>
</body>
</html>