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

					<h5 class="mb-2">Summary Profit and Loss</h5>
					<div class="row">
						<div class="col-12 col-sm-6 col-md-3">
							<div class="info-box">
								<span class="info-box-icon bg-info">1</span>
								<div class="info-box-content">
									<span class="info-box-text">Last 24 Hours</span> <span
										class="info-box-number" id="d1">0</span>
								</div>

							</div>

						</div>

						<div class="col-12 col-sm-6 col-md-3">
							<div class="info-box">
								<span class="info-box-icon bg-success">7</span>
								<div class="info-box-content">
									<span class="info-box-text">Last 7 Days</span> <span
										class="info-box-number" id="d7">0</span>
								</div>

							</div>

						</div>

						<div class="col-12 col-sm-6 col-md-3">
							<div class="info-box">
								<span class="info-box-icon bg-warning">30</span>
								<div class="info-box-content">
									<span class="info-box-text">Last 30 Days</span> <span
										class="info-box-number" id="d30">0</span>
								</div>

							</div>

						</div>


						<div class="col-12 col-sm-6 col-md-3">
							<div class="info-box">
								<span class="info-box-icon bg-danger elevation-1" id="lifetime"></span>
								<div class="info-box-content">
									<span class="info-box-text">Since Account Open Date</span> <span
										class="info-box-number" id="d365">0</span>

								</div>

							</div>



						</div>
					</div>

					<div class="row">

						<div class="col-md-6">
							<!--  <div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">Balance Chart</h3>
									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse">
											<i class="fas fa-minus"></i>
										</button>
										<button type="button" class="btn btn-tool"
											data-card-widget="remove">
											<i class="fas fa-times"></i>
										</button>
									</div>
								</div>
								<div class="card-body" style="min-height: 290px;">
									<div class="chart">
										<div class="chartjs-size-monitor">
											<div class="chartjs-size-monitor-expand">
												<div class=""></div>
											</div>
											<div class="chartjs-size-monitor-shrink">
												<div class=""></div>
											</div>
										</div>
										<div>
											<canvas id="myChartmodal" class="chartjs-render-monitor"></canvas>
										</div>
									</div>
								</div>

							</div>-->

							<div class="card card-success">
								<div class="card-header">
									<h3 class="card-title">Last 30 Days Profit and Loss</h3>
									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse">
											<i class="fas fa-minus"></i>
										</button>
										<button type="button" class="btn btn-tool"
											data-card-widget="remove">
											<i class="fas fa-times"></i>
										</button>
									</div>
								</div>
								<div class="card-body">
									<div class="chart">
										<div class="chartjs-size-monitor">
											<div class="chartjs-size-monitor-expand">
												<div class=""></div>
											</div>
											<div class="chartjs-size-monitor-shrink">
												<div class=""></div>
											</div>
										</div>
										<canvas id="barChart"
											class="chartjs-render-monitor"></canvas>
									</div>
								</div>

							</div>


						</div>
						<div class="col-md-6">
							<div class="card card-danger">
								<div class="card-header">
									<h3 class="card-title">Porfit and Loss by Currency Pairs</h3>
									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse">
											<i class="fas fa-minus"></i>
										</button>
										<button type="button" class="btn btn-tool"
											data-card-widget="remove">
											<i class="fas fa-times"></i>
										</button>
									</div>
								</div>
								<div class="card-body" style="min-height: 290px;">
									<div class="chartjs-size-monitor">
										<div class="chartjs-size-monitor-expand">
											<div class=""></div>
										</div>
										<div class="chartjs-size-monitor-shrink">
											<div class=""></div>
										</div>
									</div>
									<div style="width: 100%; height: 100%">
										<canvas id="pieChart"
											style="min-height: 250px; height: 275px; max-height: 275px; max-width: 100%; display: block; width: 514px;"
											width="514" height="250" class="chartjs-render-monitor"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Profit and Loss by Date</h3>

									<h3 id="pagenumber" class="float-right card-title"></h3>
								</div>
								<!-- /.card-header -->



								<div class="card-body">
									<div class="form-group">
										<label for="exampleInputEmail1">Start Date</label> <input
											type="datetime-local" class="form-control" id="start"
											placeholder="Enter email">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">End Date</label> <input
											type="datetime-local" class="form-control" id="end">
									</div>

									<div class="form-group">
										<label for="exampleInputPassword2">P/L</label> <input
											type="text" class="form-control" disabled id="customPnL">
									</div>



									<button type="button" onclick="searchcustom()"
										class="btn btn-primary float-right">Search</button>
								</div>

								<div class="card-footer ">
									<!--  <button type="button" class="btn btn-primary float-right"
										style="margin-left: 5px" " onclick="nextpage()">next</button>
									<button type="button" class="btn btn-primary float-right"
										onclick="prevpage()">prev</button>-->
								</div>
								<!-- /.card-body -->
							</div>





							<!-- /.card -->
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
		</div>
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


var today0000 = new Date();
today0000.setHours(0,0,0,0);

console.log("today");
var today0000sec =Math.floor(today0000 / 1000);
console.log(today0000sec);

const dayTime = [];
dayTime[0] =Math.floor(Date.now() / 1000);

for(i=1;i<30;i++)
	{
		if(i==1)
			{
			dayTime[i] = today0000sec;
			
			}
		else
			{
			
			dayTime[i] = dayTime[i-1]-86400;
			}
	
	
	}
	
	
	console.log(dayTime);

	function search(passduration) {

		//	var starttime = Math.round(new Date(document.getElementById("start").value).getTime()/1000);

		var starttime = Math.floor(Date.now() / 1000) - (86400 * passduration);
		
		var today0000 = new Date();
		today0000.setHours(0,0,0,0);
		
		console.log("today");
		console.log(today0000);

		var endtime = Math.floor(Date.now() / 1000);
		var firsttime = endtime;
		var profit = 0;
		var swap = 0;
		var commision = 0 ;
		var fee = 0;
		const acuprofit = [];
		$
				.ajax({
					url : '${pageContext.request.contextPath}/fundclient/HistorySearch?start='
							+ starttime + '&end=' + endtime,
					type : 'get',
					async : false,
					data : "",
					success : function(data) {
						if (data.result.indexOf("0 Done" >= 0)) {
							console.log(data.result);
							const jobject = JSON.parse(data.result);
console.log(passduration);
							console.log("answer");
							console.log(jobject.answer);
							for (i = 0; i < jobject.answer.length; i++) {

								if (jobject.answer[i].Symbol != "") {
									
									profit = profit
									+ parseFloat(jobject.answer[i].Profit)
									+ parseFloat(jobject.answer[i].Storage)
									+ parseFloat(jobject.answer[i].Commission)
									+ parseFloat(jobject.answer[i].Fee);
							acuprofit[i] = profit.toFixed(2);
							
							
					
							
							
									if (parseInt(jobject.answer[i].Time) < firsttime) {

										firsttime = parseInt(jobject.answer[i].Time);
									}

								}

							}
							
							
							
							
							
							
							
							

							if (passduration == 10000) {
								var finals = Math
										.floor((parseInt(endtime) - parseInt(firsttime))
												/ (3600 * 24));
								console.log("Profit:" + profit);
								console.log("life:" + finals);

								document.getElementById("lifetime").innerHTML = finals;
								
								
								const profitbyday =new Array(dayTime.length).fill(0);
								console.log(dayTime.length);
								
								for (i = 0; i < jobject.answer.length; i++) {

									if (jobject.answer[i].Symbol != "") {
										
										for( j = 0 ; j < dayTime.length-1;j++)
											{
											
											
											if(jobject.answer[i].Time<dayTime[j] && jobject.answer[i].Time>dayTime[j+1] )
												{
												
												profitbyday[j] = parseFloat(profitbyday[j]) + parseFloat(jobject.answer[i].Profit);
												
												}
											}
										

									}

								}
								//profitbyday[0]= profitbyday[0]*(-1);
								
								console.log(profitbyday);
								
								barchartloaddata("barChart" , dayTime,profitbyday);
								
								

							//	loadchartmodal("myChartmodal", jobject.answer,
							//			acuprofit);
								
								const unique = [...new Set(jobject.answer.map(item => item.Symbol))];
								console.log(unique);
								
								var filtered = unique.filter(function (el) {
									  return el.length > 5;
									});
								
								const profitbycurrency =new Array(filtered.length).fill(0);
								
								for(  i=0;i<jobject.answer.length;i++)
									{
									var symbol = jobject.answer[i].Symbol;
								//	console.log(symbol);
									
									for(  j = 0; j<filtered.length;j++)
										{
										if (symbol === filtered[j])
											{
											profitbycurrency[j] = (parseFloat(profitbycurrency[j])+parseFloat(jobject.answer[i].Profit)).toFixed(2);
											//console.log("match");
											
											
											}
										
										
										}
									
									
									
									}
								
console.log(filtered);
console.log(profitbycurrency);
pieloaddata("pieChart" , filtered,profitbycurrency);
							}

							console.log(acuprofit);

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

		return profit.toFixed(2);

	}

	function searchcustom() {

		var starttime = Math.round(new Date(
				document.getElementById("start").value).getTime() / 1000);
		var endtime = Math.round(new Date(document.getElementById("end").value)
				.getTime() / 1000);

		var profit = 0;

		$
				.ajax({
					url : '${pageContext.request.contextPath}/fundclient/HistorySearch?start='
							+ starttime + '&end=' + endtime,
					type : 'get',
					async : false,
					data : "",
					success : function(data) {
						if (data.result.indexOf("0 Done" >= 0)) {
							console.log(data.result);
							const jobject = JSON.parse(data.result);

							console.log("answer");
							console.log(jobject.answer);
							for (i = 0; i < jobject.answer.length; i++) {

								if (jobject.answer[i].Symbol != "") {
									profit = profit
											+ parseFloat(jobject.answer[i].Profit);

								}

							}
							console.log("Profit:" + profit);

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

		document.getElementById("customPnL").value = profit.toFixed(2) + " USD";

	}

	function loadsummary() {

		document.getElementById("d1").innerHTML = search(1) + ' USD';
		document.getElementById("d7").innerHTML = search(7) + ' USD';
		document.getElementById("d30").innerHTML = search(30) + ' USD';
		document.getElementById("d365").innerHTML = search(10000) + ' USD';

	}
	loadsummary();

	function loadchartmodal(chartID, cdata, acuprofit) {

		var labeldata = [];

		var chrtdata = [];

		for (var i = 0; i < cdata.length; i++) {
			labeldata.push(convertUnixtoLocalTime(cdata[i].Time));
			chrtdata.push(acuprofit[i])
		}

		var ctx = document.getElementById(chartID).getContext("2d");
		var myChart = new Chart(ctx, {
			type : 'line',
			data : {
				labels : labeldata,
				datasets : [ {
					label : 'USD',
					data : chrtdata,
					backgroundColor : "#2196f3",
					borderColor : '#28a745',
					tension : 0.1,
					fill : false
				} ]
			},
			options : {
				elements : {
					point : {
						radius : 0
					}
				},scales:{
		            xAxes: [{
		                display: false //this will remove all the x-axis grid lines
		            }]
		        }
			}
		});

	}
	
	
	function pieloaddata(piename , currency,profit)
	{
		
		var oilCanvas = document.getElementById(piename);

		Chart.defaults.global.defaultFontFamily = "Arial";
		Chart.defaults.global.defaultFontSize = 12;

		var oilData = {
		    labels: currency,
		    datasets: [
		        {
		            data: profit,
		            backgroundColor: [
		                'rgb(255, 99, 132)',
		                'rgb(54, 162, 235)',
		                'rgb(255, 205, 86)',
		                '#28a745',
		                '#007bff',
		                '#6610f2',
		                '#ffc107',
		                '#20c997',
		                '#dc3545',
		                '#fd7e14',
		                '',
		                '',
		                '',
		                '',
		                ''
		              ]
		           
		        }]
		};

		var pieChart = new Chart(oilCanvas, {
		  type: 'pie',
		  data: oilData,
		  options: {
		        maintainAspectRatio: false,
		    }
		});
		
	}

	
	
	function barchartloaddata(chartname , day,profit)
	{
		
		var canvas = document.getElementById(chartname);
		var ctx = canvas.getContext('2d');

		// Global Options:
		 Chart.defaults.global.defaultFontColor = 'Green';
		 Chart.defaults.global.defaultFontSize = 16;
		 
		 const date= [];
		 for(i = 0;i< day.length;i++)
			 {
			 
			 date[i] =  new Date(day[i]*1000).toLocaleDateString("en-US");
			 
			 }


		// Data with datasets options
		var data = {
		    labels: date,
		      datasets: [
		        {
		            label: "USD",
		            fill: true,
		            data: profit,
		            backgroundColor: "#28a745", // v2+ uses background color
		            strokeColor: "#28a745",
		            borderWidth: 1
		        }
		    ]
		};

		// Notice how nested the beginAtZero is
		var options = {
		        title: {
		                  display: true,
		                  text: 'Last 30 Days Profit and Loss ',
		                  position: 'top'
		              },
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		};

		// Chart declaration:
		var myBarChart = new Chart(ctx, {
		    type: 'bar',
		    data: data,
		    options: options
		});

	}
	
	
	
	var jarray;

	var totalpage = 0;
	var currentpage = 1;

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

	/*function GetTotalHistory() {
		$
				.ajax({
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
	GetTotalHistory();*/

	/*function GetHistoryList(page) {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/fundclient/HistoryGetList?all=1&page='
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
												+ page + " of " + page + ")";

										insertTableRowWithSelectedColumn(
												"datatable", Jarrayanswer,
												false);
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
	}*/

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

		const fieldtoshow = [ "Deal", "Order", "Symbol", "Volume", "Profit",
				"Storage" ];
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
							.values(array[i])[fieldIndex[keylength - j]]
							.toString());
				}

				if (header[fieldIndex[keylength - j]] === "Volume") //datetimeconvert
				{
					var number = parseInt(Object.values(array[i])[fieldIndex[keylength
							- j]])
					number = number / 10000;
					cell.innerHTML = (number.toString());
				}

				else if (header[fieldIndex[keylength - j]] === "Type") //datetimeconvert
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
				var login = document.getElementById(tableid).rows[1].cells[0].innerHTML;
				var cell = row.insertCell(fieldIndex.length);
				cell.innerHTML = "<a href='editAccountDetails?login=" + login
						+ "' class='btn btn-default'>Edit</a>";
			}

		}

		$(function() {
			jQuery.each($("table tr"), function() {
				$(this).children(":eq(2)").after($(this).children(":eq(1)")); // rearange col 2 to 1
			});
		});
	}

	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
		return convertedTime;
	}
</script>



<script>
	var json = {
		"retcode" : "0 Done",
		"answer" : [ {
			"Timestamp" : "132302519992466852",
			"DatetimePrev" : "1585699199",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10010.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132303383992178046",
			"DatetimePrev" : "1585785599",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10012.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132303383992178046",
			"DatetimePrev" : "1585785599",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10012.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132303383992178046",
			"DatetimePrev" : "1585785599",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10012.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132303383992178046",
			"DatetimePrev" : "1585785599",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10012.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132303383992178046",
			"DatetimePrev" : "1585785599",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10012.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132302519992466852",
			"DatetimePrev" : "1585699199",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10010.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132302519992466852",
			"DatetimePrev" : "1585699199",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10010.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132302519992466852",
			"DatetimePrev" : "1585699199",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10010.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132303383992178046",
			"DatetimePrev" : "1585785599",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10012.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132303383992178046",
			"DatetimePrev" : "1585785599",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10012.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		}, {
			"Timestamp" : "132303383992178046",
			"DatetimePrev" : "1585785599",
			"Login" : "765114",
			"Name" : "Test Collateral",
			"Group" : "demo\\demoforex-hedged",
			"Currency" : "USD",
			"CurrencyDigits" : "2",
			"Company" : "MetaQuotes DEV",
			"EMail" : "",
			"Balance" : "10012.31",
			"Credit" : "0.00",
			"InterestRate" : "0.00",
			"CommissionDaily" : "0.00",
			"CommissionMonthly" : "0.00",
			"AgentDaily" : "0.00"
		} ]
	};

	var balance = [];
	var datearray = []

	for (var i = 0; i < json.answer.length; i++) {
		balance.push(json.answer[i].Balance);

		var date = new Date(json.answer[i].DatetimePrev * 1000);
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var day = date.getDate();
		console.log(year);
		datearray.push(day + "-" + month + "-" + year);
		console.log(balance[i]);
	}

	new Chart(document.getElementById("line-chart"), {
		type : 'line',
		data : {
			labels : datearray,
			datasets : [ {
				data : balance,
				label : "Balance (USD)",
				borderColor : '#007bff',
				backgroundColor : 'rgba(0,123,255, 0.2)',
			} ]
		},
		options : {
			title : {
				display : true,
				text : 'Account Balance'
			}
		}
	});
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
