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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
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
							<h1 class="m-0" id="pagetitlemain">Swap Calculator</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" id="pagetitlesub">Swap
									Calculator</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">

					<div class="card">
						<div class="card-header ui-sortable-handle" style="cursor: move;">
							<h3 class="card-title">
								<i class="fas fa-calculator mr-1"></i> Profit Calculator Tool
							</h3>

						</div>
						<div class="card-body">
							<div class="tab-content p-0">

								<div class="row">
									<div class="col-md-6">
										<div class="card">

											<!-- /.card-header -->
											<div class="card-body table-sm p-0">
												<table class="table table-hover text-nowrap" id="datatable">
													<thead>
														<tr>

														</tr>
													</thead>
													<tbody>

													</tbody>
												</table>
											</div>


											<!-- /.card-body -->
										</div>





										<!-- /.card -->
									</div>



									<div class="col-md-6 card">
									<div class="card-header"><i class="fa fa-bars" aria-hidden="true"></i> Parameters</div>

										<form class="form-horizontal">
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-3 col-form-label">Select
														a Period</label>
													<div class="col-sm-9">
														<div class="btn-group btn-group-toggle"
															data-toggle="buttons">
															<label class="btn btn-secondary"> <input
																type="radio" name="options" id="period_1"
																autocomplete="off" checked="true"> Week
															</label> <label class="btn btn-secondary"> <input
																type="radio" name="options" id="period_2"
																autocomplete="off"> Month
															</label> <label class="btn btn-secondary active"> <input
																type="radio" name="options" id="period_3"
																autocomplete="off"> Year
															</label>
														</div>
													</div>
												</div>
												<div class="form-group row">
													<label for="inputPassword3" class="col-sm-3 col-form-label">
														Enter desire LOT:</label>
													<div class="col-sm-9">
														<input type="number" class="form-control" id="lot"
															placeholder="Lot" value="1" step="0.01">
													</div>
												</div>
												
												<div class="form-group row">
													<label for="inputPassword3" class="col-sm-3 col-form-label">
														Total LOT:</label>
													<div class="col-sm-9">
														<input type="number" class="form-control" id="totallot"
															placeholder="Lot" value="0" disabled>
													</div>
												</div>
												
												<div class="form-group row">
													<label for="inputPassword3" class="col-sm-3 col-form-label">
														Expected total swap profit (USD):</label>
													<div class="col-sm-9">
														<input type="number" class="form-control" id="profit"
															placeholder="profit" value="0.000" disabled
															style="font-weight: 600">
													</div>
												</div>
												<button type="button" class="btn btn-primary float-right "
													style="margin-left: 5px" onclick="getSelectedElement()">Calculate</button>
											</div>

										

										</form>

									</div>
								</div>
							</div>
						</div>

					</div>

				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
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
	var DistinctSymbolList = [];
	function nextpage()

	{
		if ((currentpage + 1) <= totalpage) {
			currentpage = currentpage + 1;
			GetHistoryList(currentpage);
		}
	}

	function prevpage()

	{
		if ((currentpage - 1) >= 1) {
			currentpage = currentpage - 1;
			GetHistoryList(currentpage);
		}
	}

	function GetTotalHistory() {
		$.ajax({
			url : '${pageContext.request.contextPath}/swap/HistoryGetTotal',
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
	GetTotalHistory();

	function GetSwapList() {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/swap/getSwapGroup',
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
										insertTableRowWithSelectedColumn(
												"datatable", Jarrayanswer, true);
									} else {
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
	GetSwapList();

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

		const fieldtoshow = [ "SYMBOL", "LONG", "SHORT" ];
		var fieldIndex = [];
		var filtersymbollist = [];

		let header = Object.keys(array[0]);

		for (let i = 0; i < header.length; i++) {

			for (let j = 0; j < fieldtoshow.length; j++) {
				if (header[i] === fieldtoshow[j]) {

					var headername;
					if (header[i] === "SHORT") {
						headername = "SHORT (USD)";
					} else if (header[i] === "LONG") {
						headername = "LONG (USD)";
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
			th.innerHTML = "TARGET";
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

				if (header[fieldIndex[keylength - j]] === "LONG") //datetimeconvert
				{
					if (Object.values(array[i])[fieldIndex[keylength - j]] > 0) {
						cell.style.color = "#218838";
						cell.style.fontWeight = "600";

					} else {
						cell.style.color = "rgb(235 26 47)";
						cell.style.fontWeight = "600";
					}
					;
					cell.innerHTML = "<span id='"
							+ Object.values(array[i])[fieldIndex[0]].toString()
							+ "_long'>"
							+ Object.values(array[i])[fieldIndex[keylength - j]]
									.toString();
					+"</span>"

				} else if (header[fieldIndex[keylength - j]] === "SHORT") //datetimeconvert
				{
					if (Object.values(array[i])[fieldIndex[keylength - j]] > 0) {
						cell.style.color = "#218838";
						cell.style.fontWeight = "600";

					} else {
						cell.style.color = "rgb(235 26 47)";
						cell.style.fontWeight = "600";
					}
					;
					cell.innerHTML = "<span id='"
							+ Object.values(array[i])[fieldIndex[0]].toString()
							+ "_short'>"
							+ Object.values(array[i])[fieldIndex[keylength - j]]
									.toString();
					+"</span>"

				}

				else if (header[fieldIndex[keylength - j]] === "SYMBOL") //datetimeconvert
				{
					var symbolname = Object.values(array[i])[fieldIndex[keylength
							- j]].toString();
					console.log(symbolname);
					filtersymbollist.push(symbolname.substring(0,
							symbolname.length - 2));
					cell.innerHTML = Object.values(array[i])[fieldIndex[keylength
							- j]].toString();

				}

				else {
					cell.innerHTML = Object.values(array[i])[fieldIndex[keylength
							- j]].toString();
				}

			}

			if (enableButtonAction) {
				var Symbol = document.getElementById(tableid).rows[1].cells[0].innerHTML;
				var cell = row.insertCell(fieldIndex.length);
				cell.style.width = "20%";
				cell.innerHTML = "<div class='btn-group btn-group-toggle' data-toggle='buttons'>"
						+ "<label class='btn bg-olive active'> <input type='radio' name='"+Symbol+"_options' id='"+Symbol+"_sell' autocomplete='off' >"
						+ "SELL"
						+ "</label> <label class='btn bg-olive'> <input type='radio' name='"+Symbol+"_options' id='"+Symbol+"_none' autocomplete='off'checked='true'> -"
						+ "</label> <label class='btn bg-olive'> <input type='radio' name='"+Symbol+"_options' id='"+Symbol+"_buy' autocomplete='off'> BUY"
						+ "</label></div>";

			}

		}

		sortTable(tableid);
		DistinctSymbolList = filtersymbollist.filter(onlyUnique);
	}

	function onlyUnique(value, index, self) {
		return self.indexOf(value) === index;
	}

	function getSelectedElement() {
		var symbolfieldselect = "";
		for (var i = 0; i < DistinctSymbolList.length; i++) {
			symbolfieldselect = symbolfieldselect + 'input[id^="'
					+ DistinctSymbolList[i] + '"] ,';
		}
		//symbolfieldselect = 'input[id^="EURUSD"] ,input[id^="GBPUSD"]';
		var t = document.querySelectorAll(symbolfieldselect.substring(0,
				symbolfieldselect.length - 1));

		var totalswap = 0;
		var currencyPairNumber= 0;
		for (var i = 0; i < t.length; i++) {
			if (t[i].checked == true) {
				if (t[i].id.indexOf("sell") >= 0) {
					var symbol = t[i].id.substring(0, t[i].id.length - 5)
							+ "_short";
					console.log(symbol);
					var value = document.getElementById(symbol).innerHTML;
					console.log(value);
					currencyPairNumber++;
					totalswap = totalswap + parseFloat(value);
				} else if (t[i].id.indexOf("buy") >= 0) {
					var symbol = t[i].id.substring(0, t[i].id.length - 4)
							+ "_long";
					console.log(symbol);
					var value = document.getElementById(symbol).innerHTML;
					console.log(value);
					currencyPairNumber++;
					totalswap = totalswap + parseFloat(value);
				}

			}
		}

		console.log(totalswap);
		var lot = document.getElementById("lot").value;
		if (totalswap > 0) {
			document.getElementById("profit").style.color = "green";
		} else if (totalswap < 0) {
			document.getElementById("profit").style.color = "red";
		}
		document.getElementById("totallot").value = (lot * currencyPairNumber);
		document.getElementById("profit").value = parseFloat(
				totalswap * getperiod() * lot).toFixed(3);
	}

	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}

	function sortTable(tableid1) {
		var table, rows, switching, i, x, y, shouldSwitch;
		table = document.getElementById(tableid1);
		switching = true;
		/*Make a loop that will continue until
		no switching has been done:*/
		while (switching) {
			//start by saying: no switching is done:
			switching = false;
			rows = table.rows;
			/*Loop through all table rows (except the
			first, which contains table headers):*/
			for (i = 1; i < (rows.length - 1); i++) {
				//start by saying there should be no switching:
				shouldSwitch = false;
				/*Get the two elements you want to compare,
				one from current row and one from the next:*/
				x = rows[i].getElementsByTagName("TD")[0];
				y = rows[i + 1].getElementsByTagName("TD")[0];
				//check if the two rows should switch place:
				if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
					//if so, mark as a switch and break the loop:
					shouldSwitch = true;
					break;
				}
			}
			if (shouldSwitch) {
				/*If a switch has been marked, make the switch
				and mark that a switch has been done:*/
				rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
				switching = true;
			}
		}
	}

	function getperiod() {
		var whichperiod = 0;
		for (var i = 1; i <= 3; i++) {
			if (document.getElementById('period_' + i).checked) {
				whichperiod = i;
			}

		}

		if (whichperiod == 1) {
			return 7;
		} else if (whichperiod == 2) {
			return 30;
		} else if (whichperiod == 3) {
			return 365;
		}
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
