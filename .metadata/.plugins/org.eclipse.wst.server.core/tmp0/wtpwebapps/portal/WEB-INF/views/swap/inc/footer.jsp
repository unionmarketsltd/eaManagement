<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<footer class="main-footer">
	<strong>Copyright &copy; <script>document.write(new Date().getFullYear())</script> <a href="#"></a>.
	</strong> All rights reserved.
	<div class="float-right d-none d-sm-inline-block">
		<b>Version</b> 1.0.0
	</div>
	
</footer>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
	$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/jqvmap/jquery.vmap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/moment/moment.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script
	src="${pageContext.request.contextPath}/resources/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<!-- <script src="${pageContext.request.contextPath}/resources/dist/js/demo.js"></script> -->
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="${pageContext.request.contextPath}/resources/dist/js/pages/dashboard.js"></script> -->

<script type="text/javascript">
	// sidebar controller-mf

	var url = window.location.href.split('/');
	var Epagetitle = url.pop() || url.pop();
	var pagetitle = "";
	console.log(Epagetitle);
	if (Epagetitle.indexOf("index") >= 0) {
		pagetitle = "Main Page";
	}
	if (Epagetitle.indexOf("Orders") >= 0) {
		pagetitle = "Orders";
	}

	if (Epagetitle.indexOf("Positions") >= 0) {
		pagetitle = "Positions";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("SwapTrading") >= 0) {
		pagetitle = "Swap Trading";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("SwapCalculator") >= 0) {
		pagetitle = "Swap Calculator";
		console.log(Epagetitle);
	}
	

	if (Epagetitle.indexOf("History") >= 0) {
		pagetitle = "History";
		console.log(Epagetitle);
	}

	if (Epagetitle.indexOf("allMaster") >= 0) {
		pagetitle = "All Master";
		console.log(Epagetitle);
	}

	if (Epagetitle.indexOf("mymaster") >= 0) {
		pagetitle = "My Master";
		console.log(Epagetitle);
	}

	if (Epagetitle.indexOf("mycopier") >= 0) {
		pagetitle = "My Copier";
		console.log(Epagetitle);
	}

	if (Epagetitle.indexOf("myprofile") >= 0) {
		pagetitle = "My Profile";
		console.log(Epagetitle);
	}

	if (Epagetitle.indexOf("notifications") >= 0) {
		pagetitle = "Notifications";
		console.log(Epagetitle);
	}

	if (Epagetitle.indexOf("fundHistoryAll") >= 0) {

		const whichtab = new URLSearchParams(window.location.search).get("tab");
		if (whichtab == null || whichtab == 1) {
			pagetitle = "Fund History All";
			console.log(Epagetitle);
		}

		if (whichtab == 2) {
			pagetitle = "Fund History Deposit";
			console.log(Epagetitle);
		}

		if (whichtab == 3) {
			pagetitle = "Fund History Withdrawal";
			console.log(Epagetitle);
		}

		if (whichtab == 4) {
			pagetitle = "Fund History Internal Transfer";
			console.log(Epagetitle);
		}

	}

	if (Epagetitle.indexOf("DownloadMT5") >= 0) {
		pagetitle = "Download MT5";
		console.log(Epagetitle);
	}
	
	GetNoticount();

	document.title = " SWAP | " + pagetitle;
	let navelement = pagetitle.replace(" ", "_").replace(" ", "_").replace(" ", "_") + "_nav";
	document.getElementById("pagetitlemain").innerHTML = pagetitle;
	document.getElementById("pagetitlesub").innerHTML = pagetitle;
	document.getElementById(navelement).classList.add("active");
	
	let parentelementtype = document.getElementById(navelement).parentElement.parentElement.parentElement.nodeName;
	if (parentelementtype === "LI") {
		document.getElementById(navelement).parentElement.parentElement.parentElement.classList
				.add("menu-open");
		document.getElementById(navelement).parentElement.parentElement.parentElement.childNodes[1].classList
				.add("active");
		
	}
	
	
	
	
	function GetNoticount() {
		$
				.ajax({
					url : '${pageContext.request.contextPath}/swap/getNewNotificationCount',
					type : 'get',
					async : true,
					data : $("#accountListFrm").serialize(),
					success : function(data) {
						if (data.result.indexOf("0 Done" >= 0)) {
							console.log(data.result);
							const jobject = JSON.parse(data.result);
							console.log(jobject.retcode);
							if (jobject.retcode == "0 Done") {
								if (jobject.hasOwnProperty('answer')) {
									const janswer = jobject.answer;
									var totalnoti = janswer["noti-count"]; 
									 document.getElementById("noticount").innerHTML = totalnoti;
									//alert("total page:"+totalpage);
								} else {
									//alert("server return error code");
									//alert(data.result);
									toastmsg("cant get noti count", data.result);
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
	
	
	
	function loadsideprofileimg()
	{
		$
		.ajax({
			url : '${pageContext.request.contextPath}/swap/getProfileImgUrl',
			type : 'get',
			async : true,
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
								document.getElementById("sideprofileimg").src = "${pageContext.request.contextPath}/swap/image/"+Jarrayanswer.url;
								
							} else {
								document.getElementById("sideprofileimg").src = "${pageContext.request.contextPath}/swap/image/"+Jarrayanswer.url;
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
	}loadsideprofileimg();
	
</script>

<!-- SweetAlert2 -->
<script src="${pageContext.request.contextPath}/resources/plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="${pageContext.request.contextPath}/resources/plugins/toastr/toastr.min.js"></script>

	<div id="toastsContainerTopRight" class="toasts-top-right fixed"></div>
	
	
                
                <script>
                function toastmsg( intitle , inbody) {
                    $(document).Toasts('create', {
                      title: intitle,
                      body: inbody
                    })
                  };</script>