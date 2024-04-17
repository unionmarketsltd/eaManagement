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
<title>INVESFORUM | Admin</title>



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
        
              
              
              
              <div class="section-title-wrap blue no-space">
                <h2 class="section-title medium">All Categories</h2>
                <div class="section-title-separator"></div>
              </div>
              
              <div class="table forum-topics">
			<!-- TABLE ROW HEADER -->
			<div class="table-row-header">
				<!-- TABLE ROW HEADER ITEM -->
				
				
				<div class="table-row-header-item left ">
					<p class="table-row-header-title">Title</p>
				</div>
				
				<div class="table-row-header-item left">
					<p class="table-row-header-title">Description</p>
				</div>

				<div class="table-row-header-item left">
					<p class="table-row-header-title">forum</p>
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

<c:forEach items="${ categorylist }" var="listinfo">

			<!-- TABLE ROWS -->
			<div class="table-rows">
				<!-- TABLE ROW -->

					<div class="table-row large">
			
						
						<div class="table-row-item left">
							<p class="table-text bold">${listinfo.id}.${listinfo.name} 
							
							</p>
						</div>
						
						<div class="table-row-item left">
							<p class="table-text bold" style="max-width:300px">${listinfo.description} 
							
							</p>
						</div>
						
						<div class="table-row-item left">
							<p class="table-text bold">${listinfo.forum_name}</p>
						</div>
						
						<div class="table-row-item left">
							<p class="table-text bold">${listinfo.create_by}</p>
						</div>
						
						<div class="table-row-item left">
							<p class="table-text bold">${listinfo.create_date}</p>
						</div>
						
						<div class="table-row-item left">
							
						
							<a href="${pageContext.request.contextPath}/admin/categoryedit?id=${listinfo.id}" class="button small blue">Edit</a>
							
						
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
function toggleban(id,ban)
	{
		if(ban==1)
			{
			ban = 0;
			}
		else
		{
			ban=1;
		}
		$.ajax({
			url : '${pageContext.request.contextPath}/admin/api/toggleban?id='+id+'&ban='+ban,
			type : 'get',
			datatype : "application/json",
			contentType : "application/json",
			async : true,
			data : '',
			success : function(data) {
				console.log(data);
				location.reload();
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