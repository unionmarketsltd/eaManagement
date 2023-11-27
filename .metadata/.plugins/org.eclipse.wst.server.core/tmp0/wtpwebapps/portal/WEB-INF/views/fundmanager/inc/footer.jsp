<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<footer class="main-footer">
	<strong>Copyright &copy; 2022 <a href="#" class="newcolor">Fund Manager</a>.
	</strong> All rights reserved.
	<div class="float-right d-none d-sm-inline-block">
		<b>Version</b> 1.0.0
	</div>
	
</footer>
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
	
	function sortTable() {
			  var table, rows, switching, i, x, y, shouldSwitch;
			  table = document.getElementById("datatable");
			  switching = true;
			  /* Make a loop that will continue until
			  no switching has been done: */
			  while (switching) {
			    switching = false;
			    rows = table.rows;
			    /* Loop through all table rows (except the
			    first, which contains table headers): */
			    for (i = 1; i < (rows.length - 1); i++) {
			      shouldSwitch = false;
			      /* Get the two elements you want to compare,
			      one from current row and one from the next: */
			      x = rows[i].getElementsByTagName("TD")[5];
			      y = rows[i + 1].getElementsByTagName("TD")[5];
			      /* Check if the two rows should switch place,
			      based on the direction, asc or desc: */
			      if (new Date(x.innerHTML) < new Date(y.innerHTML)) {
			        // If the date of the current row is less than the date of the next row
			        // set shouldSwitch to true and break out of the loop
			        shouldSwitch = true;
			        break;
			      }
			    }
			    if (shouldSwitch) {
			      /* If a switch has been marked, make the switch
			      and mark the switch as done: */
			      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
			      switching = true;
			    }
			  }
			}
	


	
	var differenttab = false;
	var lefttitle = "";
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

	if (Epagetitle.indexOf("ApplicationList") >= 0) {
		pagetitle = "Application List";
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

	if (Epagetitle.indexOf("pushNotification") >= 0) {
		pagetitle = "Push Notification";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("AccountList") >= 0) {
		pagetitle = "Account List";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("CreateAccount") >= 0) {
		pagetitle = "Create Account";
		console.log(Epagetitle);
	}
	
	
	if (Epagetitle.indexOf("myAccountList") >= 0) {
		pagetitle = "My Account List";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("Deposit") >= 0) {
		pagetitle = "Deposit";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("Withdrawal") >= 0) {
		pagetitle = "Withdrawal";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("Transfer") >= 0) {
		pagetitle = "Transfer";
		console.log(Epagetitle);
	}
	
	
	if (Epagetitle.indexOf("Positions") >= 0) {
		pagetitle = "Positions";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("History") >= 0) {
		pagetitle = "History";
		console.log(Epagetitle);
	}
	
	if (Epagetitle.indexOf("fundHistory") >= 0) {
		pagetitle = "Fund History";
		console.log(Epagetitle);
	}
			
			
			if (Epagetitle.indexOf("topics?type=1") >= 0) {
				pagetitle = "Open Request";
				console.log(Epagetitle);
			}
			

			if (Epagetitle.indexOf("topics?type=0") >= 0) {
				pagetitle = "Closed Request";
				console.log(Epagetitle);
			}
			
			if (Epagetitle.indexOf("newtopic") >= 0) {
				pagetitle = "Create a New Request";
				console.log(Epagetitle);
			}
			
			if (Epagetitle.indexOf("viewtopic") >= 0) {
				pagetitle = "View Topic";
				console.log(Epagetitle);
			}
			
			if (Epagetitle.indexOf("CSnew") >= 0) {
				pagetitle = "New Fund Manager Request";
				lefttitle = "new";
				differenttab =  true;
				console.log(Epagetitle);
			}
			
			if (Epagetitle.indexOf("CSall") >= 0) {
				pagetitle = "All Customer Service Request";
				lefttitle = "all"
				differenttab = true;
				console.log(Epagetitle);
			}
			if (Epagetitle.indexOf("viewCustomerTopic?tab=all") >= 0) {
						pagetitle = "All Customer That Opened Request";
						lefttitle = "all"
						differenttab = true;
						console.log(Epagetitle);
					}
			if (Epagetitle.indexOf("viewCustomerTopicComment?tab=all") >= 0) {
								pagetitle = "View Customer Request Conversation";
								lefttitle = "all"
								differenttab = true;
								console.log(Epagetitle);
							}
			if (Epagetitle.indexOf("viewCustomerTopic?tab=new") >= 0) {
				pagetitle = "New and Active Request";
				lefttitle = "new"
				differenttab = true;
				console.log(Epagetitle);
			}
	if (Epagetitle.indexOf("viewCustomerTopicComment?tab=new") >= 0) {
						pagetitle = "View Customer Request Conversation";
						lefttitle = "new"
						differenttab = true;
						console.log(Epagetitle);
					}
	if (Epagetitle.indexOf("viewtopic?status=Closed") >= 0) {
		pagetitle = "View Topic";
		lefttitle = "Closed Request";
		differenttab = true;
		console.log(Epagetitle);
	}
			if (Epagetitle.indexOf("viewtopic?status=open") >= 0) {
				pagetitle = "View Topic";
				lefttitle = "Open Request";
				differenttab = true;
				console.log(Epagetitle);
			}
			
			if (Epagetitle.indexOf("newtopic") >= 0) {
				pagetitle = "Create a New Request";
				lefttitle = "Open Request";
				differenttab = true;
				console.log(Epagetitle);
			}
			if (Epagetitle.indexOf("EditAccount") >= 0) {
				pagetitle = "Edit An Account";
				lefttitle = "Account List";
				differenttab = true;
				console.log(Epagetitle);
			}
			if (Epagetitle.indexOf("FundDeposit") >= 0) {
				pagetitle = "Fund Deposit";
				lefttitle = "Fund Deposit";
				differenttab = true;
				console.log(Epagetitle);
			}
			
			if (Epagetitle.indexOf("FundWithdrawal") >= 0) {
				pagetitle = "Fund Withdrawal";
				lefttitle = "Fund Withdrawal";
				differenttab = true;
				console.log(Epagetitle);
			}
			if (Epagetitle.indexOf("newWithdrawalRequest") >= 0) {
				pagetitle = "Create A Withdrawal Request";
				lefttitle = "Fund Withdrawal";
				differenttab = true;
				console.log(Epagetitle);
			}
			if (Epagetitle.indexOf("viewWithdrawalRequest") >= 0) {
				pagetitle = "View Withdrawal Request";
				lefttitle = "Fund Withdrawal";
				differenttab = true;
				console.log(Epagetitle);
			}	


	document.title = " FUND MANAGER | " + pagetitle;
	let navelement = pagetitle.replace(" ", "_").replace(" ", "_").replace(" ", "_") + "_nav";
	if(differenttab ==  true)
		{
		 navelement = lefttitle.replace(" ", "_").replace(" ", "_").replace(" ", "_") + "_nav";
		}
	
	console.log(navelement);
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