<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<aside class="main-sidebar sidebar-dark-primary elevation-4">

	<!-- Brand Logo -->
	<a href="index.html" class="brand-link" > <img style="border-radius:14%;"
		src="${pageContext.request.contextPath}/resources/dist/img/AdminLTELogo.jpg"
		alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
		style="opacity: .8"> <span class="brand-text font-weight-light">SH Fund Manager</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
			<div class="image">
				<img
					src="${pageContext.request.contextPath}/resources/images/Userimg/p_default.jpg"
					class="img-circle elevation-2" alt="User Image" id="sideprofileimg">
			</div>
			<div class="info">
				<a href="#" class="d-block"><%=s_Name%> </a>

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
							Account <i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<!-- <li class="nav-item"><a href="${pageContext.request.contextPath}/swap/Orders" class="nav-link"
							id="Orders_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Orders</p>
						</a></li> -->
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/AccountList"
							class="nav-link" id="Account_List_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Group Account List</p>
						</a></li>

						<!--  <li class="nav-item"><a href="${pageContext.request.contextPath}/fundmanager/myAccountList"
							class="nav-link" id="My_Account_List_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p> My Account List</p>
						</a></li>-->

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/CreateAccount"
							class="nav-link" id="Create_Account_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Create account</p>
						</a></li>

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/Deposit"
							class="nav-link" id="Deposit_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Deposit</p>
						</a></li>

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/Withdrawal"
							class="nav-link" id="Withdrawal_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Withdrawal</p>
						</a></li>


						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/Transfer"
							class="nav-link" id="Transfer_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Transfer</p>
						</a></li>







					</ul></li>




				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="nav-icon fa fa-history" aria-hidden="true"></i>
						<p>
							Trading <i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/Positions"
							class="nav-link" id="Positions_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Positions</p>
						</a></li>


						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/History"
							class="nav-link" id="History_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>History</p>
						</a></li>





					</ul></li>



				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="nav-icon fa fa-money" aria-hidden="true"></i>
						<p>
							Fund <i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/fundHistory"
							class="nav-link" id="Fund_History_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>History</p>
						</a></li>


						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/FundDeposit"
							class="nav-link" id="Fund_Deposit_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Deposit</p>
						</a></li>


						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/FundWithdrawal"
							class="nav-link" id="Fund_Withdrawal_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Withdrawal</p>
						</a></li>





					</ul></li>


				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="nav-icon fa fa-info-circle" aria-hidden="true"></i>
						<p>
							Service Desk <i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">

						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/topics?type=1"
							class="nav-link" id="Open_Request_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Open</p>
						</a></li>


						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundmanager/topics?type=0"
							class="nav-link" id="Closed_Request_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Closed</p>
						</a></li>







					</ul></li>



				<!--  	<li class="nav-item"><a href="#" class="nav-link" id="cs_nav" style="display:none"> <i
						class="nav-icon fa fa-list-ul" aria-hidden="true"></i>
						<p>
							Customer Services <i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
					
						<li class="nav-item"><a href="${pageContext.request.contextPath}/fundmanager/CSnew"
							class="nav-link" id="Customer_Service_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>New</p>
						</a></li>
						
						
						<li class="nav-item"><a href="${pageContext.request.contextPath}/fundmanager/topics?type=0"
							class="nav-link" id="Closed_Request_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Closed</p>
						</a></li>
						
						
						
						
						
						

					</ul></li>-->


				<li class="nav-item"><a href="#" class="nav-link"
					id="dm_nav"> <i class="nav-icon fa fa-download"
						aria-hidden="true"></i>
						<p>
							Download Manager
							<!--  <span class="right badge badge-danger">New</span>-->
						</p>
				</a></li>


				<li class="nav-item"><a href="#" class="nav-link"
					id="dmt5_nav"> <i class="nav-icon fa fa-cloud-download"
						aria-hidden="true"></i>
						<p>
							Download MT5
							<!--  <span class="right badge badge-danger">New</span>-->
						</p>
				</a></li>






				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/fundmanager/logout"
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
	
</script>