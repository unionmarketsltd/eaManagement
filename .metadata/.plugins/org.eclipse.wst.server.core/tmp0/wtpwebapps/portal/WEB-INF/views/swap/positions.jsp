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
<h5 class="mb-2">Summary Positions</h5>
					<div class="row">
						<div class="col-12 col-sm-6 col-md-3">
							<div class="info-box">
								<span class="info-box-icon bg-info"><i
									class="far fa-envelope"></i></span>
								<div class="info-box-content">
									<span class="info-box-text">Total Lot</span> <span
										class="info-box-number" id="lotdiv">0</span>
								</div>

							</div>

						</div>

						<div class="col-12 col-sm-6 col-md-3">
							<div class="info-box">
								<span class="info-box-icon bg-success"><i
									class="far fa-flag"></i></span>
								<div class="info-box-content">
									<span class="info-box-text">Positions Profit (USD)</span> <span
										class="info-box-number" id="profitdiv">0</span>
								</div>

							</div>

						</div>

						<div class="col-12 col-sm-6 col-md-3">
							<div class="info-box">
								<span class="info-box-icon bg-warning"><i
									class="far fa-copy"></i></span>
								<div class="info-box-content">
									<span class="info-box-text">Total Swap (USD)</span> <span
										class="info-box-number" id="swapdiv">0</span>
								</div>

							</div>

						</div>
						
						
						<div class="col-12 col-sm-6 col-md-3">
							<div class="info-box">
								<span class="info-box-icon bg-danger elevation-1"><i
									class="fa fa-th-list"></i></span>
								<div class="info-box-content">
									<span class="info-box-text">Total Profit (USD)</span> <span
										class="info-box-number" id="totalprofitdiv">0</span>
								</div>

							</div>

						</div>

						

					</div>
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Positions List</h3>
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
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Close Position Confirmation</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="col-md-12 ">
						<div class=" row" style="text-align: center">
							<div class="col-sm-3">
								<i class="fa fa-exclamation-triangle" aria-hidden="true"
									style="color: #ffbc00; font-size: 45px"></i>
							</div>
							<div class="col-sm-9" style="color: #212529" >Are you sure want to close the position of: <span id="modalposition"></span></div>

						</div>
						
						
					

					</div>
				</div>
				<div class="modal-footer justify-content-between">
					<button id="confirmbtn" class="btn btn-primary " >confirm</button>
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
					url : '${pageContext.request.contextPath}/swap/PositionGetList?all=1&page='
							+ page,
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
												+ page
												+ " of "
												+ page
												+ ")";

										insertTableRowWithSelectedColumn(
												"datatable", Jarrayanswer,
												true);
									} else {
										document.getElementById("datatable").innerHTML  = '<thead><tr></tr></thead> <tbody></tbody>';
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
										document.getElementById("lotdiv").innerHTML =  Jarrayanswer.lot;
										document.getElementById("profitdiv").innerHTML =  parseFloat(
												Jarrayanswer.profit).toFixed(2);
										document.getElementById("swapdiv").innerHTML =  parseFloat(Jarrayanswer.swap).toFixed(2);
										document.getElementById("totalprofitdiv").innerHTML =  (parseFloat(Jarrayanswer.swap+Jarrayanswer.profit).toFixed(2));

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

		const fieldtoshow = [ "Position", "Symbol", "Action", "Volume",
				"PriceOpen", "PriceCurrent", "Profit", "TimeCreate", "PriceSL",
				"PriceTP", "Storage" ];
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
				var positionid = document.getElementById(tableid).rows[1].cells[0].innerHTML;
				var symbol = document.getElementById(tableid).rows[1].cells[1].innerHTML;
				var lot = document.getElementById(tableid).rows[1].cells[8].innerHTML;
				var type = document.getElementById(tableid).rows[1].cells[2].innerHTML;
				var cell = row.insertCell(fieldIndex.length);
				//openmodalconfirm(position)
				//cell.innerHTML = "<button  onclick='openmodalconfirm(" + positionid +")' class='btn btn-default'>Close</button>";
			
				cell.innerHTML = "<button  onclick='openmodalconfirm(" + positionid + ",\""+symbol+"\","+lot+",\""+type+"\")' class='btn btn-default'>Close</button>";
			}

		}

		GetPositionSummary100();
		var table = document.getElementById("datatable");

		// Create an empty <tr> element and add it to the 1st position of the table:
		var row = table.insertRow(table.rows.length);

		// Insert new cells (<td> elements) at the 1st and 2nd position of the "new" <tr> element:
		 row.insertCell(0).innerHTML = "";
		 row.insertCell(1).innerHTML = "";
		 row.insertCell(2).innerHTML = "";
		 row.insertCell(3).innerHTML = "";
		 row.insertCell(4).innerHTML = "";
		 row.insertCell(5).innerHTML = "";
		 row.insertCell(6).innerHTML = "";
		 row.insertCell(7).innerHTML = "Total:";
		 row.insertCell(8).innerHTML =  document.getElementById("lotdiv").innerHTML;
		 row.insertCell(9).innerHTML = document.getElementById("profitdiv").innerHTML;
		 row.insertCell(10).innerHTML = document.getElementById("swapdiv").innerHTML;
		 row.insertCell(11).innerHTML = document.getElementById("totalprofitdiv").innerHTML +" USD";
		 
	
	
		
		
	}

	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}
	
	
	function closedPosition(position,symbol,lot,type)
	{
		//alert(position + symbol);
		
		
		$
		.ajax({
			url : "${pageContext.request.contextPath}/swap/closePosition?pid="+position+"&symbol="+symbol+"&lot="+lot+"&type="+type,
			type : 'get',
			async : false,
			data : "",
			success : function(data) {
				if (data.result.indexOf("0 Done" >= 0)) {
					console.log(data.result);
					const jobject = JSON.parse(data.result);
					console.log(jobject.retcode);
					if (jobject.retcode == "0 Done") {
						alert("success closed position :"+position );
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
	
	function openmodalconfirm(position , symbol,lot,type){
	document.getElementById("modalposition").innerHTML = position;
	document.getElementById("confirmbtn").onclick = function() { closedPosition(position,symbol,lot,type); }
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
