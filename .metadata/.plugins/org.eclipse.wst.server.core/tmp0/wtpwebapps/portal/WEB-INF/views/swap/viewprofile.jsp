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
							<h1 class="m-0">View Profile</h1>
						</div>

						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a
									href="${pageContext.request.contextPath}/swap/allMaster">Master</a></li>
								<li class="breadcrumb-item active"><%=request.getAttribute("profileid")%></li>
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
								<div class="widget-user-header text-white" id="bgprofile"
									style="background: url('/portal/resources/images/user.jpg') center center;">
									<h3 class="widget-user-username text-right"><%=request.getAttribute("Name")%></h3>
									<h5 class="widget-user-desc text-right">
										ID:
										<%=request.getAttribute("profileid")%>

									</h5>
								</div>
								<div class="widget-user-image">
									<img class="img-circle" src="/portal/resources/images/user.jpg"
										id="userphoto" alt="User Avatar">
								</div>
								<div class="card-footer"
									style="padding-top: 78px !important; padding-bottom: 54px !important">
									<div class="row">
										<div class="col-sm-4 border-right">
											<div class="description-block">
												<h5 class="description-header">
													<span id="rating">-</span> <i class="fa fa-star"
														aria-hidden="true" style="color:#ff9d0b"></i>
												</h5>
												<span class="description-text">RATING</span>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.col -->
										<div class="col-sm-4 border-right">
											<div class="description-block">
												<h5 class="description-header"><span id="copiercount">-</span></h5>
												<span class="description-text">COPIER</span>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.col -->
										<div class="col-sm-4">
											<div class="description-block">
												<h5 class="description-header"><span id="totaltrade">-</span></h5>
												<span class="description-text">TRADES</span>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.col -->
									</div>

									<div class="row">
										<div class="col-sm-4 border-right">
											<div class="description-block">
												<h5 class="description-header"><span id="acctype">-</span></h5>
												<span class="description-text">ACCOUNT</span>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.col -->
										<div class="col-sm-4 border-right">
											<div class="description-block">
												<h5 class="description-header"><span id="since">-</span></h5>
												<span class="description-text">SINCE</span>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.col -->
										<div class="col-sm-4">
											<div class="description-block"
												style="display: flex; justify-content: center;">

												<button type="button" class="btn btn-primary float-right"
													onclick="copyMaster()" id="copybutton">Copy Me</button>
												<button type="button" class="btn btn-primary float-right"
													onclick="editRatio()" id="copiedbutton"
													style="background-color: #fd6a4f; border-color: #fd6a4f">Copied
													: 30%</button>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.col -->
									</div>
									<!-- /.row -->
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

											<p class="text-muted"><%=request.getAttribute("Country")%></p>

											<hr>

											<strong><i class="fa fa-envelope mr-1"></i> Email</strong>

											<p class="text-muted"><%=request.getAttribute("Email")%></p>

											<hr>

											<strong><i class="fa fa-phone-square mr-1"></i>
												Phone Number</strong>

											<p class="text-muted">
												<span class="tag tag-danger"><%=request.getAttribute("Phone")%></span>

											</p>

											<hr>

											<strong><i class="fa fa-map-marker mr-1">-</i>
												Address</strong>

											<p class="text-muted"><%=request.getAttribute("Address")%></p>
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
			function copyMaster() {
				document.getElementById("closemodalbutton").style.display = "block";
				document.getElementById("uncopybutton").style.display = "none";
				
				var master =  new URLSearchParams(window.location.search).get('id');
				
				$
						.ajax({
							url : '${pageContext.request.contextPath}/swap/checkAmIMaster',
							type : 'get',
							async : false,
							data : '',
							success : function(data) {
								//alert(data.result);
								if (data.result.indexOf("Master") >= 0) {
									document.getElementById("mtitle").innerHTML = "Sorry,"
									document.getElementById("mbody").innerHTML = "Your Current status is master, you cannot copy other master account.";
									document.getElementById("mbutton").style.display = "none";
									document.getElementById("copyratiorow").style.display = "none";
									document.getElementById("copyratiorow1").style.display = "none";
									document.getElementById("datatable1").style.display = "none";
									document.getElementById("rightclosemodalbutton").style.display = "none";
									$('#modal-default').modal();
								} else {
									document.getElementById("mtitle").innerHTML = "Are you sure want to copy account "+master+"?"
									document.getElementById("mbody").innerHTML = "By copying Master Account, you are agreed that portion of your account capital will be mirroring trade from master account, you are agreed to term and condition and you willing to take the risk on your own.";
									document.getElementById("mbody2").innerHTML = "Copy Ratio is required to copy a master account, please key in your desire copy ratio below between 1% to 100%.";
									document.getElementById("mbutton").style.display = "block";
									document.getElementById("mtitle").style.display = "block";
									document.getElementById("mbody").style.display = "block";
									document.getElementById("mbody2").style.display = "block";
									document.getElementById("copyratiorow").style.display = "flex";
									document.getElementById("copyratiorow1").style.display = "flex";
									document.getElementById("datatable1").style.display = "none";
									document.getElementById("rightclosemodalbutton").style.display = "none";
									
									
									var status = checkCopyStatus();
									//alert(status);
									if( status == 0)
										{
										alert("Please take note that we detected that you had Un-copy this master previously, any previous copied position that are closed by master during the un-copy period will not sync to your position.")
										}
									
									$('#modal-default').modal();
								}

							},
							error : function(xhr, status) {
								alert("ERROR : " + xhr + " : " + status);
								return;
							}
						});
			}
			
			
			function editRatio() {
				
				document.getElementById("closemodalbutton").style.display = "none";
				document.getElementById("uncopybutton").style.display = "block";
				
				$
						.ajax({
							url : '${pageContext.request.contextPath}/swap/checkAmIMaster',
							type : 'get',
							async : false,
							data : '',
							success : function(data) {
								//alert(data.result);
								if (data.result.indexOf("Master") >= 0) {
									document.getElementById("mtitle").innerHTML = "Sorry,"
									document.getElementById("mbody").innerHTML = "Your Current status is master, you cannot copy other master account.";
									document.getElementById("mbutton").style.display = "none";
									document.getElementById("copyratiorow").style.display = "none";
									document.getElementById("datatable1").style.display = "none";
									$('#modal-default').modal();
								} else {
									document.getElementById("mtitle").innerHTML = "Do you want to change the copy ratio?"
									document.getElementById("mbody").innerHTML = "You can change the copy ratio by entering your desired copy ratio below:";
									document.getElementById("mbody2").innerHTML = "Copy Ratio is required to copy a master account, please key in your desire copy ratio below between 1% to 100%.";
									document.getElementById("mbutton").style.display = "block";
									document.getElementById("datatable1").style.display = "none";
									$('#modal-default').modal();
								}

							},
							error : function(xhr, status) {
								alert("ERROR : " + xhr + " : " + status);
								return;
							}
						});
			}
			
			
			function isCopier() {
				var master =  new URLSearchParams(window.location.search).get('id');
				$
						.ajax({
							url : '${pageContext.request.contextPath}/swap/isCopier?mid='+master,
							type : 'get',
							async : false,
							data : '',
							success : function(data) {
								//alert(data.result);
								
								const jobject = JSON.parse(data.result);
								if(data.result.indexOf("0 Done")>=0)
									{
									
									var iscopied = jobject.answer.iscopied;
									if(iscopied ==1)
										{
										document.getElementById("copybutton").style.display = "none";
										document.getElementById("copiedbutton").style.display = "block";
										var ratio = jobject.answer.ratio;
										var copytype = jobject.answer.copytype;
										document.getElementById("copiedbutton").innerHTML = "Copied: "+ratio+"% ("+copytype+")";
										}
									else
										{
										document.getElementById("copybutton").style.display = "block";
										document.getElementById("copiedbutton").style.display = "none";
										}
									}
								else
									{
									alert(jobject.answer.desc);
									}
								
							},
							error : function(xhr, status) {
								alert("ERROR : " + xhr + " : " + status);
								return;
							}
						});
			}isCopier();
			
		
			
			
			function checkCopyStatus() {
				var copystatus; 
				var master =  new URLSearchParams(window.location.search).get('id');
				$
						.ajax({
							url : '${pageContext.request.contextPath}/swap/checkCopyStatus?mid='+master,
							type : 'get',
							async : false,
							data : '',
							success : function(data) {
								//alert(data.result);
								
								const jobject = JSON.parse(data.result);
								if(data.result.indexOf("0 Done")>=0)
									{
									 copystatus = jobject.answer.copystatus;
									
									
									}
								else
									{
									alert(jobject.answer.desc);
									}
								
							},
							error : function(xhr, status) {
								alert("ERROR : " + xhr + " : " + status);
								return;
							}
						});
				
				return copystatus;
			}
			
			
			
			function getrating() {
				var master =  new URLSearchParams(window.location.search).get('id');
				$
						.ajax({
							url : '${pageContext.request.contextPath}/swap/getRating?mid='+master,
							type : 'get',
							async : false,
							data : '',
							success : function(data) {
								//alert(data.result);
								
								const jobject = JSON.parse(data.result);
								if(data.result.indexOf("0 Done")>=0)
									{
										document.getElementById("rating").innerHTML = jobject.answer.rating;
										document.getElementById("copiercount").innerHTML = jobject.answer.copiernum;
										document.getElementById("acctype").innerHTML = jobject.answer.acctype;
										document.getElementById("since").innerHTML = jobject.answer.since;
										}
								else
									{
									alert(jobject.answer.desc);
									}
								
							},
							error : function(xhr, status) {
								alert("ERROR : " + xhr + " : " + status);
								return;
							}
						});
			}getrating();
			
			
			
			
			
			
			function doubleConfirmUncopyMaster()
			{
				var master =  new URLSearchParams(window.location.search).get('id');
				
				document.getElementById("mtitle").innerHTML = "Are you sure want to un-copy master account "+master+"?"
					document.getElementById("mbody").innerHTML = "Your account will not mirror trade to this master after un-copy, below are the Position(s) that need to be manage by yourself after un-copy this master.";
					document.getElementById("mbutton").style.display = "none";
					document.getElementById("copyratiorow").style.display = "none";
					document.getElementById("copyratiorow1").style.display = "none";
					document.getElementById("mbody2").style.display = "block";
					document.getElementById("mbody2").innerHTML = "Click Proceed button to un-copy this master, or cancel button to cancel.";
					document.getElementById("mbodyerror").style.display = "none";
					document.getElementById("uncopybutton").style.display = "none";
					document.getElementById("closemodalbutton").style.display = "block";
					document.getElementById("closemodalbutton").innerHTML = "Cancel";
					getpositionGetByComment();
					document.getElementById("uncopybtn").style.display = "block";
					
					
					$('#modal-default').modal();
			}
			
			
			function uncopyMaster() {
				
				var master =  new URLSearchParams(window.location.search).get('id');
				
				$
						.ajax({
							url : '${pageContext.request.contextPath}/swap/unCopyMaster?mid='+master,
							type : 'get',
							async : false,
							data : '',
							success : function(data) {
								if (data.result != "") {
								if(data.result.indexOf("0 Done")>=0)
									{
									//alert(data.result);
									//location.reload();
									
									document.getElementById("mtitle").innerHTML = "Success Un-copy this master,"
										document.getElementById("mbody").innerHTML = "Your account will not mirror trade to this master from now on.";
										document.getElementById("mbutton").style.display = "none";
										document.getElementById("copyratiorow").style.display = "none";
										document.getElementById("copyratiorow1").style.display = "none";
										document.getElementById("mbody2").style.display = "none";
										document.getElementById("mbodyerror").style.display = "none";
										document.getElementById("uncopybutton").style.display = "none";
										document.getElementById("closemodalbutton").style.display = "none";
										document.getElementById("copybutton").style.display = "block";
										document.getElementById("copiedbutton").style.display = "none";
										document.getElementById("uncopybtn").style.display = "none";
										document.getElementById("rightclosemodalbutton").style.display = "block";
										document.getElementById("datatable1").style.display = "none";
										$('#modal-default').modal();
									}
								else
									{
									alert(data.result);
									}
								
								}
								else {
									alert("sorry error occur, please contact admin. Error: null data detected, may be plugin return null")
								}
								
								

							},
							error : function(xhr, status) {
								alert("ERROR : " + xhr + " : " + status);
								return;
							}
						});
			}
			
			
			
function getpositionGetByComment() {
				
				var master =  new URLSearchParams(window.location.search).get('id');
				
				$
						.ajax({
							url : '${pageContext.request.contextPath}/swap/positionGetByComment?mid='+master,
							type : 'get',
							async : false,
							data : '',
							success : function(data) {
								
								if(data.result.indexOf("0 Done")>=0)
									{
									console.log(data.result);
									//location.reload();
									
									/*document.getElementById("mtitle").innerHTML = "Success Un-copy this master,"
										document.getElementById("mbody").innerHTML = "Your account will not mirror trade to this master from now on.";
										document.getElementById("mbutton").style.display = "none";
										document.getElementById("copyratiorow").style.display = "none";
										document.getElementById("copyratiorow1").style.display = "none";
										document.getElementById("mbody2").style.display = "none";
										document.getElementById("mbodyerror").style.display = "none";
										document.getElementById("uncopybutton").style.display = "none";
										document.getElementById("closemodalbutton").style.display = "none";
										document.getElementById("copybutton").style.display = "block";
										document.getElementById("copiedbutton").style.display = "none";
										document.getElementById("uncopybtn").style.display = "none";
										document.getElementById("rightclosemodalbutton").style.display = "block";
										
										$('#modal-default').modal();*/
										const jobject = JSON.parse(data.result);
										if (jobject.hasOwnProperty('answer')) {
											//alert(JSON.stringify(jobject.answer));
											const arr = jobject.answer;
										
											const Jarrayanswer = arr.filter(element => {
												  if (Object.keys(element).length !== 0) {
												    return true;
												  }

												  return false;
												});
											
											if(Object.keys(Jarrayanswer).length >0)
											{
											
											//document.getElementById("pagenumber").innerHTML ="(Page "+page+" of "+totalpage+")";
											
											insertTableRowWithSelectedColumn("datatable1", Jarrayanswer,
													false);
											
											tableFromJson(Jarrayanswer, "datatable1");
											document.getElementById("datatable1").style.display = "block";
											}
										else
											{
											//document.getElementById("pagenumber").innerHTML = "There is no data to show here."
											//	toastmsg("Friendly reminder: ", "There is no data to show in the table.");
											}
										} else {
											//alert("server return error code");
											//alert(data.result);
											toastmsg("server return error", data.result);
										}
										
										
										
									
									}
								else
									{
									alert(jobject.answer.desc);
									}
								
								

							},
							error : function(xhr, status) {
								alert("ERROR : " + xhr + " : " + status);
								return;
							}
						});
			}
			
			
			
			function ConfirmCopy() {
				$
						.ajax({
							url : '${pageContext.request.contextPath}/swap/checkAmIMaster',
							type : 'get',
							async : false,
							data : '',
							success : function(data) {
								//alert(data.result);
								if (data.result.indexOf("Master") >= 0) {
									
									document.getElementById("mtitle").innerHTML = "Sorry,"
									document.getElementById("mbody").innerHTML = "Your Current status is master, you cannot copy other master account.";
									document.getElementById("mbutton").style.display = "none";
									document.getElementById("copyratiorow").style.display = "none";
									
									
									$('#modal-default').modal();
								} else {
									
									if(checkval())
										{
										
										var ratio = document.getElementById("copyratio").value;
										var master =  new URLSearchParams(window.location.search).get('id');
										var copytype = document.getElementById("copytype").value;
										
										//alert(ratio+ master);
										
										$
										.ajax({
											url : '${pageContext.request.contextPath}/swap/copyMaster?mid='+master+'&r='+ratio+'&t='+copytype,
											type : 'get',
											async : false,
											data : '',
											success : function(data) {
												//alert(data.result);
												if (data.result != "") {
												const jobject = JSON.parse(data.result);
												if(data.result.indexOf("0 Done")>=0)
													{
													document.getElementById("mbody2").style.color = "green";
													document.getElementById("mbody2").innerHTML = "Success: "+ jobject.answer.desc;
													document.getElementById("copybutton").style.display = "none";
													document.getElementById("copiedbutton").style.display = "block";
													document.getElementById("copiedbutton").innerHTML = "Copied: "+ratio+"% ("+copytype+")";
													document.getElementById("mbutton").disabled = true;
													
													}
												else
													{
													document.getElementById("mbodyerror").innerHTML = "Error: "+ data.result;
													alert(data.result);

													}
											
												}
												else
													{
													alert("sorry error occur, please contact admin. Error: null data detected, may be plugin return null");
													}
											},
											error : function(xhr, status) {
												alert("ERROR : " + xhr + " : " + status+data.result);
												return;
											}
										});
										
										}
									
									
									$('#modal-default').modal();
								}

							},
							error : function(xhr, status) {
								alert("ERROR : " + xhr + " : " + status);
								return;
							}
						});
			}
			
			
			function syncDelay(milliseconds){
			    var start = new Date().getTime();
			    var end = 0;

			    while((end - start) < milliseconds){
			        end = new Date().getTime();
			    }
			}
			
			
			function getprofileimg()
			{
				
				var id =  new URLSearchParams(window.location.search).get('id');
				$
				.ajax({
					url : '${pageContext.request.contextPath}/swap/getViewProfileImgUrl?id='+id,
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
										document.getElementById("userphoto").src = "${pageContext.request.contextPath}/swap/image/"+Jarrayanswer.url;
										document.getElementById("bgprofile").style.background = "url('${pageContext.request.contextPath}/swap/image/"+Jarrayanswer.url+"') center center";
									} else {
										document.getElementById("bgprofile").src = "${pageContext.request.contextPath}/swap/image/"+Jarrayanswer.url;
										document.getElementById("bgprofile").style.background = "url('${pageContext.request.contextPath}/swap/image/"+Jarrayanswer.url+"') center center";
										
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
			}getprofileimg();
			
			
			

			function insertTableRowWithSelectedColumn(tableid, array,
					enableButtonAction) {
				document.getElementById(tableid).innerHTML = '<thead><tr></tr></thead> <tbody></tbody>';

				const fieldtoshow = [ "Position", "Symbol", "Volume",
						"PriceOpen", "Profit",
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
			
			
			
			function insertTableRowWithSelectedColumn(tableid, array,
					enableButtonAction) {
				document.getElementById(tableid).innerHTML = '<thead><tr></tr></thead> <tbody></tbody>';

				const fieldtoshow = [ "Position", "Symbol", "Volume",
						"PriceOpen", "Profit",
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
			
			
			
			  function tableFromJson(inputjson, tableid) {
			        const table = document.getElementById(tableid);
			        table.innerHTML = "";
			        // the json data.
			        // Extract value from table header. 
			        // ('Book ID', 'Book Name', 'Category' and 'Price')
			        let col = [];
			        for (let i = 0; i < inputjson.length; i++) {
			            for (let key in inputjson[i]) {
			                if (col.indexOf(key) === -1) {
			                    col.push(key);
			                }
			            }
			        }

			        // Create table.
			        // Create table header row using the extracted headers above.
			        let tr = table.insertRow(-1); // table row.

			        for (let i = 0; i < col.length; i++) {
			            let th = document.createElement("th"); // table header.
			            th.innerHTML = col[i];
			            tr.appendChild(th);
			        }

			        // add json data to the table as rows.
			        for (let i = 0; i < inputjson.length; i++) {

			            tr = table.insertRow(-1);

			            for (let j = 0; j < col.length; j++) {
			                let tabCell = tr.insertCell(-1);
			                tabCell.innerHTML = inputjson[i][col[j]];
			            }
			        }

			    }

			function convertUnixtoLocalTime(unixTimestamp) {
				var dateObject = new Date(unixTimestamp * 1000)
				var convertedTime = dateObject.toLocaleString() //2019-12-9 10:30:15
				return convertedTime;
			}
			
			
			function checkval()
			{
				var cp = document.getElementById("copyratio").value;
				if(cp <1 || cp>100)
					{
					document.getElementById("mbutton").disabled = true;
					document.getElementById("mbodyerror").innerHTML = "Please Enter a copy ratio that are within the range 1% to 100%";
					
					return false;
					}else
						{
						document.getElementById("mbutton").disabled = false;
						document.getElementById("mbodyerror").innerHTML = "";
						return true;
						}
			}
			
			$(document).ready(function() {

				  if(window.location.href.indexOf('#openmodal') != -1) {
					  copyMaster();
				  }
				  
				  if(window.location.href.indexOf('#openuncopymodal') != -1) {
					  doubleConfirmUncopyMaster();
				  }

				});
			
			
			
			
			function GetTotaltrade() {
				
				var master =  new URLSearchParams(window.location.search).get('id');
				
				$
						.ajax({
							url : '${pageContext.request.contextPath}/swap/GetTotalTradebyclient?mid='+master,
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
											
											//alert(totalOrders);
											document.getElementById("totaltrade").innerHTML = totalOrders;
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
			GetTotaltrade();
			
			
			

			//
		</script>


		<div class="modal fade show" id="modal-default" aria-modal="true"
			role="dialog" style="padding-right: 17px; display: none;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="mtitle"></h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<p id="mbody" style="text-align: center"></p>

						<p id="mbodyerror" style="color: red; text-align: center"></p>

						<table id="datatable1" style="display: none; font-size: 14px;"></table>

						<p id="mbody2" style="color: #ff5e00; text-align: center"></p>
						<div class="form-group row" id="copyratiorow">
							<label for="copyratio" class="col-sm-4 col-form-label">Copy
								Ratio (%)</label>
							<div class="col-sm-8">
								<input type="number" class="form-control" id="copyratio"
									onchange="checkval()" onkeydown="checkval()"
									onpaste="checkval()" oninput="checkval()" placeholder="">
							</div>
						</div>

						<div class="form-group row" id="copyratiorow1">
							<label class="col-sm-4 col-form-label">Copy Type <span
								style="color: red">*</span></label>
							<div class="col-sm-8">
								<select id="copytype" onchange="checkval()"
									class="form-control select2 select2-hidden-accessible"
									style="width: 100%;" aria-hidden="true">
									<option selected="selected" value="2">Lot Based</option>
									<option value="1">Equity Based</option>

								</select><span
									class="select2 select2-container select2-container--default select2-container--below select2-container--focus"
									dir="ltr" data-select2-id="2" style="width: 100%;"></span><span
									class="dropdown-wrapper" aria-hidden="true"></span>
							</div>
						</div>



					</div>
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-default" id="uncopybutton"
							style="display: none" onclick="doubleConfirmUncopyMaster()"
							type="button">Un-copy master</button>
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="closemodalbutton">Close</button>
						<button type="button" class="btn btn-primary" id="mbutton"
							onclick="ConfirmCopy()" disabled>Confirm</button>
						<button type="button" class="btn btn-primary" id="uncopybtn"
							onclick="uncopyMaster()" style="display: none;">Proceed</button>
						<button type="button" class="btn btn-primary float-right"
							data-dismiss="modal" style="display: none;"
							id="rightclosemodalbutton">Okay</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
</body>
</html>
