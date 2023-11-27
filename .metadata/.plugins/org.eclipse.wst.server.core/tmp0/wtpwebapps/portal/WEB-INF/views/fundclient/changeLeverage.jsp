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
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active">Change Leverage</li>
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
				<!-- /.container-fluid -->

				<div class="contain-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card card-primary card-outline">
								<div class="card-header">
									<h5 class="m-0">Leverage changing tools for account(s).</h5>
								</div>
								<div class="card-body">



									<p class="card-text ">
										<strong>Please select a new leverage for your
											account.</strong>
									</p>




									<p class="card-text ">
										<strong>Kindly note that this is a request for a
											leverage change and it is not an automated function.</strong>
									</p>






									<div class="card card-primary">
										<div class="card-header">
											<h3 class="card-title">Leverage Tool</h3>
										</div>
										<div class="card-body" id="transferbox">
											<div class="row" id="transferrow0">
												<div class="col-6">
													<div class="form-group" data-select2-id="29">
														<label>MT5 Account No <span style="color: red">*</span></label>
														<select
															class="form-control select2 select2-hidden-accessible"
															style="width: 100%;" data-select2-id="1" tabindex="-1"
															aria-hidden="true">
															<option selected="selected" data-select2-id="3">200001</option>
															<option data-select2-id="33">200002</option>

														</select><span
															class="select2 select2-container select2-container--default select2-container--below select2-container--focus"
															dir="ltr" data-select2-id="2" style="width: 100%;"></span><span
															class="dropdown-wrapper" aria-hidden="true"></span>
													</div>
												</div>
												<div class="col-6">
													<div class="form-group">
														<label>Current Leverage</label> <input type="text"
															class="form-control" disabled="" value="200:1">
													</div>
												</div>

											</div>
											<br> <br>

											<div class="form-group" style="margin-left: 10px">
												<div class="row">
													<div class="form-check col-md-3"
														style="margin-bottom: 2rem;">
														<input class="form-check-input" type="radio" name="radio1">
														<label class="form-check-label">1:1</label>
													</div>
													<div class="form-check col-md-3"
														style="margin-bottom: 2rem;">
														<input class="form-check-input" type="radio" name="radio1">
														<label class="form-check-label">10:1</label>
													</div>
													<div class="form-check col-md-3"
														style="margin-bottom: 2rem;">
														<input class="form-check-input" type="radio" name="radio1">
														<label class="form-check-label">25:1</label>
													</div>
													<div class="form-check col-md-3"
														style="margin-bottom: 2rem;">
														<input class="form-check-input" type="radio" name="radio1">
														<label class="form-check-label">50:1</label>
													</div>
													<div class="form-check col-md-3"
														style="margin-bottom: 2rem;">
														<input class="form-check-input" type="radio" name="radio1">
														<label class="form-check-label">100:1</label>
													</div>
													<div class="form-check col-md-3"
														style="margin-bottom: 2rem;">
														<input class="form-check-input" type="radio" name="radio1">
														<label class="form-check-label">200:1</label>
													</div>
													<div class="form-check col-md-3"
														style="margin-bottom: 2rem;">
														<input class="form-check-input" type="radio" name="radio1">
														<label class="form-check-label">300:1</label>
													</div>
													<div class="form-check col-md-3"
														style="margin-bottom: 2rem;">
														<input class="form-check-input" type="radio" name="radio1">
														<label class="form-check-label">400:1</label>
													</div>
													<div class="form-check col-md-3"
														style="margin-bottom: 2rem;">
														<input class="form-check-input" type="radio" name="radio1">
														<label class="form-check-label">500:1</label>
													</div>
													<div class="form-check col-md-3"
														style="margin-bottom: 2rem;">
														<input class="form-check-input" type="radio" name="radio1">
														<label class="form-check-label">1000:1</label>
													</div>



												</div>

											</div>
										</div>



										<!-- /.card-body -->
										<div class="card-footer">

											<button type="submit" class="btn btn-primary float-right">Submit</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
</body>
</html>
