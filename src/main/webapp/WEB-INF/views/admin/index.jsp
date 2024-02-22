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
					<%@include file="inc/sidemenu.jsp"%>

					<!-- LAYOUT BODY -->
					<div class="layout-body">
						<!-- ACCOUNT SETTINGS FORM -->




						<div class="section-title-wrap blue no-space">
							<h2 class="section-title medium">All Users</h2>
							<div class="section-title-separator"></div>
						</div>

						<div class="table forum-topics">
							<!-- TABLE ROW HEADER -->
							<div class="table-row-header">
								<!-- TABLE ROW HEADER ITEM -->
								<div class="table-row-header-item left">
									<p class="table-row-header-title">#</p>
								</div>


								<div class="table-row-header-item left ">
									<p class="table-row-header-title">Email</p>
								</div>

								<div class="table-row-header-item left">
									<p class="table-row-header-title">Image</p>
								</div>

								<div class="table-row-header-item left">
									<p class="table-row-header-title">name</p>
								</div>
								<!-- /TABLE ROW HEADER ITEM -->
								<div class="table-row-header-item left">
									<p class="table-row-header-title">register on</p>
								</div>


								<div class="table-row-header-item left">
									<p class="table-row-header-title">Action</p>
								</div>


								<div class="table-row-header-item left">
									<p class="table-row-header-title">Admin</p>
								</div>



							</div>
							<!-- /TABLE ROW HEADER -->

							<c:forEach items="${ clientlist }" var="clientlistinfo">

								<!-- TABLE ROWS -->
								<div class="table-rows">
									<!-- TABLE ROW -->

									<div class="table-row large">
										<!-- TABLE ROW ITEM -->


										<!-- /TABLE ROW ITEM -->

										<!-- TABLE ROW ITEM -->

										<!-- /TABLE ROW ITEM -->


										<!-- TABLE ROW ITEM -->
										<div class="table-row-item left">
											<p class="table-text bold">${clientlistinfo.id}</p>
										</div>
										<div class="table-row-item left">
											<p class="table-text bold">${clientlistinfo.email}

												<c:choose>
													<c:when test="${clientlistinfo.isadmin > 0}">
							(Admin)
							</c:when>

												</c:choose>


											</p>
										</div>
										<div class="table-row-item left">
											<img class="widget-option-img user-avatar micro"
												src="${clientlistinfo.google_image_url}" alt="avatar-01">
										</div>
										<div class="table-row-item left">
											<p class="table-text bold">${clientlistinfo.name}</p>
										</div>

										<div class="table-row-item left">
											<p class="table-text bold">${clientlistinfo.create_date}</p>
										</div>

										<div class="table-row-item left">


											<c:choose>
												<c:when test="${clientlistinfo.isban > 0}">


													<button type="button"
														onclick="toggleban(${clientlistinfo.id},${clientlistinfo.isban})"
														class="button small red">Un-Ban</button>
												</c:when>
												<c:otherwise>
													<button type="button"
														onclick="toggleban(${clientlistinfo.id},${clientlistinfo.isban})"
														class="button small blue">Ban</button>
												</c:otherwise>

											</c:choose>


										</div>


										<div class="table-row-item left">


											<c:choose>
												<c:when test="${clientlistinfo.isadmin > 0}">


													<button type="button"
														onclick="toggleadmin(${clientlistinfo.id},${clientlistinfo.isadmin})"
														class="button small red">remove</button>
												</c:when>
												<c:otherwise>
													<button type="button"
														onclick="toggleadmin(${clientlistinfo.id},${clientlistinfo.isadmin})"
														class="button small blue">Add</button>
												</c:otherwise>

											</c:choose>


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
	
	
	
	<script>
function toggleadmin(id,ban)
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
			url : '${pageContext.request.contextPath}/admin/api/toggleadmin?id='+id+'&ban='+ban,
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