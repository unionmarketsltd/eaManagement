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

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/daterangepicker/daterangepicker.css">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/bs-stepper/css/bs-stepper.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/dropzone/min/dropzone.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/select2/css/select2.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
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
								<li class="breadcrumb-item active">Fund History</li>
							</ol>
						</div>
						<!-- /.col -->
						
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card card-primary card-outline">
							<div class="card-header">
								<h5 class="m-0">My Fund History</h5>
							</div>
							<div class="card-body">









								<div class="row">
									<div class="col-12">
										<div class="form-group" data-select2-id="29">
											<label>MT5 Account No <span style="color: red">*</span></label>
											<select class="form-control " style="width: 100%;"
												data-select2-id="1" tabindex="-1" aria-hidden="true">
												<option selected="selected" data-select2-id="3">200001</option>
												<option data-select2-id="33">200002</option>

											</select>
										</div>
									</div>


									<div class="form-group col-6">
										<label>Date:</label>
										<div class="input-group date " id="reservationdate"
											data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input"
												data-target="#reservationdate">
											<div class="input-group-append"
												data-target="#reservationdate" data-toggle="datetimepicker">
												<div class="input-group-text">
													<i class="fa fa-calendar"></i>
												</div>
											</div>
										</div>
									</div>
									<!-- Date and time -->
									<div class="form-group col-6">
										<label>Date and time:</label>
										<div class="input-group date" id="reservationdatetime"
											data-target-input="nearest">
											<input type="text" class="form-control datetimepicker-input"
												data-target="#reservationdatetime">
											<div class="input-group-append"
												data-target="#reservationdatetime"
												data-toggle="datetimepicker">
												<div class="input-group-text">
													<i class="fa fa-calendar"></i>
												</div>
											</div>
										</div>
									</div>
									<!-- /.form group -->

									<!-- /.form group -->

								</div>
								<div>
									<button type="submit" class="btn btn-primary float-right ">Submit</button>
								</div>
								<br> <br> <br>

								<div class="card card-outline card-tabs">
									<div class="card-header p-0 pt-1 border-bottom-0">
										<ul class="nav nav-tabs" id="custom-tabs-three-tab"
											role="tablist">
											<li class="nav-item"><a class="nav-link active"
												id="tab1" data-toggle="pill"
												href="#custom-tabs-three-home" role="tab"
												aria-controls="custom-tabs-three-home" aria-selected="true">All</a>
											</li>
											<li class="nav-item"><a class="nav-link"
												id="tab2" data-toggle="pill"
												href="#custom-tabs-three-profile" role="tab"
												aria-controls="custom-tabs-three-profile"
												aria-selected="false">Deposit</a></li>
											<li class="nav-item"><a class="nav-link"
												id="tab3" data-toggle="pill"
												href="#custom-tabs-three-messages" role="tab"
												aria-controls="custom-tabs-three-messages"
												aria-selected="false">Withdrawal</a></li>
											<li class="nav-item"><a class="nav-link"
												id="tab4" data-toggle="pill"
												href="#custom-tabs-three-settings" role="tab"
												aria-controls="custom-tabs-three-settings"
												aria-selected="false">Internal Transfer</a></li>
										</ul>
									</div>
									<div class="card-body">
										<div class="tab-content" id="custom-tabs-three-tabContent">
											<div class="tab-pane fade active show"
												id="custom-tabs-three-home" role="tabpanel"
												aria-labelledby="custom-tabs-three-home-tab">
												<div class="card">
													<div class="card-header">
														<h3 class="card-title">All History</h3>
													</div>

													<div class="card-body">
														<div id="example2_wrapper"
															class="dataTables_wrapper dt-bootstrap4">
															<div class="row">
																<div class="col-sm-12 col-md-6"></div>
																<div class="col-sm-12 col-md-6"></div>
															</div>
															<div class="row">
																<div class="col-sm-12">
																	<table id="example2"
																		class="table table-bordered table-hover dataTable dtr-inline"
																		aria-describedby="example2_info">
																		<thead>
																			<tr>
																				<th class="sorting sorting_asc" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-sort="ascending"
																					aria-label="Rendering engine: activate to sort column descending">DATE/TIME</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Browser: activate to sort column ascending">CURRENCY</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Platform(s): activate to sort column ascending">AMOUNT</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Engine version: activate to sort column ascending">TYPE</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="CSS grade: activate to sort column ascending">DETAIL</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="CSS grade: activate to sort column ascending">STATUS</th>
																			</tr>
																		</thead>
																		<tbody>

																			<tr class="odd">

																				<td>200-01-01</td>
																				<td>USD</td>
																				<td>100.00</td>
																				<td>Deposit</td>
																				<td>Deposit in Progress</td>
																				<td>In Progress</td>
																			</tr>

																		</tbody>

																	</table>
																</div>
															</div>
															<div class="row">
																<div class="col-sm-12 col-md-5">
																	<div class="dataTables_info" id="example2_info"
																		role="status" aria-live="polite">Showing 1 to 10
																		of 57 entries</div>
																</div>
																<div class="col-sm-12 col-md-7">
																	<div class="dataTables_paginate paging_simple_numbers"
																		style="float: right" id="example2_paginate">
																		<ul class="pagination">
																			<li
																				class="paginate_button page-item previous disabled"
																				id="example2_previous"><a href="#"
																				aria-controls="example2" data-dt-idx="0"
																				tabindex="0" class="page-link">Previous</a></li>
																			<li class="paginate_button page-item active"><a
																				href="#" aria-controls="example2" data-dt-idx="1"
																				tabindex="0" class="page-link">1</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="2"
																				tabindex="0" class="page-link">2</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="3"
																				tabindex="0" class="page-link">3</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="4"
																				tabindex="0" class="page-link">4</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="5"
																				tabindex="0" class="page-link">5</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="6"
																				tabindex="0" class="page-link">6</a></li>
																			<li class="paginate_button page-item next"
																				id="example2_next"><a href="#"
																				aria-controls="example2" data-dt-idx="7"
																				tabindex="0" class="page-link">Next</a></li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>

												</div>
											</div>
											<div class="tab-pane fade" id="custom-tabs-three-profile"
												role="tabpanel"
												aria-labelledby="custom-tabs-three-profile-tab">
												<div class="card">
													<div class="card-header">
														<h3 class="card-title">Deposit History</h3>
													</div>

													<div class="card-body">
														<div id="example2_wrapper"
															class="dataTables_wrapper dt-bootstrap4">
															<div class="row">
																<div class="col-sm-12 col-md-6"></div>
																<div class="col-sm-12 col-md-6"></div>
															</div>
															<div class="row">
																<div class="col-sm-12">
																	<table id="example2"
																		class="table table-bordered table-hover dataTable dtr-inline"
																		aria-describedby="example2_info">
																		<thead>
																			<tr>
																				<th class="sorting sorting_asc" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-sort="ascending"
																					aria-label="Rendering engine: activate to sort column descending">DATE/TIME</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Browser: activate to sort column ascending">CURRENCY</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Platform(s): activate to sort column ascending">AMOUNT</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Engine version: activate to sort column ascending">TYPE</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="CSS grade: activate to sort column ascending">DETAIL</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="CSS grade: activate to sort column ascending">STATUS</th>
																			</tr>
																		</thead>
																		<tbody>

																			<tr class="odd">

																				<td>200-01-01</td>
																				<td>USD</td>
																				<td>100.00</td>
																				<td>Deposit</td>
																				<td>Deposit in Progress</td>
																				<td>In Progress</td>
																			</tr>

																		</tbody>

																	</table>
																</div>
															</div>
															<div class="row">
																<div class="col-sm-12 col-md-5">
																	<div class="dataTables_info" id="example2_info"
																		role="status" aria-live="polite">Showing 1 to 10
																		of 57 entries</div>
																</div>
																<div class="col-sm-12 col-md-7">
																	<div class="dataTables_paginate paging_simple_numbers"
																		style="float: right" id="example2_paginate">
																		<ul class="pagination">
																			<li
																				class="paginate_button page-item previous disabled"
																				id="example2_previous"><a href="#"
																				aria-controls="example2" data-dt-idx="0"
																				tabindex="0" class="page-link">Previous</a></li>
																			<li class="paginate_button page-item active"><a
																				href="#" aria-controls="example2" data-dt-idx="1"
																				tabindex="0" class="page-link">1</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="2"
																				tabindex="0" class="page-link">2</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="3"
																				tabindex="0" class="page-link">3</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="4"
																				tabindex="0" class="page-link">4</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="5"
																				tabindex="0" class="page-link">5</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="6"
																				tabindex="0" class="page-link">6</a></li>
																			<li class="paginate_button page-item next"
																				id="example2_next"><a href="#"
																				aria-controls="example2" data-dt-idx="7"
																				tabindex="0" class="page-link">Next</a></li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>

												</div>
											</div>
											<div class="tab-pane fade" id="custom-tabs-three-messages"
												role="tabpanel"
												aria-labelledby="custom-tabs-three-messages-tab">
												<div class="card">
													<div class="card-header">
														<h3 class="card-title">Withdrawal History</h3>
													</div>

													<div class="card-body">
														<div id="example2_wrapper"
															class="dataTables_wrapper dt-bootstrap4">
															<div class="row">
																<div class="col-sm-12 col-md-6"></div>
																<div class="col-sm-12 col-md-6"></div>
															</div>
															<div class="row">
																<div class="col-sm-12">
																	<table id="example2"
																		class="table table-bordered table-hover dataTable dtr-inline"
																		aria-describedby="example2_info">
																		<thead>
																			<tr>
																				<th class="sorting sorting_asc" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-sort="ascending"
																					aria-label="Rendering engine: activate to sort column descending">DATE/TIME</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Browser: activate to sort column ascending">CURRENCY</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Platform(s): activate to sort column ascending">AMOUNT</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Engine version: activate to sort column ascending">TYPE</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="CSS grade: activate to sort column ascending">DETAIL</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="CSS grade: activate to sort column ascending">STATUS</th>
																			</tr>
																		</thead>
																		<tbody>

																			<tr class="odd">

																				<td>200-01-01</td>
																				<td>USD</td>
																				<td>100.00</td>
																				<td>Deposit</td>
																				<td>Deposit in Progress</td>
																				<td>In Progress</td>
																			</tr>

																		</tbody>

																	</table>
																</div>
															</div>
															<div class="row">
																<div class="col-sm-12 col-md-5">
																	<div class="dataTables_info" id="example2_info"
																		role="status" aria-live="polite">Showing 1 to 10
																		of 57 entries</div>
																</div>
																<div class="col-sm-12 col-md-7">
																	<div class="dataTables_paginate paging_simple_numbers"
																		style="float: right" id="example2_paginate">
																		<ul class="pagination">
																			<li
																				class="paginate_button page-item previous disabled"
																				id="example2_previous"><a href="#"
																				aria-controls="example2" data-dt-idx="0"
																				tabindex="0" class="page-link">Previous</a></li>
																			<li class="paginate_button page-item active"><a
																				href="#" aria-controls="example2" data-dt-idx="1"
																				tabindex="0" class="page-link">1</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="2"
																				tabindex="0" class="page-link">2</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="3"
																				tabindex="0" class="page-link">3</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="4"
																				tabindex="0" class="page-link">4</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="5"
																				tabindex="0" class="page-link">5</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="6"
																				tabindex="0" class="page-link">6</a></li>
																			<li class="paginate_button page-item next"
																				id="example2_next"><a href="#"
																				aria-controls="example2" data-dt-idx="7"
																				tabindex="0" class="page-link">Next</a></li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>

												</div>
											</div>
											<div class="tab-pane fade" id="custom-tabs-three-settings"
												role="tabpanel"
												aria-labelledby="custom-tabs-three-settings-tab">
												<div class="card">
													<div class="card-header">
														<h3 class="card-title">Internal Transfer</h3>
													</div>

													<div class="card-body">
														<div id="example2_wrapper"
															class="dataTables_wrapper dt-bootstrap4">
															<div class="row">
																<div class="col-sm-12 col-md-6"></div>
																<div class="col-sm-12 col-md-6"></div>
															</div>
															<div class="row">
																<div class="col-sm-12">
																	<table id="example2"
																		class="table table-bordered table-hover dataTable dtr-inline"
																		aria-describedby="example2_info">
																		<thead>
																			<tr>
																				<th class="sorting sorting_asc" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-sort="ascending"
																					aria-label="Rendering engine: activate to sort column descending">DATE/TIME</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Browser: activate to sort column ascending">CURRENCY</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Platform(s): activate to sort column ascending">AMOUNT</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="Engine version: activate to sort column ascending">TYPE</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="CSS grade: activate to sort column ascending">DETAIL</th>
																				<th class="sorting" tabindex="0"
																					aria-controls="example2" rowspan="1" colspan="1"
																					aria-label="CSS grade: activate to sort column ascending">STATUS</th>
																			</tr>
																		</thead>
																		<tbody>

																			<tr class="odd">

																				<td>200-01-01</td>
																				<td>USD</td>
																				<td>100.00</td>
																				<td>Deposit</td>
																				<td>Deposit in Progress</td>
																				<td>In Progress</td>
																			</tr>

																		</tbody>

																	</table>
																</div>
															</div>
															<div class="row">
																<div class="col-sm-12 col-md-5">
																	<div class="dataTables_info" id="example2_info"
																		role="status" aria-live="polite">Showing 1 to 10
																		of 57 entries</div>
																</div>
																<div class="col-sm-12 col-md-7">
																	<div class="dataTables_paginate paging_simple_numbers"
																		style="float: right" id="example2_paginate">
																		<ul class="pagination">
																			<li
																				class="paginate_button page-item previous disabled"
																				id="example2_previous"><a href="#"
																				aria-controls="example2" data-dt-idx="0"
																				tabindex="0" class="page-link">Previous</a></li>
																			<li class="paginate_button page-item active"><a
																				href="#" aria-controls="example2" data-dt-idx="1"
																				tabindex="0" class="page-link">1</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="2"
																				tabindex="0" class="page-link">2</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="3"
																				tabindex="0" class="page-link">3</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="4"
																				tabindex="0" class="page-link">4</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="5"
																				tabindex="0" class="page-link">5</a></li>
																			<li class="paginate_button page-item "><a
																				href="#" aria-controls="example2" data-dt-idx="6"
																				tabindex="0" class="page-link">6</a></li>
																			<li class="paginate_button page-item next"
																				id="example2_next"><a href="#"
																				aria-controls="example2" data-dt-idx="7"
																				tabindex="0" class="page-link">Next</a></li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>

												</div>
											</div>
										</div>
									</div>

								</div>
							</div>

							<div></div>
						</div>



						<!-- /.card-body -->

					</div>


				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>


		<script
			src="${pageContext.request.contextPath}/resources/plugins/select2/js/select2.full.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/plugins/inputmask/jquery.inputmask.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/plugins/bs-stepper/js/bs-stepper.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/plugins/dropzone/min/dropzone.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js"></script>


		<!-- Page specific script -->
		<script>
			$(function() {
				//Initialize Select2 Elements
				$('.select2').select2()

				//Initialize Select2 Elements
				$('.select2bs4').select2({
					theme : 'bootstrap4'
				})

				//Datemask dd/mm/yyyy
				$('#datemask').inputmask('dd/mm/yyyy', {
					'placeholder' : 'dd/mm/yyyy'
				})
				//Datemask2 mm/dd/yyyy
				$('#datemask2').inputmask('mm/dd/yyyy', {
					'placeholder' : 'mm/dd/yyyy'
				})
				//Money Euro
				$('[data-mask]').inputmask()

				//Date picker
				$('#reservationdate').datetimepicker({
					format : 'L'
				});

				//Date and time picker
				$('#reservationdatetime').datetimepicker({
					icons : {
						time : 'far fa-clock'
					}
				});

				//Date range picker
				$('#reservation').daterangepicker()
				//Date range picker with time picker
				$('#reservationtime').daterangepicker({
					timePicker : true,
					timePickerIncrement : 30,
					locale : {
						format : 'MM/DD/YYYY hh:mm A'
					}
				})
				//Date range as a button
				$('#daterange-btn')
						.daterangepicker(
								{
									ranges : {
										'Today' : [ moment(), moment() ],
										'Yesterday' : [
												moment().subtract(1, 'days'),
												moment().subtract(1, 'days') ],
										'Last 7 Days' : [
												moment().subtract(6, 'days'),
												moment() ],
										'Last 30 Days' : [
												moment().subtract(29, 'days'),
												moment() ],
										'This Month' : [
												moment().startOf('month'),
												moment().endOf('month') ],
										'Last Month' : [
												moment().subtract(1, 'month')
														.startOf('month'),
												moment().subtract(1, 'month')
														.endOf('month') ]
									},
									startDate : moment().subtract(29, 'days'),
									endDate : moment()
								},
								function(start, end) {
									$('#reportrange span')
											.html(
													start
															.format('MMMM D, YYYY')
															+ ' - '
															+ end
																	.format('MMMM D, YYYY'))
								})

				//Timepicker
				$('#timepicker').datetimepicker({
					format : 'LT'
				})

				//Bootstrap Duallistbox
				$('.duallistbox').bootstrapDualListbox()

				//Colorpicker
				$('.my-colorpicker1').colorpicker()
				//color picker with addon
				$('.my-colorpicker2').colorpicker()

				$('.my-colorpicker2').on(
						'colorpickerChange',
						function(event) {
							$('.my-colorpicker2 .fa-square').css('color',
									event.color.toString());
						})
			})
			// BS-Stepper Init
			document.addEventListener('DOMContentLoaded', function() {
				window.stepper = new Stepper(document
						.querySelector('.bs-stepper'))
			})

			// DropzoneJS Demo Code Start
			Dropzone.autoDiscover = false

			// Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
			var previewNode = document.querySelector("#template")
			previewNode.id = ""
			var previewTemplate = previewNode.parentNode.innerHTML
			previewNode.parentNode.removeChild(previewNode)

			var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
				url : "/target-url", // Set the url
				thumbnailWidth : 80,
				thumbnailHeight : 80,
				parallelUploads : 20,
				previewTemplate : previewTemplate,
				autoQueue : false, // Make sure the files aren't queued until manually added
				previewsContainer : "#previews", // Define the container to display the previews
				clickable : ".fileinput-button" // Define the element that should be used as click trigger to select files.
			})

			myDropzone
					.on(
							"addedfile",
							function(file) {
								// Hookup the start button
								file.previewElement.querySelector(".start").onclick = function() {
									myDropzone.enqueueFile(file)
								}
							})

			// Update the total progress bar
			myDropzone
					.on(
							"totaluploadprogress",
							function(progress) {
								document
										.querySelector("#total-progress .progress-bar").style.width = progress
										+ "%"
							})

			myDropzone.on("sending", function(file) {
				// Show the total progress bar when upload starts
				document.querySelector("#total-progress").style.opacity = "1"
				// And disable the start button
				file.previewElement.querySelector(".start").setAttribute(
						"disabled", "disabled")
			})

			// Hide the total progress bar when nothing's uploading anymore
			myDropzone.on("queuecomplete", function(progress) {
				document.querySelector("#total-progress").style.opacity = "0"
			})

			// Setup the buttons for all transfers
			// The "add files" button doesn't need to be setup because the config
			// `clickable` has already been specified.
			document.querySelector("#actions .start").onclick = function() {
				myDropzone.enqueueFiles(myDropzone
						.getFilesWithStatus(Dropzone.ADDED))
			}
			document.querySelector("#actions .cancel").onclick = function() {
				myDropzone.removeAllFiles(true)
			}
			// DropzoneJS Demo Code End
		</script>

		<script>
			$(function() {
				$("#example1").DataTable(
						{
							"responsive" : true,
							"lengthChange" : false,
							"autoWidth" : false,
							"buttons" : [ "copy", "csv", "excel", "pdf",
									"print", "colvis" ]
						}).buttons().container().appendTo(
						'#example1_wrapper .col-md-6:eq(0)');
				$('#example2').DataTable({
					"paging" : true,
					"lengthChange" : false,
					"searching" : false,
					"ordering" : true,
					"info" : true,
					"autoWidth" : false,
					"responsive" : true,
				});
			});
		</script>
		
		<script>
		const whichtab = new URLSearchParams(window.location.search).get("tab");
		if (whichtab != null){
			var tabID = "tab"+whichtab;
			
				document.getElementById(tabID).click();
			}</script>
</body>
</html>
