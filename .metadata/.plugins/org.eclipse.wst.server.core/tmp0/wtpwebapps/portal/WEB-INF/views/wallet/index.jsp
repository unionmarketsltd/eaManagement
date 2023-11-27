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
							<div class="card card-widget widget-user">
								<!-- Add the bg color to the header using any of the bg-* classes -->
								<div class="widget-user-header " id="bgprofile"
									style="background: url() center center;"></div>
								<div class="widget-user-image">
									<img class="img-circle"
										src="/portal/resources/dist/img/user2-160x160.jpg"
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
											<strong><i class="fas fa-book mr-1"></i> Citizen</strong>

											<p class="text-muted" id="country"></p>

											<hr>

											<strong><i class="fa fa-envelope mr-1"></i> Email</strong>

											<p class="text-muted" id="Email">-</p>

											<hr>

											<strong><i class="fa fa-phone-square mr-1"></i>
												Phone Number</strong>

											<p class="text-muted">
												<span class="tag tag-danger" id="Phone">-</span>

											</p>

											<hr>

											<strong><i class="fa fa-map-marker mr-1">-</i>
												Address</strong>

											<p class="text-muted" id="Address">-</p>
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
								<div class="card-header border-0">
									<h3 class="card-title">Wallet Summary</h3>
									<div class="card-tools">
										<a href="#" class="btn btn-tool btn-sm"> <i
											class="fas fa-download"></i>
										</a> <a href="#" class="btn btn-tool btn-sm"> <i
											class="fas fa-bars"></i>
										</a>
									</div>
								</div>
								<div class="card-body table-responsive p-0">
									<table class="table table-striped table-valign-middle" id="datatable">
									
									<thead>
											<tr>

											</tr>
										</thead>
										<tbody>

										</tbody>
										
										
									</table>
								</div>
							</div>


<!-- 
										<thead>
											<tr>
												<th>Cryptocoin</th>
												<th>Units</th>
												<th>Worth</th>
												<th>View</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><i class="nav-icon far fa-circle text-warning"></i>
													BitCoin</td>
												<td>1.00000</td>
												<td> 27,782.10</td>
												<td><a href="#" class="text-muted"> <i
														class="fas fa-search"></i>
												</a></td>
											</tr>
											<tr>
												<td><i class="nav-icon far fa-circle text-warning"></i>
													Ethererum</td>
												<td>1.00000</td>
												<td>1,808.59</td>
												<td><a href="#" class="text-muted"> <i
														class="fas fa-search"></i>
												</a></td>
											</tr>
											
											
										</tbody> -->


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
			function GetOrderList(page) {
				$
						.ajax({
							url : '${pageContext.request.contextPath}/wallet/IndexGetInfo',
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
											document.getElementById("country").innerHTML = checkisempty(jobject.answer.Country);
											document.getElementById("Email").innerHTML = checkisempty(jobject.answer.Email);
											document.getElementById("Address").innerHTML = checkisempty(jobject.answer.Address);
											document.getElementById("Phone").innerHTML = checkisempty(jobject.answer.Phone);

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

	

			function insertTableRowWithSelectedColumn(tableid, array,
					enableButtonAction) {
				document.getElementById(tableid).innerHTML = '<thead><tr></tr></thead> <tbody></tbody>';

				const fieldtoshow = [ "Coin Type", "Coin Amount" ];
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

						if (header[fieldIndex[keylength - j]] === "Coin Type") //datetimeconvert
						{
							cell.innerHTML = "<i class='nav-icon far fa-circle text-warning'></i><span>" +Object
									.values(array[i])[fieldIndex[keylength - j]]
									.toString()+"</span>";
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
						var login = document.getElementById(tableid).rows[1].cells[0].children[1].innerHTML;
						var cell = row.insertCell(fieldIndex.length);
						cell.innerHTML = "<a href='TransactionAll?coin="
								+ login + "' class='btn btn-default'>Details</a>";
					}

				}
			}

			function convertUnixtoLocalTime(unixTimestamp) {
				var dateObject = new Date(unixTimestamp * 1000)
				var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
				return convertedTime;
			}
			
			
			function fetchcoinsummary()
			  {
				 // showloading(1);
				  var urla = '${pageContext.request.contextPath}/wallet/getcoinsummary';
				  
				 $ .ajax({
						url : urla,
						type : 'get',
					    datatype : "application/json",
					    contentType: "application/json",
						async : false,
						data : '',
						success : function(data) {
							console.log(data);
						    const jobj = JSON.parse(data.result);
						    console.log(jobj.retcode);
						    console.log( jobj.answer.data);
						    if(jobj.retcode.indexOf("0 Done")>=0)
						    	{
						    	
						    	globaldata = jobj.answer.data;
						    	insertTableRowWithSelectedColumn("datatable", globaldata,
										true);
						    	}
						  //  showloading(0);  
						},
				  
					error : function(xhr, status) {
						document.getElementById("tablediv").style.display="none";
						alert("ERROR : " + xhr + " : " + status);
						//showloading(0);
						return;
					}
				});
				
				  
			  }fetchcoinsummary();
			  
			
			//
		</script>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
</body>
</html>
