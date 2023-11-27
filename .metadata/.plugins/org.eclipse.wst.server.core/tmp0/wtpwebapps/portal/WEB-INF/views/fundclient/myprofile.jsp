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
						<div class="col-md-3">

							<!-- Profile Image -->
							<div class="card card-primary card-outline">
								<div class="card-body box-profile">
									<div class="text-center">
										<img class="profile-user-img img-fluid img-circle"
											id="profileimg"
											src="${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg"
											alt="User profile picture" style="width: 234px !important">
									</div>

									<h3 class="profile-username text-center"><%=s_Name%></h3>

									<p class="text-muted text-center">
										ID:
										<%=s_Login%>
										(<%=s_Type%>)
									</p>

									<div class="row" style="display:none">
										<div class="col-md-6 ">
											<button class="btn btn-primary float-right"
												onclick="openmodal()">Change</button>
										</div>
										<div class="col-md-6">
											<button class="btn btn-primary" onclick="deleteprofileimg()">Delete</button>

										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->


						</div>

						<div class="col-md-9">
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
							<h5 class="mb-2">Account Details</h5>
							<div class="row">
								<div class="col-md-3 col-sm-6 col-12">
									<div class="info-box">
										<span class="info-box-icon bg-info"><i
											class="far fa-envelope"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Balance</span> <span
												class="info-box-number" id="WBalance">-</span>
										</div>
										<!-- /.info-box-content -->
									</div>
									<!-- /.info-box -->
								</div>
								<!-- /.col -->
								<div class="col-md-3 col-sm-6 col-12">
									<div class="info-box">
										<span class="info-box-icon bg-success"><i
											class="far fa-flag"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Margin</span> <span
												class="info-box-number" id="WMargin">-</span>
										</div>
										<!-- /.info-box-content -->
									</div>
									<!-- /.info-box -->
								</div>
								<!-- /.col -->
								<div class="col-md-3 col-sm-6 col-12">
									<div class="info-box">
										<span class="info-box-icon bg-warning"><i
											class="far fa-copy"></i></span>

										<div class="info-box-content">
											<span class="info-box-text"></span>Free Margin<span
												class="info-box-number" id="WMarginFree">-</span>
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
											<span class="info-box-text"></span>Profit<span
												class="info-box-number" id="WProfit">-</span>
										</div>
										<!-- /.info-box-content -->
									</div>
									<!-- /.info-box -->
								</div>


								<!-- /.col -->
							</div>



						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">My Information(s)</h3>


								</div>
								<!-- /.card-header -->
								<div class="card-body p-0">
									<table class="table">
										<thead>
											<tr>
												<th style="width: 10px">#</th>
												<th>info</th>
												<th>details</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1.</td>
												<td>Login</td>
												<td id="TLogin">Login</td>
											</tr>
											
											<tr>
												<td>2.</td>
												<td>Registration</td>
												<td id="TRegistration">Registration</td>
											</tr>
											<tr>
												<td>3.</td>
												<td>Last Access</td>
												<td id="TLast_Access">Last Access</td>
											</tr>
											<tr>
												<td>4.</td>
												<td>Leverage</td>
												<td id="TLeverage">Leverage</td>
											</tr>
											<tr>
												<td>5.</td>
												<td>Balance</td>
												<td id="TBalance">Balance</td>
											</tr>

										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">
										<strong>Latest Positions</strong>
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
								<div class="card-footer ">
									<a href="${pageContext.request.contextPath}/fundclient/Orders"
										class="btn btn-primary float-right">View All Orders</a>
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
		<div class="modal fade show" id="modal-default" aria-modal="true"
			role="dialog" style="padding-right: 17px; display: none;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="mtitle">Choose an image to
							upload.</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<form method="POST" action="uploadFile"
						enctype="multipart/form-data">
						<div class="modal-body">
							<p id="mbody" style="text-align: center">Please choose image
								file with .PNG / .JPG extension as profile images.</p>

							<input type="file" name="file" id="uploadfile" accept=".png,.jpg"
								onchange="getfilename()"> <br /> <input type="text"
								name="name" id="filename" style="display: none"> <br />
							<br />

							<c:if test="${not empty message}">
    ${message} <!-- here would be a message with a result of processing -->
							</c:if>



						</div>
						<div class="modal-footer justify-content-between">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" id="closemodalbutton">Close</button>

							<input id="upload-button" class="btn btn-primary" type="submit"
								value="Upload">
						</div>
						<script>
							function getfilename() {

								document.getElementById("filename").value = document
										.getElementById("uploadfile").files[0].name;

							}
						</script>
					</form>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>

		<script>
			async
			function uploadFile() {
				let formData = new FormData();
				formData.append("file", fileupload.files[0]);
				let response = await
				fetch('${pageContext.request.contextPath}/fundclient/pimageupload', {
					method : "POST",
					body : formData
				});

				if (response.status == 200) {
					alert("File successfully uploaded.");
					location.reload();
				}
			}
		</script>

		<script type="text/javascript">
			function openmodal() {
				$('#modal-default').modal();
			}

			function GetInfo(page) {
				$
						.ajax({
							url : '${pageContext.request.contextPath}/fundclient/myprofileGetInfo',
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
											document.getElementById("TLogin").innerHTML = checkisempty(jobject.answer.Login);
											//document.getElementById("TGroup").innerHTML = checkisempty(jobject.answer.Group);
											document
													.getElementById("TRegistration").innerHTML = convertUnixtoLocalTime(checkisempty(jobject.answer.Registration));
											document
													.getElementById("TLast_Access").innerHTML = convertUnixtoLocalTime(checkisempty(jobject.answer.LastAccess));
											document
													.getElementById("TLeverage").innerHTML = checkisempty(jobject.answer.Leverage);
											document.getElementById("TBalance").innerHTML = checkisempty(jobject.answer.Balance);

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
											toastmsg("server return error",
													data.result);
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
			GetInfo(1);

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
											console.log(JSON
													.stringify(jobject.answer));
											document.getElementById("WBalance").innerHTML = checkisempty(jobject.answer.Balance);
											document.getElementById("WMargin").innerHTML = checkisempty(jobject.answer.Margin);
											document
													.getElementById("WMarginFree").innerHTML = checkisempty(jobject.answer.MarginFree);
											document.getElementById("WProfit").innerHTML = checkisempty(jobject.answer.Profit);

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
											toastmsg("server return error",
													data.result);
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
												//toastmsg("Friendly reminder: ","There is no data to show in the table.");
											}
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
			GetPositionList(1);

			

			function deleteprofileimg() {
				$
						.ajax({
							url : '${pageContext.request.contextPath}/fundclient/deleteProfileImg',
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
												location.reload();

											} else {
												location.reload();
											}
										} else {
											//alert("server return error code");
											//alert(data.result);
											toastmsg("server return error",
													data.result);
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

			//
		</script>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
</body>
</html>
