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

<style>
td {
	cursor: pointer;
}
</style>
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
								<li class="breadcrumb-item active" id="pagetitlesub"></li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Deposit Process Successed.</h3>
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
								<form>
									<div class="card-body ">
										<div class="row">
											<div class="col-md-12">


												<div class="callout callout-info">
												<h5>
													<i class="fas fa-info"></i> Deposit process of USD(<span id="amount"></span>) to account <span id="userid"></span> is <span style="color:green">success</span>
												</h5>
												We will notify you once the money is in the account.
											</div>

											</div>
											
										</div>

									</div>

								</form>

								<div class="card-footer ">


									<button type="button" class="btn btn-primary float-right"
										style="margin-left: 5px" id="depositbtn">View My Transaction History</button>


								</div>






							</div>
							<!-- /.card-body -->
						</div>





						<!-- /.card -->
					</div>
				</div>

				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>

		<div class="modal fade" id="modal-confirm" style="display: none;"
			aria-hidden="true">
			<div class="modal-dialog  modal-xl">

				<div class="modal-content">

					<div class="modal-header">
						<h4 class="modal-title">Deposit Confirmation</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body " id="printarea">
						<table id="modal-table" class="table table-sm">
							<thead>
								<tr>
									<th>Fields</th>
									<th>Informations</th>
								</tr>
							</thead>
							<tbody id="modal-table-body">
							</tbody>
						</table>

					</div>


					<div class="modal-footer justify-content-between">
						<button id="confirmbtn" class="btn btn-primary ">Confirm</button>


						<button type="button" class="btn btn-default" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">Cancel</span>
						</button>


					</div>
				</div>

			</div>

		</div>


		<span id="jsonoutput"></span>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
</body>
<script type="text/javascript">


		
		window.addEventListener('load', function () {
			const returnamount = new URLSearchParams(window.location.search).get('amount');
			const returnaccount = new URLSearchParams(window.location.search).get('account').toString();
			const returnid = new URLSearchParams(window.location.search).get('id');
			const returnsuccess = new URLSearchParams(window.location.search).get('success');
			
			if(returnamount != null && returnamount!= "" && returnaccount !=null && returnaccount !="" && returnid != null && returnid != "")
				{
				
				// call api log
				$
				.ajax({
					url : "${pageContext.request.contextPath}/wallet/RedirectingUrlLog?id="+returnid+"&ac="+returnaccount+"&am="+returnamount+"&success="+returnsuccess,
					type : 'get',
					datatype : "application/json",
					contentType : "application/json",
					async : false,
					data : '',
					success : function(data) {

						const jobject = JSON.parse(data.result);
						console.log(jobject.retcode);
						if (jobject.retcode == "0 Done") {
					
					
							document.getElementById("userid").innerHTML = returnaccount;
							document.getElementById("amount").innerHTML = returnamount;
							
							
							showloading(0);
						}

						else {
							const jobject = JSON.parse(data.result);
							alert(jobject.desc)
							showloading(0);

							return;
						}
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						showloading(0);
						return;
					}
				});
				
				}
			else
				{
				alert("invalid redirecting...");
				}
			})





	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}
</script>

<script type="text/javascript">
	document.getElementById("depositbtn").addEventListener("click", function() {
		// Code to be executed when the button is clicked
		showloading(1);
		if (checkInputs()) {
			confirmDepositAccount();

		} else {
			showloading(0);
		}
	});

	function checkInputs() {
		showloading(1);
		var inputs = document.getElementsByTagName("input");
		for (var i = 0; i < inputs.length; i++) {
			if (inputs[i].value === "") {
				alert("Please fill out all the necessary fields!");

				return false;
			}
		}

		return true;
	}
</script>



<script type="text/javascript">
	function confirmDepositAccount() {
		var amount = document.getElementById("money").value;
		$
				.ajax({
					url : "${pageContext.request.contextPath}/wallet/CreateCheckoutPayment?amount="
							+ amount,
					type : 'get',
					datatype : "application/json",
					contentType : "application/json",
					async : false,
					data : '',
					success : function(data) {

						const jobject = JSON.parse(data.result);
						console.log(jobject.status);
						if (jobject.status == "success") {

							var paymenturl = jobject.payment_url;
							window.location.href = paymenturl;
							$('#modal-confirm').modal('hide');
							showloading(0);
						}

						else {

							alert(jobject.answer)
							showloading(0);

							return;
						}
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						showloading(0);
						return;
					}
				});

	}

	function convertFormToJSON() {
		const array = $("form").serializeArray(); // Encodes the set of form elements as an array of names and values.
		const json = {};
		$.each(array, function() {
			json[this.name] = this.value || "";
		});

		json.Group = document.getElementById("group").options[document
				.getElementById("group").selectedIndex].text;
		return json;
	}
</script>



<!-- DataTables  & Plugins -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables/jquery.dataTables.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/jszip/jszip.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/pdfmake/pdfmake.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/pdfmake/vfs_fonts.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

<script>
	$(function() {
		$("#example1").DataTable({
			"responsive" : true,
			"lengthChange" : false,
			"autoWidth" : false,
			"buttons" : [ "copy", "csv", "excel", "pdf", "print", "colvis" ]
		}).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
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
</html>
