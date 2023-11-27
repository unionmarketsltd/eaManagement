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
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<%@include file="inc/top.jsp"%>

		<!-- Main Sidebar Container -->
		<%@include file="inc/left.jsp"%>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0" id="pagetitlemain"></h1>
						</div>

						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" id="pagetitlesub"></li>
							</ol>
						</div>
						<!-- /.col -->

					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- Small boxes (Stat box) -->
					<!-- /.row -->

					<div class="row">

						<div class="col-md-4">
							<!-- Widget: user widget style 1 -->
							<div class="card card-widget widget-user"
								style="min-height: 555px;">
								<!-- Add the bg color to the header using any of the bg-* classes -->
								<div class="widget-user-header " id="bgprofile"
									style="background: url('${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg') center center;">

								</div>
								<div class="widget-user-image">
									<img class="img-circle"
										src="${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg"
										id="userphoto" alt="User Avatar">
								</div>

								<div class="card-footer"
									style="padding-top: 101px !important; padding-bottom: 95px !important;">
									<h3 class="widget-user-username text-center"
										style="font-weight: 500;"><%=s_Name%></h3>
									<h5 class="widget-user-desc text-center"
										style="font-weight: 500;">
										ID:
										<%=s_Login%>
										(<%=s_Type%>)
									</h5>
								</div>
							</div>
							<!-- /.widget-user -->
						</div>

						<div class="col-md-8">
							<!-- /.col -->
							<div class="row">
								<div class="col-md-12">
									<!-- About Me Box -->
									<div class="card card-primary">
										<div class="card-header">
											<h3 class="card-title">
												<strong>About Me</strong>
											</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<strong><i class="fas fa-book mr-1"></i>${email}</strong>

											<p class="text-muted" id="country"></p>

											

										</div>
										<!-- /.card-body -->
									</div>
									<!-- /.card -->
								</div>
								<!-- /.col -->
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Responsive Hover Table</h3>
									<div class="card-tools">
										<div class="input-group input-group-sm" style="width: 150px;">
											<input type="text" name="table_search"
												class="form-control float-right" placeholder="Search">
											<div class="input-group-append">
												<button type="submit" class="btn btn-default">
													<i class="fas fa-search"></i>
												</button>
											</div>
										</div>
									</div>
								</div>

								<div class="card-body table-responsive p-0">
									<table class="table table-hover text-nowrap">
										<thead>
											<tr>
											<th>#</th>
												<th>ID</th>
												<th>User</th>
												<th>Login Date</th>
												
											</tr>
										</thead>
										<tbody>
											<c:set var="seq"
												value="0" />
											<c:forEach items="${ loginhistorylist }" var="listinfo"
												varStatus="status">
												<c:set var="seq" value="${(seq +1) }" />
												<tr>
													<td>${seq}</td>
													<td>${listinfo.id }</td>
													<td>${listinfo.email }</td>
													<td>${listinfo.login_date }</td>


												</tr>
											</c:forEach>
											
										</tbody>
									</table>
								</div>

							</div>

						</div>
					</div>
					<!-- Main row -->
					<!-- /.row (main row) -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>


		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
</body>
</html>
