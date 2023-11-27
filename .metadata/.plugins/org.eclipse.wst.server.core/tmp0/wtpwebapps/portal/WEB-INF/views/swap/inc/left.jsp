<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="index.html" class="brand-link"> <img
		src="${pageContext.request.contextPath}/resources/dist/img/AdminLTELogo.jpg"
		alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
		style="opacity: .8"> <span class="brand-text font-weight-light">Swap
			Trading</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
			<div class="image">
				<img
					src="${pageContext.request.contextPath}/resources/dist/img/user2-160x160.jpg"
					class="img-circle elevation-2" alt="User Image" id="sideprofileimg">
			</div>
			<div class="info">
				<a href="#" class="d-block"><%=s_Name%> </a> <span
					style="color: #c2c7d0; font-size: 13px;">(<%=s_Type%>)
				</span>
			</div>
		</div>


		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
				<li class="nav-item"><a href="index" class="nav-link "
					id="Main_Page_nav"> <i class="nav-icon fas fa-home"
						aria-hidden="true"></i>
						<p>
							Main Page
							<!--  <span class="right badge badge-danger">New</span>-->
						</p>
				</a></li>



				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="nav-icon fa fa-list-ul" aria-hidden="true"></i>
						<p>
							Trading <i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<!-- <li class="nav-item"><a href="${pageContext.request.contextPath}/swap/Orders" class="nav-link"
							id="Orders_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Orders</p>
						</a></li> -->
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/swap/Positions"
							class="nav-link" id="Positions_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Positions</p>
						</a></li>
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/swap/History"
							class="nav-link" id="History_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>History</p>
						</a></li>

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/swap/SwapTrading"
							class="nav-link" id="Swap_Trading_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Swap Trading</p>
						</a></li>


					</ul></li>


				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/swap/SwapCalculator"
					class="nav-link" id="Swap_Calculator_nav"> <i
						class="nav-icon fa fa-calculator" aria-hidden="true"></i>
						<p>
							Swap Calculator
							<!--  <span class="right badge badge-danger">New</span>-->
						</p>
				</a></li>

				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/swap/myprofile"
					class="nav-link" id="My_Profile_nav"> <i
						class="nav-icon fa fa-user-circle" aria-hidden="true"></i>
						<p>
							My Profile
							<!--  <span class="right badge badge-danger">New</span>-->
						</p>
				</a></li>

				  <li class="nav-item"><a
					href="${pageContext.request.contextPath}/swap/notifications"
					class="nav-link" id="Notifications_nav"> <i
						class="nav-icon fa fa-bell-o" aria-hidden="true"></i>
						<p>
							Notifications<span class="right badge badge-danger"
								id="noticount">New</span>
							 
						</p>
				</a></li>
				
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/swap/logout"
					class="nav-link" id="logout_nav"> <i
						class="nav-icon fa fa-sign-out" aria-hidden="true"></i>
						<p>
							Logout
							<!--  <span class="right badge badge-danger">New</span>-->
						</p>
				</a></li>


			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>


<script type="text/javascript">
	
	 function getSideProfileImg()
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
	 }
	 

	/*function getSideProfileImg() {

		document.getElementById("sideprofileimg").src = "${pageContext.request.contextPath}/swap/image/p_default.jpg";

	}*/
	getSideProfileImg();
</script>