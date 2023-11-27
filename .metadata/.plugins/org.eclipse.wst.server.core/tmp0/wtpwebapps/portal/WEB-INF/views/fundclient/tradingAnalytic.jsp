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
								<li class="breadcrumb-item active">Trading Analytics</li>
							</ol>
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->

			<section class="content">

				<div class="row">

					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div class="form-group" data-select2-id="29">
									<label>Account No :</label> <select
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
						</div>

					</div>
					<div class="col-12 col-sm-6 col-md-4">
						<div class="info-box">
							<span class="info-box-icon bg-primary elevation-1"><i
								class="fa fa-calendar"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">OPEN ACCOUNT DATE</span> <span
									class="info-box-number"> 2022-09-29 </span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-12 col-sm-6 col-md-4">
						<div class="info-box mb-3">
							<span class="info-box-icon bg-warning elevation-1"><i
								class="fa fa-money"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">DEPOSIT SUM</span> <span
									class="info-box-number">$10.00</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->

					<!-- fix for small devices only -->
					<div class="clearfix hidden-md-up"></div>

					<div class="col-12 col-sm-6 col-md-4">
						<div class="info-box mb-3">
							<span class="info-box-icon bg-success elevation-1"><i
								class="fa fa-share"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">WITHDRAWAL SUM</span> <span
									class="info-box-number">$10.00</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->

					<!-- /.col -->
				</div>
				<div class="row">
					<div class="col-12 col-sm-6 col-md-4">
						<div class="info-box">
							<span class="info-box-icon bg-purple elevation-1"><i
								class="fa fa-newspaper-o"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">BALANCE SUM</span> <span
									class="info-box-number"> $ 10.00 </span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-12 col-sm-6 col-md-4">
						<div class="info-box mb-3">
							<span class="info-box-icon bg-danger elevation-1"><i
								class="fa fa-bars"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">EQUITY SUM</span> <span
									class="info-box-number">$10.00</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->

					<!-- fix for small devices only -->
					<div class="clearfix hidden-md-up"></div>

					<div class="col-12 col-sm-6 col-md-4">
						<div class="info-box mb-3">
							<span class="info-box-icon bg-pink elevation-1"><i
								class="fa fa-suitcase"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">FLOATING SUM</span> <span
									class="info-box-number">$10.00</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->

					<!-- /.col -->
				</div>

				<div class="row" id="sec3">
					<div class="col-md-6">



						<div class="card ">

							<div class="card-body">
								<table class="table ">
									<tbody>
										<tr>

											<td><strong>MT5 Account Number</strong></td>
											<td>123456</td>
										</tr>
										<tr>

											<td><strong>Total Net Profit</strong></td>
											<td>0)</td>
										</tr>
										<tr>

											<td><strong>Total Trading Lot</strong></td>
											<td>0 lot</td>
										</tr>
										<tr>

											<td><strong>Average Trading Lot</strong></td>

											<td>0 lot</td>
										</tr>
										<tr>

											<td><strong>Average Holding Time</strong></td>
											<td>0</td>
										</tr>
										<tr>

											<td><strong>Total Number of Trade</strong></td>
											<td>0</td>
										</tr>
										<tr>

											<td><strong>Profitable Trade</strong></td>
											<td>0</td>
										</tr>
										<tr>

											<td><strong>Win Rate</strong></td>
											<td>0</td>
										</tr>

									</tbody>
								</table>

							</div>
							<!-- /.card-body -->


						</div>


					</div>
					<!-- left column -->
					<div class="col-md-6">




						<div class="card ">

							<div class="card-body">
								<table class="table ">
									<tbody>
										<tr>

											<td><strong>Average Trading (Daily)</strong></td>
											<td>123456</td>
										</tr>
										<tr>

											<td><strong>Average Trading (Weekly)</strong></td>
											<td>0)</td>
										</tr>
										<tr>

											<td><strong>Number of Stop-out Trade</strong></td>
											<td>0 lot</td>
										</tr>
										<tr>

											<td><strong>Recent Profit (Weekly)</strong></td>

											<td>0 lot</td>
										</tr>
										<tr>

											<td><strong>Recent Profit (Monthly)</strong></td>
											<td>0</td>
										</tr>
										<tr>

											<td><strong>Maximum Loss Amount</strong></td>
											<td>0</td>
										</tr>
										<tr>

											<td><strong>Maximum Profit Amount</strong></td>
											<td>0</td>
										</tr>
										<tr>

											<td><strong>Gross Loss</strong></td>
											<td>0</td>
										</tr>
										<tr>

											<td><strong>Gross Profit</strong></td>
											<td>0</td>
										</tr>

									</tbody>
								</table>

							</div>
							<!-- /.card-body -->

						</div>


					</div>
					<!-- right column -->
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
</body>
</html>
