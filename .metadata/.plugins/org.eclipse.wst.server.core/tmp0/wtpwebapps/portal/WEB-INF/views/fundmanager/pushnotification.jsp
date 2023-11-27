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
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" id="pagetitlesub">Send Push Notification</li>
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
				<!-- /.container-fluid -->

				<div class="contain-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card card-primary card-outline">
								<div class="card-header">
									<h5 class="m-0">Send Push Notification</h5>
								</div>
								<div class="card-body">

									<div class="card card-primary">

										<div class="card-body" id="transferbox">
											<div class="row" id="transferrow0">
												<div class="col-12">
													<div class="form-group" >
														<label>MT5 Account No <span style="color: red">*</span></label>
														<input type="number"
															class="form-control" id="account"
															>
													</div>
													<div class="form-group" >
														<label>Notification Title <span style="color: red">*</span></label>
														<input type="text"
															class="form-control" id="notititle"
															>
													</div>
													<div class="form-group" >
														<label>Notification Body <span style="color: red">*</span></label>
														<input type="text"
															class="form-control" id="notibody"
															>
													</div>
													<div class="form-group" >
														<label>Redirect Url (Optional)</label>
														<input type="text"
															class="form-control" id="redirecturl"
															>
													</div>

												
												</div>


											</div>
											<br> <br>


										</div>



										<!-- /.card-body -->
										<div class="card-footer">

											<button type="button" class="btn btn-primary float-right" onclick="sendPushNotification()">Send</button>
										</div>
									</div>
								</div>
							</div>

							
						</div>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		
		<script type="text/javascript">
		function setmasterconfirm()
		{var mid = document.getElementById("login").value;
		if(mid>0)
			{
			var verificationcode = makeid(6);
			
			
			document.getElementById("mtitle").innerHTML = "Set account ("+mid+") to MASTER?"
			document.getElementById("mbody").innerHTML = verificationcode;
			document.getElementById("mbody2").innerHTML = "Please key in verification code above.";
			$('#modal-default').modal("show");
			}
		else
			{
			alert("please key in an account number.")
			}
			
		}
		
		
		function makeid(length) {
		    var result           = '';
		    var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
		    var charactersLength = characters.length;
		    for ( var i = 0; i < length; i++ ) {
		        result += characters.charAt(Math.floor(Math.random() * charactersLength));
		    }
		    return result.toUpperCase();
		}

		function FinalConfirmSetMaster()
		{
			var mid = document.getElementById("login").value;
			var verificationcode = document.getElementById("mbody").innerHTML ;
			var userkeyin = document.getElementById("vcode").value;
			
			if(verificationcode === userkeyin)
				{
				setMaster( mid);
				}
			else
				{
				alert("You have key in a different verification code. Please Re-try")
				}
			
			
			
		}
		
		
		
		function sendPushNotification() {
			
			var uid = document.getElementById("account").value;
			var title = document.getElementById("notititle").value ;
			var body = document.getElementById("notibody").value;
			var redirecturl = document.getElementById("redirecturl").value;
			
			$
					.ajax({
						url : '${pageContext.request.contextPath}/fundmanager/sendpushNotification?uid='+uid+'&t='+title+'&body='+body+'&u='+redirecturl,
						type : 'get',
						async : false,
						data : '',
						success : function(data) {
							
							if(data.result.indexOf("0 Done")>=0)
								{
								//alert(data.result);
								//location.reload();
								alert("Success send notification")
								$('#modal-default').modal("hide");
								}
							else
								{
								const jobject = JSON.parse(data.result);
								if ( jobject.retcode === "13 Not found")
									{
									alert("user not found")
									}else
										{
										alert(jobject.retcode);
										
										}
								$('#modal-default').modal("hide");
								
								//alert(data.result.retcode);
								//
								}
							
							

						},
						error : function(xhr, status) {
							alert("ERROR : " + xhr + " : " + status);
							return;
						}
					});
		}
		</script>
		<!-- /.content-wrapper -->
		<%@include file="inc/footer.jsp"%>
		
		
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
						<p id="mbody" style="text-align: center;font-weight:700" onmousedown='return false;' onselectstart='return false;'></p>
						<p id="mbody2" style="color: #ff5e00; text-align: center"></p>
						<p id="mbodyerror" style="color: red; text-align: center"></p>
						<div class="form-group row" id="copyratiorow">
							<label for="copyratio" class="col-sm-2 col-form-label">
								Code:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="vcode"
									placeholder="">
							</div>
						</div>
					</div>
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							id="closemodalbutton">Close</button>
						<button type="button" class="btn btn-primary" id="mbutton"
							onclick="FinalConfirmSetMaster()">Confirm</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
</body>
</html>
