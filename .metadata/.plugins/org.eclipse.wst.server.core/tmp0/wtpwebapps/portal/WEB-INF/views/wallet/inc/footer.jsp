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
		pagetitle = "Virtual Wallet";
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
	
	
	
	
	if (Epagetitle.indexOf("CryptoDeposit") >= 0) {
		pagetitle = "Crypto Deposit";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("TransactionAll") >= 0) {
		pagetitle = "Transaction All";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("TransactionIn") >= 0) {
		pagetitle = "Transaction In";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("TransactionOut") >= 0) {
		pagetitle = "Transaction Out";
		console.log(Epagetitle);
	}
	
	

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
	
	
	
	
	
	
	
</script>

<div class="loading-overlay">
  <div class="loading-spinner"></div>
</div>
<script>
function showloading(onoff)
{
	if(onoff)
		{ document.querySelector('.loading-overlay').style.display = 'block';
		
		}
	else
		{
		 document.querySelector('.loading-overlay').style.display = 'none';
		}
	
	}



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