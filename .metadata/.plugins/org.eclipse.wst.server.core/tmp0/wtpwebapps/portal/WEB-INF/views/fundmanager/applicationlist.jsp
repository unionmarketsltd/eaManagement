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
									<h3 class="card-title">New Application List</h3>
									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body table-responsive p-0">
									<table class="table table-hover text-nowrap" id="datatable">
										<thead>
											<tr>

											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>
								</div>

								<div class="card-footer ">
									<!-- <button type="button" class="btn btn-primary float-right"
										style="margin-left: 5px" " onclick="nextpage()">next</button>
									<button type="button" class="btn btn-primary float-right"
										onclick="prevpage()">prev</button> -->


								</div>
								<!-- /.card-body -->
							</div>





							<!-- /.card -->
						</div>
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
						<h4 class="modal-title">Application Documents From Customer</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">

						<div class="row ">
							<div class="col-md-12">
								ID : <span id="RecordID"></span>
							</div>
							<div class="col-md-12">
								Name : <span id="clientname"></span>
							</div>
							<div class="col-md-12">
								Email : <span id="clientemail"></span>
							</div>
							<br> <br>

							<div class=" card col-md-6">
								<span>ID-Card</span><img id="idcard" src="" style="width: 100%">
								<a download=ID id="pdfID">Click here to download customer's ID.pdf </a>
							</div>
							<div class="card col-md-6">
								<span>POA</span><img id="poa" src="" alt="" style="width: 100%">
								<a download=POA id="pdfPOA">Click here to download customer's POA.pdf </a>
							</div>




						</div>
						
						
					</div>
					<div class="modal-footer justify-content-between">
						<button id="confirmbtn" class="btn btn-primary "
							onclick="createaccount()">Confirm and create trading
							account for this client</button>
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
		<form action="" name="accountListFrm" id="accountListFrm" method="get">
			<input type="hidden" id="login" name="login" value="<%=s_Login%>">
		</form>
</body>
<script type="text/javascript">
	var jarray;

	var totalpage = 0;
	var currentpage = 1;

	function nextpage()

	{
		if ((currentpage + 1) <= totalpage) {
			currentpage = currentpage + 1;
			GetPositionList(currentpage);
		}
	}

	function prevpage()

	{
		if ((currentpage - 1) >= 1) {
			currentpage = currentpage - 1;
			GetPositionList(currentpage);
		}
	}

	function GetTotalPosition() {
		$.ajax({
			url : '${pageContext.request.contextPath}/swap/PositionGetTotal',
			type : 'get',
			async : false,
			data : $("#accountListFrm").serialize(),
			success : function(data) {
				if (data.result.indexOf("0 Done" >= 0)) {
					console.log(data.result);
					const jobject = JSON.parse(data.result);
					console.log(jobject.retcode);
					if (jobject.retcode == "0 Done") {
						if (jobject.hasOwnProperty('answer')) {
							const janswer = jobject.answer;
							var totalOrders = janswer["total"];

							totalpage = Math.ceil(totalOrders / 5);

							//alert("total page:"+totalpage);
						} else {
							//alert("server return error code");
							//alert(data.result);
							toastmsg("server return error", data.result);
						}
					}

				} else {
					alert(data.result);
					console.log(data.result);
					return;
				}
			},
			error : function(xhr, status) {
				alert("ERROR : " + xhr + " : " + status);
				return;
			}
		});
	}
	GetTotalPosition();

	function GetPositionList(page) {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/fundmanager/GetNewApplication',
					type : 'get',
					async : false,
					data : $("#accountListFrm").serialize(),
					success : function(data) {
						if (data.result.indexOf("0 Done" >= 0)) {
							console.log(data.result);
							const jobject = JSON.parse(data.result);
							console.log(jobject.retcode);
							if (jobject.retcode == "0 Done") {
								if (jobject.hasOwnProperty('answer')) {
									//alert(JSON.stringify(jobject.answer));
									const Jarrayanswer = jobject.answer;
									if (Object.keys(Jarrayanswer).length > 0) {

										document.getElementById("pagenumber").innerHTML = "(Page "
												+ page + " of " + page + ")";

										insertTableRowWithSelectedColumn(
												"datatable", Jarrayanswer, true);
									} else {
										document.getElementById("datatable").innerHTML = '<thead><tr></tr></thead> <tbody></tbody>';
										document.getElementById("pagenumber").innerHTML = "There is no data to show here."
										toastmsg("Friendly reminder: ",
												"There is no data to show in the table.");
									}
								} else {
									//alert("server return error code");
									//alert(data.result);
									toastmsg("server return error", data.result);
								}
							}

						} else {
							alert(data.result);
							console.log(data.result);
							return;
						}
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						return;
					}
				});
	}
	GetPositionList(1);

	function GetPositionSummary100() {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/swap/PositionGet100',
					type : 'get',
					async : false,
					data : "",
					success : function(data) {
						if (data.result.indexOf("0 Done" >= 0)) {
							console.log(data.result);
							const jobject = JSON.parse(data.result);
							console.log(jobject.retcode);
							if (jobject.retcode == "0 Done") {
								if (jobject.hasOwnProperty('answer')) {
									//alert(JSON.stringify(jobject.answer));
									const Jarrayanswer = jobject.answer;
									if (Object.keys(Jarrayanswer).length > 0) {
										document.getElementById("lotdiv").innerHTML = Jarrayanswer.lot;
										document.getElementById("profitdiv").innerHTML = parseFloat(
												Jarrayanswer.profit).toFixed(2);
										document.getElementById("swapdiv").innerHTML = parseFloat(
												Jarrayanswer.swap).toFixed(2);

									}
								} else {
									//alert("server return error code");
									//alert(data.result);
									toastmsg("server return error", data.result);
								}
							}

						} else {
							alert(data.result);
							console.log(data.result);
							return;
						}
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						return;
					}
				});
	}

	function insertTableRowWithAllColumn(tableid, array) {
		document.getElementById(tableid).innerHTML = '<thead><tr></tr></thead> <tbody></tbody>';

		let header = Object.keys(array[0]);
		for (let i = 0; i < header.length; i++) {
			var tr = document.getElementById(tableid).tHead.children[0], th = document
					.createElement('th');
			th.innerHTML = header[i];
			tr.appendChild(th);
		}
		for (let i = array.length - 1; i >= 0; i--) {
			console.log("inserttablerow");
			console.log(Object.keys(array[i]).length);
			var table = document.getElementById("datatable");
			var row = table.insertRow(1);

			let keylength = Object.keys(array[0]).length - 1;
			for (let j = 0; j < Object.keys(array[i]).length; j++) {
				var cell = row.insertCell(0);
				cell.innerHTML = Object.values(array[i])[keylength - j]
						.toString();
			}

		}

	}

	function insertTableRowWithSelectedColumn(tableid, array,
			enableButtonAction) {
		document.getElementById(tableid).innerHTML = '<thead><tr></tr></thead> <tbody></tbody>';

		const fieldtoshow = [ "RecordID", "ClientStatus", "AssignedManager",
				"Comment", "PersonName", "PersonGender", "ContactEmail",
				"ContactPhone", "AddressCountry", "AddressPostcode",
				"AddressStreet", "AddressState", "AddressCity", "TradingGroup" ];
		var fieldIndex = [];

		let header = Object.keys(array[0]);

		for (let i = 0; i < header.length; i++) {

			for (let j = 0; j < fieldtoshow.length; j++) {
				if (header[i] === fieldtoshow[j]) {

					var headername;
					if (header[i] === "Storage") {
						headername = "Swap";
					} else if (header[i] === "Volume") {
						headername = "Lot";
					} else {
						headername = header[i];
					}

					fieldIndex.push(i);
					var tr = document.getElementById(tableid).tHead.children[0];
					th = document.createElement('th');
					th.innerHTML = headername;
					tr.appendChild(th);
				}

			}

		}

		if (enableButtonAction) // add edit button
		{
			var tr = document.getElementById(tableid).tHead.children[0], th = document
					.createElement('th');
			th.innerHTML = "Action";
			tr.appendChild(th);

		}

		for (let i = array.length - 1; i >= 0; i--) {
			console.log("inserttablerow");
			console.log(Object.keys(array[i]).length);
			var table = document.getElementById(tableid);
			var row = table.insertRow(1);

			let keylength = fieldIndex.length - 1;
			for (let j = 0; j < fieldIndex.length; j++) {
				var cell = row.insertCell(0);

				if (header[fieldIndex[keylength - j]] === "TimeCreate") //datetimeconvert
				{
					cell.innerHTML = convertUnixtoLocalTime(Object
							.values(array[i])[fieldIndex[keylength - j]]);
				}

				else if (header[fieldIndex[keylength - j]] === "Volume") //datetimeconvert
				{
					var number = parseInt(Object.values(array[i])[fieldIndex[keylength
							- j]])
					number = number / 10000;
					cell.innerHTML = (number.toString());
				}

				else if (header[fieldIndex[keylength - j]] === "Action") //datetimeconvert
				{

					if (Object.values(array[i])[fieldIndex[keylength - j]]
							.toString() == "1") {
						cell.innerHTML = "SELL";
					}
					if (Object.values(array[i])[fieldIndex[keylength - j]]
							.toString() == "0") {
						cell.innerHTML = "BUY";
					}
				} else {
					cell.innerHTML = Object.values(array[i])[fieldIndex[keylength
							- j]].toString();
				}

			}

			if (enableButtonAction) {
				var positionid = document.getElementById(tableid).rows[1].cells[12].innerHTML;
				var name = document.getElementById(tableid).rows[1].cells[9].innerHTML;
				var email = document.getElementById(tableid).rows[1].cells[11].innerHTML;
				var cell = row.insertCell(fieldIndex.length);
				//openmodalconfirm(position)
				//cell.innerHTML = "<button  onclick='openmodalconfirm(" + positionid +")' class='btn btn-default'>Close</button>";

				cell.innerHTML = "<button  onclick='loaddocument(" + positionid
						+ ",\"" + name + "\",\"" + email
						+ "\")' class='btn btn-default'>View Details</button>";
			}

		}

		GetPositionSummary100();

	}

	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}

	function closedPosition(position, symbol, lot, type) {
		//alert(position + symbol);

		$.ajax({
			url : "${pageContext.request.contextPath}/swap/closePosition?pid="
					+ position + "&symbol=" + symbol + "&lot=" + lot + "&type="
					+ type,
			type : 'get',
			async : false,
			data : "",
			success : function(data) {
				if (data.result.indexOf("0 Done" >= 0)) {
					console.log(data.result);
					const jobject = JSON.parse(data.result);
					console.log(jobject.retcode);
					if (jobject.retcode == "0 Done") {
						alert("success closed position :" + position);
						GetPositionList(1);
						$('#modal-confirm').modal("hide");
					}

				} else {
					alert(data.result);
					console.log(data.result);
					return;
				}
			},
			error : function(xhr, status) {
				alert("ERROR : " + xhr + " : " + status);
				return;
			}
		});

	}

	function loaddocument(id, name, email) {
		//alert(position + symbol);

		$
				.ajax({
					url : "${pageContext.request.contextPath}/fundmanager/GetNewApplicantDoc?id="
							+ id,
					type : 'get',
					async : false,
					data : "",
					success : function(data) {
						if (data.result.indexOf("0 Done" >= 0)) {
							console.log(data.result);
							const jobject = JSON.parse(data.result);
							console.log(jobject.retcode);
							if (jobject.retcode == "0 Done") {
								console.log(jobject.answer[0].FileContent);
								//const jsonarray =  JSON.parse(jobject.answer);
								//console.log(jsonarray[0]);

								document.getElementById('RecordID').innerHTML = id;
								document.getElementById('clientname').innerHTML = name;
								document.getElementById('clientemail').innerHTML = email;
								var fileextensionID = jobject.answer[0].FileName
										.split('.').pop();

								if (fileextensionID.indexOf("jpg") >= 0) {
									document.getElementById("idcard").src = "data:image/jpeg;base64,"
											+ jobject.answer[0].FileContent;
									document.getElementById("idcard").style.display = '';
									document.getElementById("pdfID").style.display = 'none';
								}

								if (fileextensionID.indexOf("png") >= 0) {
									document.getElementById("idcard").src = "data:image/png;base64,"
											+ jobject.answer[0].FileContent;
									document.getElementById("idcard").style.display = '';
									document.getElementById("pdfID").style.display = 'none';
									
								}

								if (fileextensionID.indexOf("pdf") >= 0) {
									document.getElementById("pdfID").href = "data:application/pdf;base64,"
											+ jobject.answer[0].FileContent;
									
									document.getElementById("idcard").style.display = 'none';
									document.getElementById("pdfID").style.display = '';
								}

								document.getElementById('idcard').title = jobject.answer[0].FileName;
								document.getElementById('idcard').alt = jobject.answer[0].FileName;

								var fileextensionPOA = jobject.answer[1].FileName
										.split('.').pop();

								if (fileextensionPOA.indexOf("jpg") >= 0) {
									document.getElementById("poa").src = "data:image/jpeg;base64,"
											+ jobject.answer[1].FileContent;
									
									document.getElementById("poa").style.display = '';
									document.getElementById("pdfPOA").style.display = 'none';
								}

								if (fileextensionPOA.indexOf("png") >= 0) {
									document.getElementById("poa").src = "data:image/png;base64,"
											+ jobject.answer[1].FileContent;
									document.getElementById("poa").style.display = '';
									document.getElementById("pdfPOA").style.display = 'none';
								}

								if (fileextensionPOA.indexOf("pdf") >= 0) {
									document.getElementById("pdfPOA").href = "data:application/pdf;base64,"
											+ jobject.answer[1].FileContent;
									document.getElementById("poa").style.display = 'none';
									document.getElementById("pdfPOA").style.display = '';
								}

								
								document.getElementById('poa').title = jobject.answer[1].FileName;
								document.getElementById('poa').alt = jobject.answer[1].FileName;
								$('#modal-confirm').modal("show");
							}

						} else {
							alert(data.result);
							console.log(data.result);
							return;
						}
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						return;
					}
				});

	}

	function createaccount() {
		//alert(position + symbol);
document.getElementById('confirmbtn').innerHTML ='<i class="fa fa-spinner fa-spin"></i>';
		var id = document.getElementById('RecordID').innerHTML;
		var name = document.getElementById('clientname').innerHTML;
		var email = document.getElementById('clientemail').innerHTML;
		$
				.ajax({
					url : "${pageContext.request.contextPath}/fundmanager/ConfirmNewApplicant?id="
							+ id + "&name=" + name + "&email=" + email,
					type : 'get',
					async : true,
					data : "",
					success : function(data) {
						if (data.result.indexOf("0 Done" >= 0)) {
							console.log(data.result);
							const jobject = JSON.parse(data.result);
							console.log(jobject.retcode);
							if (jobject.retcode == "0 Done") {
								alert("Success Approve and Created an account to the client.");

								$('#modal-confirm').modal("hide");
								location.reload();
							}

						} else {
							alert(data.result);
							console.log(data.result);
							return;
						}
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);
						return;
					}
				});

	}

	function openmodalconfirm(position, symbol, lot, type) {
		document.getElementById("modalposition").innerHTML = position;
		document.getElementById("confirmbtn").onclick = function() {
			closedPosition(position, symbol, lot, type);
		}
		$('#modal-confirm').modal();
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
