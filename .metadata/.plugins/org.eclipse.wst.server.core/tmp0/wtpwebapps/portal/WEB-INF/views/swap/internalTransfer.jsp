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
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0" id="pagetitlemain"></h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active">Internal Transfer</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>
			<form class="mega-vertical" name="transferForm" id="transferForm">
				<!-- Main content -->
				<section class="content">
					<div class="container-fluid">


						<div class="row">
							<div class="col-12">

								<!-- /.card -->

								<div class="card card-primary">
									<div class="card-header">
										<h3 class="card-title">Transfer Tools</h3>
									</div>
									<div class="card-body" id="transferbox">
										<div class="row" id="transferrow0">
											<div class="col-3">
												<div class="form-group" data-select2-id="29">
													<label>From Account</label> <select
														class="form-control select2 select2-hidden-accessible"
														id="withdrawallogin" name="withdrawallogin"
														onchange="getPaymentamt();">
														<option value="">Select Your Account</option>
														<c:forEach items="${userAccountList }" var="accountinfo"
															varStatus="status">
															<option value="${accountinfo.login }">${accountinfo.login }[${accountinfo.name }]</option>
														</c:forEach>
													</select><span
														class="select2 select2-container select2-container--default select2-container--below select2-container--focus"
														dir="ltr" data-select2-id="2" style="width: 100%;"></span><span
														class="dropdown-wrapper" aria-hidden="true"></span>
												</div>
											</div>
											<div class="col-4">
												<div class="form-group" data-select2-id="29">
													<label>To Account</label> <select
														class="form-control select2 select2-hidden-accessible"
														id="depositlogin" name="depositlogin">
														<option value="">Select Your Account</option>
														<c:forEach items="${userAccountList }" var="accountinfo"
															varStatus="status">
															<option value="${accountinfo.login }">${accountinfo.login }[${accountinfo.name }]</option>
														</c:forEach>
													</select><span
														class="select2 select2-container select2-container--default select2-container--below select2-container--focus"
														dir="ltr" data-select2-id="2" style="width: 100%;"></span><span
														class="dropdown-wrapper" aria-hidden="true"></span>
												</div>
											</div>

											<div class="col-1">
												<div class="form-group">
													<label>Available</label>
													<div id="div_marginfree" style="text-align: center">0.00</div>
												</div>
											</div>

											<div class="col-4">
												<div class="form-group">
													<label for="exampleInputEmail1">Amount</label> <input
														class="form-control" id="paymentamtval"
														name="paymentamtval" placeholder="Enter Amount"
														type="text" required="">
												</div>
											</div>
										</div>
									</div>
									<!-- /.card-body -->
									<div class="card-footer">


										<button class="btn btn-primary float-right"
											id="transferAccountBtn"
											onclick="transferAccount();return false">Submit</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.container-fluid -->
				</section>
			</form>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
</body>
<script type="text/javascript">
	function getPaymentamt() {
		var p_withdrawallogin = document.getElementById("withdrawallogin");

		if (p_withdrawallogin.options.length <= 1
				|| p_withdrawallogin.options[p_withdrawallogin.selectedIndex].value == "") {
			alert('Please select an account to withdraw from.');
			document.getElementById("withdrawallogin").focus();
			return;
		}

		var withdrawallogin = p_withdrawallogin.options[p_withdrawallogin.selectedIndex].value;

		$
				.ajax({
					url : '${pageContext.request.contextPath}/crm/ajax/checkMarginWithServerinfo?login='
							+ withdrawallogin,
					type : 'get',
					async : false,
					success : function(data) {
						if (data.result == "SUCCESS") {
							//alert( 'margin free : ' + data.MarginFree);
							$("#div_marginfree").html(data.MarginFree);
							$("#marginfree").val(data.MarginFree);
						} else {
							$("#div_marginfree").html("0");
							$("#marginfree").val("0");
							if (data.resultmessage == "ERROR-NOMONEY") {
								alert('There is no withdrawal amount available. Please select another account.');
							} else {
								alert("An error has occurred. Please try again. \n"
										+ data.resultmessage);
							}
							return;

						}
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						return;
					}
				});

	}

	function transferAccount() {

		$("#transferAccountBtn").attr('disabled', true);

		// 출금금액 보다 작은 금액 이체 
		var marginfree = parseFloat($("#marginfree").val());
		var realpaymentamt = parseFloat($("#paymentamtval").val());

		if ($("#marginfree").val() == "" || marginfree <= 0) {
			alert('<spring:message code="atw.alert.nomoney" text="" />');
			$("#transferAccountBtn").attr('disabled', false);
			return;
		}

		if ($("#paymentamtval").val() == "" || realpaymentamt <= 0) {
			alert('<spring:message code="atw.alert.enteraccount" text="" />');
			$("#paymentamtval").focus();
			$("#transferAccountBtn").attr('disabled', false);
			return;
		}

		if (marginfree < realpaymentamt) {
			alert('<spring:message code="ata.alert.lessmoney" text="" />');
			$("#paymentamtval").focus();
			$("#transferAccountBtn").attr('disabled', false);
			return;
		}

		// 같은 계좌인지 확인작업 진행.
		var withdrawallogin = $("#withdrawallogin option:selected").val();
		var depositlogin = $("#depositlogin option:selected").val();

		if (withdrawallogin == "") {
			alert('Please select a withdrawal account.');
			$("#withdrawallogin").focus();
			$("#transferAccountBtn").attr('disabled', false);
			return;
		}

		if (depositlogin == "") {
			alert('Please select a deposit account.');
			$("#depositlogin").focus();
			$("#transferAccountBtn").attr('disabled', false);
			return;
		}

		if (withdrawallogin == depositlogin) {
			alert('<spring:message code="ata.alert.sameaccount" text="" />');
			$("#depositlogin").focus();
			$("#transferAccountBtn").attr('disabled', false);
			return;
		}

		alert("1");
		$
				.ajax({
					url : '${pageContext.request.contextPath}/trader/ajax/accountTransferWithServerinfo',
					type : 'post',
					async : false,
					data : $("#transferForm").serialize(),
					success : function(data) {
						if (data.result == "SUCCESS") {
							alert('<spring:message code="common.success" text="" />');
							self.location.href = "${pageContext.request.contextPath}/crm/internalTransfer";
						} else {
							alert("Transfer operation failed. Please check and try again. \n"
									+ data.resultmessage);
							$("#transferAccountBtn").attr('disabled', false);
							return;
						}
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						$("#transferAccountBtn").attr('disabled', false);
						return;
					}
				});

	}
</script>
</html>
