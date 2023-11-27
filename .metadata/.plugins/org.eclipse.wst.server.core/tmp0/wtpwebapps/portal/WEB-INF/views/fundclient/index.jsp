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

						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" id="pagetitlesub"></li>
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
				<div class="container-fluid">
					<!-- Small boxes (Stat box) -->
					<!-- /.row -->

					<div class="row">

						<div class="col-md-4">
							<!-- Widget: user widget style 1 -->
							<div class="card card-widget widget-user" style="min-height: 555px;">
								<!-- Add the bg color to the header using any of the bg-* classes -->
								<div class="widget-user-header " id="bgprofile"
									style="background: url('${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg') center center;">

								</div>
								<div class="widget-user-image">
									<img class="img-circle" src="${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg"
										id="userphoto" alt="User Avatar">
								</div>

								<div class="card-footer"
									style="padding-top: 101px !important; padding-bottom: 95px !important;">
									<h3 class="widget-user-username text-center"
										style="font-weight: 500;"><%=s_Name%></h3>
									<h5 class="widget-user-desc text-center"
										style="font-weight: 500;">
										ID:
										<%=s_Login%>
										(<%=s_Type%>)
									</h5>
								</div>
							</div>
							<!-- /.widget-user -->
						</div>

						<div class="col-md-8">
							<!-- /.col -->
							<div class="row">
								<div class="col-md-12">
									<!-- About Me Box -->
									<div class="card card-primary">
										<div class="card-header">
											<h3 class="card-title">
												<strong>About Me</strong>
											</h3>
										</div>
										<!-- /.card-header -->
										<div class="card-body">
											<strong><i class="fas fa-book mr-1"></i>Start Date</strong>

											<p class="text-muted" id="country"></p>

											<hr>

											<strong><i class="fa fa-envelope mr-1"></i> Deposit</strong>

											<p class="text-muted" id="Email">-</p>

										
										

											<hr>

											<strong><i class="fa fa-map-marker mr-1"></i>
												Balance</strong>

											<p class="text-muted" id="Address"></p>
												<hr>
											
											
											<strong><i class="fa fa-user mr-1"></i>
												Equity</strong>

											<p class="text-muted" id="equity">-</p>
											
											<hr>
											
											
											<strong><i class="fa fa-user mr-1"></i>
												Margin</strong>

											<p class="text-muted" id="margin">-</p>
											
											<hr>
											
											
											<strong><i class="fa fa-user mr-1"></i>
												Free Margin</strong>

											<p class="text-muted" id="freemargin">-</p>
											
											
										</div>
										<!-- /.card-body -->
									</div>
									<!-- /.card -->
								</div>
								<!-- /.col -->
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">
										<strong>Latest Position(s)</strong>
									</h3>
									<h3 id="pagenumber" class="float-right card-title">Latest
										5 record(s)</h3>
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

								<!-- /.card-body -->
							</div>





							<!-- /.card -->
						</div>
					</div>
					<!-- Main row -->
					<!-- /.row (main row) -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>


		<script type="text/javascript">
		
		
		
		function searchgetDeposit() {

			var starttime = Math.floor(Date.now() / 1000) - (86400 * 10000);
			var endtime = Math.floor(Date.now() / 1000);

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

									if (jobject.answer[i].Symbol == "") {
										profit = profit
												+ parseFloat(jobject.answer[i].Profit);

									}

								}
								console.log("Profit:" + profit);
								document.getElementById("Email").innerHTML =profit+" USD";
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
			
			return profit;

		}searchgetDeposit();
		
		
			function GetOrderList(page) {
				$
						.ajax({
							url : '${pageContext.request.contextPath}/fundclient/IndexGetInfo',
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
											console.log(JSON
													.stringify(jobject.answer));
											document.getElementById("country").innerHTML =  new Date(parseInt(checkisempty(jobject.answer.Registration))*1000).toLocaleDateString("en-US");;
									
											document.getElementById("Address").innerHTML = checkisempty(jobject.answer.Balance) +" USD";
											
										
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
											console.log(data.result);
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
				
				
				
				$
				.ajax({
					url : '${pageContext.request.contextPath}/fundclient/IndexGetMargin',
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
									console.log(JSON
											.stringify(jobject.answer));
									
									document.getElementById("equity").innerHTML = checkisempty(jobject.answer.current.Equity) +" USD";
									document.getElementById("margin").innerHTML = checkisempty(jobject.answer.current.Margin)+" USD";
									
									document.getElementById("freemargin").innerHTML = checkisempty(jobject.answer.current.MarginFree)+" USD";
									
								
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
									console.log(data.result);
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
			GetOrderList(1);

			function checkisempty(value) {
				if (value.trim() == "") {
					return "Not Set"
				} else {
					return value;
				}
			}

			function GetPositionList(page) {
				$
						.ajax({
							url : '${pageContext.request.contextPath}/fundclient/PositionGetList?page='
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

												insertTableRowWithSelectedColumn(
														"datatable",
														Jarrayanswer, false);
											} else {
												document
														.getElementById("pagenumber").innerHTML = "There is no data to show here."
												console
														.log("Friendly reminder: "
																+ "There is no data to show in the table.");
											}
										} else {
											//alert("server return error code");
											//alert(data.result);
											console.log("server return error"
													+ data.result);
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

			function insertTableRowWithSelectedColumn(tableid, array,
					enableButtonAction) {
				document.getElementById(tableid).innerHTML = '<thead><tr></tr></thead> <tbody></tbody>';

				const fieldtoshow = [ "Position", "Symbol", "Action", "Volume",
						"PriceOpen", "PriceCurrent", "Profit", "TimeCreate",
						"PriceSL", "PriceTP" ];
				var fieldIndex = [];

				let header = Object.keys(array[0]);

				for (let i = 0; i < header.length; i++) {

					for (let j = 0; j < fieldtoshow.length; j++) {
						if (header[i] === fieldtoshow[j]) {

							fieldIndex.push(i);
							var tr = document.getElementById(tableid).tHead.children[0];
							th = document.createElement('th');
							th.innerHTML = header[i];
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

						else if (header[fieldIndex[keylength - j]] === "Action") //datetimeconvert
						{

							if (Object.values(array[i])[fieldIndex[keylength
									- j]].toString() == "1") {
								cell.innerHTML = "SELL";
							}
							if (Object.values(array[i])[fieldIndex[keylength
									- j]].toString() == "0") {
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
						cell.innerHTML = "<a href='editAccountDetails?login="
								+ login + "' class='btn btn-default'>Edit</a>";
					}

				}
			}

			function convertUnixtoLocalTime(unixTimestamp) {
				var dateObject = new Date(unixTimestamp * 1000)
				var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
				return convertedTime;
			}

		
		</script>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
</body>
</html>
