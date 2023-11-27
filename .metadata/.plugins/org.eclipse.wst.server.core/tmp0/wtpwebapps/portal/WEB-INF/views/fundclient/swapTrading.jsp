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
							<h1 class="m-0" id="pagetitlemain">Swap Trading</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" id="pagetitlesub">Swap
									Trading</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="card ">
						<div class="card-header ui-sortable-handle">
							<h3 class="card-title">Account Information</h3>
						</div>



						<div class="card-body">
							<div class="row">
								<div class="col-md-3 col-sm-6 col-12">
									<div class="info-box">
										<span class="info-box-icon bg-info"><i
											class="fa fa-user-o"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Login</span> <span
												class="info-box-number" id="WLogin">0</span>
										</div>
										<!-- /.info-box-content -->
									</div>
									<!-- /.info-box -->
								</div>
								<!-- /.col -->
								<div class="col-md-3 col-sm-6 col-12">
									<div class="info-box">
										<span class="info-box-icon bg-success"><i
											class="fa fa-money"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Balance</span> <span
												class="info-box-number" id="WBalance">0</span>
										</div>
										<!-- /.info-box-content -->
									</div>
									<!-- /.info-box -->
								</div>
								<!-- /.col -->
								<div class="col-md-3 col-sm-6 col-12">
									<div class="info-box">
										<span class="info-box-icon bg-warning"><i
											class="fa fa-bar-chart" style="color: white"></i></span>

										<div class="info-box-content">
											<span class="info-box-text"></span>Equity<span
												class="info-box-number" id="WEquity">0</span>
										</div>
										<!-- /.info-box-content -->
									</div>
									<!-- /.info-box -->
								</div>
								<!-- /.col -->
								<div class="col-md-3 col-sm-6 col-12">
									<div class="info-box">
										<span class="info-box-icon bg-danger"><i
											class="far fa-star"></i></span>

										<div class="info-box-content">
											<span class="info-box-text"></span>Free Margin<span
												class="info-box-number" id="WMarginFree">0</span>
										</div>
										<!-- /.info-box-content -->
									</div>
									<!-- /.info-box -->
								</div>


								<!-- /.col -->
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header ui-sortable-handle">
							<h3 class="card-title">
								<i class="fa fa-th-large mr-1"></i> Trading
							</h3>

						</div>
						<div class="card-body">
							<div class="tab-content p-0">

								<div class="row">
									<div class="col-md-12">
										<div class="" style="min-height: 380px">

											<!-- /.card-header -->
											<div class=" table-sm p-0">

												<div class="form-horizontal">
													<div class="">
														<div class="form-group row">
															<label for="inputEmail3" class="col-sm-2 col-form-label">Symbol
																:</label>
															<div class="col-sm-9">
																<div class="btn-group btn-group-toggle"
																	data-toggle="buttons">
																	<label class="btn btn-secondary active"> <input
																		type="radio" name="selectesymbol" id="Symbol_EURUSD"
																		autocomplete="off" checked="true"
																		onclick="showfilteredCurrency()"> EURUSD
																	</label> <label class="btn btn-secondary"> <input
																		type="radio" name="selectesymbol" id="Symbol_GBPUSD"
																		autocomplete="off" onclick="showfilteredCurrency()">
																		GBPUSD
																	</label> <label class="btn btn-secondary"> <input
																		type="radio" name="selectesymbol" id="Symbol_USDJPY"
																		autocomplete="off" onclick="showfilteredCurrency()">
																		USDJPY
																	</label>
																</div>
															</div>
														</div>

														<div class="form-group row">
															<label for="inputEmail3" class="col-sm-2 col-form-label">Target
																:</label>

															<table class="table table-hover text-nowrap col-sm-9 "
																style="margin-left: 8px; box-shadow: 0 0 1px rgb(0 0 0/ 13%), 0 1px 3px rgb(0 0 0/ 20%);"
																id="datatable">
																<thead>
																	<tr>

																	</tr>
																</thead>
																<tbody>

																</tbody>
															</table>
															<br>

														</div>

														<div class="form-group row">
															<label for="inputEmail3" class="col-sm-2 col-form-label">LOT
																:</label>

															<div class="table table-hover text-nowrap col-sm-8 ">
																<input type="number" class="form-control" id="lot"
																	placeholder="Lot" value="1" step="0.01">
															</div>
															<div class="table table-hover text-nowrap col-sm-1 ">
																<button type="button" class="btn btn-primary "
																	style="margin-left: 5px; width: 100%"
																	onclick="getSelectedElementWithSymbol()">Entry</button>
															</div>


														</div>







													</div>

												</div>


											</div>



										</div>


										<!-- /.card-body -->
									</div>





									<!-- /.card -->
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

	<div class="modal fade" id="modal-default" style="display: none;"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Entry Confirmation</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="col-md-12 card">
						<div class="card-header row" style="text-align: center">
							<div class="col-sm-3">
								<i class="fa fa-exclamation-triangle" aria-hidden="true"
									style="color: #ffbc00; font-size: 45px"></i>
							</div>
							<div class="col-sm-9" style="color: #f51010">By Clicking
								Okay button below, you are confirmed to trade these symbol(s)
								listed below.</div>

						</div>
						<div class="">
							<div id="target" style="text-align: center" class="card-body"></div>
						</div>
						<hr>
						<form class="form-horizontal">
							<div class="card-body">
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-6 col-form-label">
										Total LOT required :</label>
									<div class="col-sm-6">
										<input type="number" class="form-control" id="totallot"
											placeholder="Lot" value="0" disabled>
									</div>
								</div>

								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-6 col-form-label">
										Expected profit (Week) :</label>
									<div class="col-sm-6">
										<input type="number" class="form-control" id="profitweek"
											placeholder="profit" value="0.000" disabled
											style="font-weight: 600">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-6 col-form-label">
										Expected profit (Month) :</label>
									<div class="col-sm-6">
										<input type="number" class="form-control" id="profitmonth"
											placeholder="profit" value="0.000" disabled
											style="font-weight: 600">
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-6 col-form-label">
										Expected profit (Year) :</label>
									<div class="col-sm-6">
										<input type="number" class="form-control" id="profityear"
											placeholder="profit" value="0.000" disabled
											style="font-weight: 600">
									</div>
								</div>

							</div>



						</form>

					</div>
				</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-primary"
						onclick="executeBatchOrder()">Okay</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>

				</div>
			</div>

		</div>

	</div>
	
	
	
	<div class="modal fade" id="modal-success" style="display: none;"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Success Place Deal(s)</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="col-md-12 ">
						<div class=" row" style="text-align: center">
							<div class="col-sm-3">
								<i class="fa fa-check" aria-hidden="true"
									style="color: #28a745; font-size: 45px"></i>
							</div>
							<div class="col-sm-9" style="color: #212529" >Your Deal had been placed, you can check your position(s) in Position page.</div>

						</div>
						
						
					

					</div>
				</div>
				<div class="modal-footer justify-content-between">
					<a href="${pageContext.request.contextPath}/fundclient/Positions" class="btn btn-primary " style="margin-left: auto;
    margin-right: auto;">View Position(s)</a>
    
					

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
	var DistinctSymbolList = [];
	var finalOrderToExecute = "";
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
			url : '${pageContext.request.contextPath}/fundclient/HistoryGetTotal',
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
					url : '${pageContext.request.contextPath}/fundclient/getSwapGroup',
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

	function hidetablerowbyname(symbolname) {

		var table = document.getElementById('datatable');
		var tableSymbolcolumn = table.querySelectorAll("td:first-child");

		for (var i = 0; i < tableSymbolcolumn.length; ++i) {

			if (tableSymbolcolumn[i].innerHTML.indexOf(symbolname) >= 0) {
				//console.log(tableSymbolcolumn[i].innerHTML);
				document.getElementById("datatable").rows[i + 1].style.display = "table-row";

			} else {
				console.log("deleted :" + tableSymbolcolumn[i].innerHTML);
				document.getElementById("datatable").rows[i + 1].style.display = "none";
			}

		}

	}

	function showfilteredCurrency() {
		var symbol = document
				.querySelector('input[name="selectesymbol"]:checked').id;
		symbol = symbol.substring(7, symbol.length);
		hidetablerowbyname(symbol);
	}
	showfilteredCurrency();

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

	function getSelectedElementWithSymbol() {
		var lot = document.getElementById("lot").value;
		
		
		var symbolname = document
				.querySelector('input[name="selectesymbol"]:checked').id;
		symbolname = symbolname.substring(7, symbolname.length);

		var symbolfieldselect = 'input[id^="' + symbolname + '"] ';

		//symbolfieldselect = 'input[id^="EURUSD"] ,input[id^="GBPUSD"]';
		var t = document.querySelectorAll(symbolfieldselect.substring(0,
				symbolfieldselect.length - 1));

		var sellorder = 0;
		var buyorder = 0;
		var totalswap = 0;
		var currencyPairNumber = 0;
		let finalOrders = [];
		
		
		for (var i = 0; i < t.length; i++) {
			if (t[i].checked && t[i].id.indexOf("none") < 0) {

				if (t[i].id.indexOf("sell") >= 0) {
					sellorder++;
					let finalorder = {};
					finalorder.symbol = t[i].id.substring(0, t[i].id.length - 5);
					finalorder.type = "sell";
					finalorder.lot = lot;
					finalOrders.push(finalorder);
					var symbol = t[i].id.substring(0, t[i].id.length - 5)
							+ "_short";
					console.log(symbol);
					var value = document.getElementById(symbol).innerHTML;
					console.log(value);
					currencyPairNumber++;
					totalswap = totalswap + parseFloat(value);
					
					
				} else if (t[i].id.indexOf("buy") >= 0) {
					buyorder++;
					let finalorder = {};
					finalorder.symbol = t[i].id.substring(0, t[i].id.length - 4);
					finalorder.type = "buy";
					finalorder.lot = lot;
					finalOrders.push(finalorder);
					var symbol = t[i].id.substring(0, t[i].id.length - 4)
							+ "_long";
					console.log(symbol);
					var value = document.getElementById(symbol).innerHTML;
					console.log(value);
					currencyPairNumber++;
					totalswap = totalswap + parseFloat(value);
				}
				
				

				console.log(t[i].id + t[i].checked);
			}

		}

		if (sellorder < 1 || buyorder < 1) {
			alert("Please choose a minimum 1 SELL Target and 1 BUY Target")
		} else {
			for( i = 0; i< finalOrders.length;i++)
			{
			console.log(finalOrders[i]);
			}
			
			const target = document.getElementById('target');
			target.innerHTML = "";
			const newTable = document.createElement("table");
			newTable.classList.add("table-sm");
			newTable.classList.add("table");
			newTable.innerHTML = "<thead><th>Symbol</th><th>Type</th><th>LOT</th></thead>";
			
			
			for(finalorder of finalOrders){
			    const newRow = document.createElement("tr");
			    const tdsymbol = document.createElement("td");
			    const tdtype = document.createElement("td");
			    const tdlot = document.createElement("td");
			    tdsymbol.textContent = finalorder.symbol;
			    tdtype.textContent = finalorder.type;    
			    tdlot.textContent = finalorder.lot;   
			    newRow.appendChild(tdsymbol);
			    newRow.appendChild(tdtype);
			    newRow.appendChild(tdlot);
			    newTable.appendChild(newRow);
			}
			
			//alert(JSON.stringify(finalOrders));
			
			
			target.appendChild(newTable);
			
			finalOrderToExecute = JSON.stringify(finalOrders);
			
			
			
			
			console.log(totalswap);
			
			if (totalswap > 0) {
				document.getElementById("profitweek").style.color = "green";
				document.getElementById("profitmonth").style.color = "green";
				document.getElementById("profityear").style.color = "green";
			} else if (totalswap < 0) {
				document.getElementById("profitweek").style.color = "red";
				document.getElementById("profitmonth").style.color = "red";
				document.getElementById("profityear").style.color = "red";
			}
			document.getElementById("totallot").value = (lot * currencyPairNumber);
			document.getElementById("profitweek").value = parseFloat(
					totalswap * 7 * lot).toFixed(3);
			document.getElementById("profitmonth").value = parseFloat(
					totalswap * 30 * lot).toFixed(3);
			document.getElementById("profityear").value = parseFloat(
					totalswap * 365 * lot).toFixed(3);
			$('#modal-default').modal();
		}

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
		var currencyPairNumber = 0;
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

	

	

	function GetaccountInfo(page) {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/fundclient/myprofileGetAccountInfo',
					type : 'get',
					async : false,
					data : '',
					success : function(data) {
						if (data.result.indexOf("0 Done" >= 0)) {
							console.log(data.result);
							const jobject = JSON.parse(data.result);
							console.log(jobject.retcode);
							if (jobject.retcode == "0 Done") {
								if (jobject.hasOwnProperty('answer')) {
									console.log(JSON.stringify(jobject.answer));
									document.getElementById("WLogin").innerHTML = checkisempty(jobject.answer.Login);
									document.getElementById("WBalance").innerHTML = checkisempty(jobject.answer.Balance)
											+ " USD";
									document.getElementById("WEquity").innerHTML = checkisempty(jobject.answer.Equity)
											+ " USD";
									document.getElementById("WMarginFree").innerHTML = checkisempty(jobject.answer.MarginFree)
											+ " USD";

									/*	const Jarrayanswer = jobject.answer;
										if(Object.keys(Jarrayanswer).length >0)
											{
											
											document.getElementById("pagenumber").innerHTML ="(Page "+page+" of "+totalpage+")";
											
											insertTableRowWithSelectedColumn("datatable", Jarrayanswer,
													false);
											}
										else
											{
											document.getElementById("pagenumber").innerHTML = "There is no data to show here."
												toastmsg("Friendly reminder: ", "There is no data to show in the table.");
											}*/

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
	GetaccountInfo(1);
	
	
	function executeBatchOrder() {
		
		var body = btoa(finalOrderToExecute);
		$
		.ajax({
			 url: "${pageContext.request.contextPath}/fundclient/executebatchorder?body="+body,
			type : 'get',
			async : false,
			data : '',
			success : function(data) {
				if (data.result.indexOf("0 Done" >= 0)) {
					console.log(data.result);
					const jobject = JSON.parse(data.result);
					console.log(jobject.retcode);
					if (jobject.retcode == "0 Done") {
						
						$('#modal-default').modal('hide');
						$('#modal-success').modal('show');
					

					}
					else
						{
						alert("Sorry, there is an error occur, please contact support as soon as possible. Error Code : 11283473");
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
	Getteset();
	
	
	

	function checkisempty(value) {
		if (value.trim() == "") {
			return "Not Set"
		} else {
			return value;
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
