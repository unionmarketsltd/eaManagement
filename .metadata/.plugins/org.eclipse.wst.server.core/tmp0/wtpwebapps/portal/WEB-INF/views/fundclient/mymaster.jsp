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


					<div class="card" id="nocopymaster"style="display:block;">
						<div class="card-header">
							<h3 class="card-title">Hi,</h3>
							<div class="card-tools">
								<button type="button" class="btn btn-tool"
									data-card-widget="collapse" title="Collapse">
									<i class="fas fa-minus"></i>
								</button>
								<button type="button" class="btn btn-tool"
									data-card-widget="remove" title="Remove">
									<i class="fas fa-times"></i>
								</button>
							</div>
						</div>
						<div class="card-body" style="text-align:center">
							It's seem like you havent copy any master yet, click the View Master button below to view our masters and start copying.  
						</div>

						<div class="card-footer"><a href="${pageContext.request.contextPath}/fundclient/masters" class="btn  btn-primary" style="float:right">View Masters</a></div>

					</div>

					<div class="row" id="gridview"></div>
				</div>
		</div>
		<!-- /.container-fluid -->
		</section>
		<!-- /.content -->
	</div>

	<div class="modal fade show" id="modal-default"
		style="display: none; padding-right: 17px;" aria-modal="true"
		role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="modaltitle"></h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<p id="modalbody"></p>
				</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<button type="button" class="btn btn-primary" id="copybtn"
						onclick="confirmuncopy()">Confirm</button>
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

<script>
	function createDivs(name, date, profit, rate, follower, group, currentgroup) {
		var output = true;
		var parent = document.getElementById('gridview');
		console.log(group + currentgroup);

		var buttoncopied = "";
		var buttoncopiedtext = "Copy";
		if (group.localeCompare(currentgroup) == 0) {
			buttoncopied = "";
			buttoncopiedtext = "Click to Un-Copy";
			document.getElementById("nocopymaster").style.display = "none";
		}
		;
		var template =

		'<div class="card card-widget widget-user">' +

		'<div class="widget-user-header bg-info"> <h3 class="widget-user-username">'
				+ name
				+ '</h3> <h5 class="widget-user-desc">'
				+ date
				+ '</h5> </div> <div class="widget-user-image"> <img class="img-circle elevation-2" src="${pageContext.request.contextPath}/resources/dist/img/avatar5.png"alt="User Avatar"> </div> <div class="card-footer"> <div class="row"> <div class="col-sm-4 border-right"> <div class="description-block"> <h5 class="description-header">'
				+ profit
				+ '</h5> <span class="description-text">PROFIT</span> </div>'
				+

				' </div>'
				+

				' <div class="col-sm-4 border-right"> <div class="description-block"> <h5 class="description-header">'
				+ rate
				+ '</h5> <span class="description-text">RATE</span> </div>'
				+

				' </div>'
				+

				' <div class="col-sm-4"> <div class="description-block"> <h5 class="description-header">'
				+ follower
				+ '</h5> <span class="description-text">FOLLOWER</span> </div>'
				+

				' </div> <button type="button" class="btn btn-block btn-dark" onclick="uncopy(\''
				+ group + '\' ,\'' + name + '\' )"' + buttoncopied + '>'
				+ buttoncopiedtext + '</button>'

				+

				' </div>' +

				' </div> </div>';

		if (group.localeCompare(currentgroup) == 0) {
			var div = document.createElement('div');
			div.classList.add('col-md-4');
			div.innerHTML = template;
			parent.appendChild(div);
		}
		else
			{
			output = false;
			}
		
		return output;

	}
</script>
<script type="text/javascript">
	function uncopy(group, name) {
		//alert(group +name);
		document.getElementById("modaltitle").innerHTML = "Are you sure to un-copy "
				+ name + "?";
		document.getElementById("modalbody").innerHTML = "Click Confirm button below to stop copying all the action from "
				+ name
				+ ". </br>Note that if there are copied active position will no longer be managed by the master.<span id='selectedgroup' style='display:none'>"
				+ group + "</span>";
		$('#modal-default').modal('show');

	}

	function confirmuncopy() {
		var copygroup = document.getElementById("selectedgroup").innerHTML;
		document.getElementById("copybtn").innerHTML = '<i class="fa fa-spinner fa-spin"></i>';
		const obj = {};
		obj.group = copygroup;
		console.log(JSON.stringify(obj));

		$
				.ajax({
					url : "${pageContext.request.contextPath}/fundclient/ConfirmUncopyGroup",
					type : 'post',
					datatype : "application/json",
					contentType : "application/json",
					async : true,
					data : JSON.stringify(obj),
					success : function(data) {
						if (data.result.indexOf("retcode" >= 0)) {
							const jobject = JSON.parse(data.result);
							if (jobject.retcode.indexOf("0 Done") >= 0) {
								console.log(data.result);

								console.log(jobject.retcode);
								if (jobject.retcode == "0 Done") {
									//loadmodaltable(data.result);
									console.log(data.result);
									var returngroup = jobject.answer.Group;

									alert("Success! You un-copied this master");
									location.reload();

									//$('#modal-confirm').modal('show');

								} else {
									alert("Something Wrong Please Try Again Later.");
								}
							}

							else {
								alert("Something Wrong Please Try Again Later.");
								console.log("ERROR : " + data.result);

								return;
							}
						}
					},
					error : function(xhr, status) {
						alert("ERROR : " + xhr.responseText + " : " + status);
						console.log("ERROR : " + xhr.responseText + " : "
								+ status);

						return;
					}
				});

	}

	function getmygroup() {
		var group = "";
		$.ajax({
			url : '${pageContext.request.contextPath}/fundclient/getmygroup',
			type : 'get',
			async : false,
			data : '',
			success : function(data) {
				if (data.result.indexOf("0 Done" >= 0)) {
					//console.log(data.result);
					const jobject = JSON.parse(data.result);
					//console.log(jobject.retcode);
					if (jobject.retcode == "0 Done") {

						group = jobject.answer;

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

		return group;
	}

	function getallmaster() {

		var currentgroup = getmygroup();
		$
				.ajax({
					url : '${pageContext.request.contextPath}/fundclient/clientgetmasterlist',
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
									for (var i = 0; i < jobject.answer.length; i++) {
										const rateobj = JSON
												.parse(getrateobj(jobject.answer[i].login));
										console.log(rateobj.rate);
										console.log(rateobj.profit);
										 createDivs(
												jobject.answer[i].name,
												convertUnixtoLocalTime(jobject.answer[i].startdate),
												rateobj.profit,
												rateobj.rate,
												jobject.answer[i].follower,
												jobject.answer[i].group
														.replace(/\\/g, "\\\\"),
												currentgroup.replace(/\\/g,
														"\\\\"))
									}
									
									id

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
	getallmaster();

	function convertUnixtoLocalTime(unixTimestamp) {
		var dateObject = new Date(unixTimestamp * 1000)
		var convertedTime = dateObject.toLocaleDateString() //2019-12-9 10:30:15
		return convertedTime;
	}

	function getrateobj(id) {
		var output = "";

		$.ajax({
			url : '${pageContext.request.contextPath}/fundclient/getrate1?id='
					+ id,
			type : 'get',
			async : false,
			data : '',
			success : function(data) {
				if (data.result.indexOf("0 Done" >= 0)) {
					console.log(data.result);
					const jobject = JSON.parse(data.result);
					console.log(jobject.retcode);
					if (jobject.retcode == "0 Done") {

						output = data.result;

						
						
					}

				} else {
					alert(data.result);
					console.log(data.result);
					output = 0;
				}
			},
			error : function(xhr, status) {
				alert("ERROR : " + xhr + " : " + status);
				output = 0;
			}
		});

		return output;
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


</html>
