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
								<li class="breadcrumb-item active">Change Password</li>
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

								<div class="card-body">
									<p class="card-text ">
										<strong>The password should have:.</strong>
									</p>
									<p class="card-text ">
										<i class="fa fa-check " style="color: green"></i> Minimum 8
										characters.
									</p>
									<p class="card-text ">
										<i class="fa fa-check " style="color: green"></i> At least one
										lowercase letter.
									</p>
									<p class="card-text ">
										<i class="fa fa-check " style="color: green"></i> At lease one
										uppercase letter.
									</p>
									<div class="card card-primary">

										<div class="card-body" id="transferbox">
											<div class="row" id="transferrow0">
												<div class="col-12">
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

													<div class="form-group">
														<label for="exampleInputEmail1">Current Password <span
															style="color: red">*</span></label> <input type="password"
															class="form-control" id="currentpass"
															placeholder="Enter your current passwod here">
													</div>
													<div class="form-group">
														<label for="exampleInputEmail1">New Password <span
															style="color: red">*</span></label> <input type="password"
															class="form-control" id="newpass"
															placeholder="Enter your new password here">
													</div>
													<div class="form-group">
														<label for="exampleInputEmail1">Confirm Password <span
															style="color: red">*</span></label> <input type="password"
															class="form-control" id="cnewpass"
															placeholder="Re-enter new password here">
													</div>
												</div>


											</div>
											<br> <br>


										</div>



										<!-- /.card-body -->
										<div class="card-footer">

											<button type="submit" class="btn btn-primary float-right">Submit</button>
										</div>
									</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<h5 class="m-0">Forgot Password</h5>
								</div>
								<div class="card-body">
									<h6 class="card-title">A secure link will be sent to your
										registered email address in order to update your new password.</h6>

									<p class="card-text">Click the button below to request
										password changes.</p>
									<a href="#" class="btn btn-secondary">Send a secure link</a>
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
