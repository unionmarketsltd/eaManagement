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
		style="opacity: .8"> <span class="brand-text font-weight-light">Fund Admin</span>
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



				<li class="nav-item"><a href="#" class="nav-link" id="cs_nav"
					style="display: none"> <i class="nav-icon fa fa-user-circle-o"
						aria-hidden="true"></i>
						<p>
							Customer Services <i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundadmin/CSnew"
							class="nav-link" id="new_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>New</p>
						</a></li>


						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/fundadmin/CSall"
							class="nav-link" id="all_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>All</p>
						</a></li>



					</ul></li>


				<li class="nav-item"><a href="#" class="nav-link"> <i
						class="nav-icon fa fa-list-ul" aria-hidden="true"></i>
						<p>
							New Customer <i class="fas fa-angle-left right"></i>
						</p>
				</a>
					<ul class="nav nav-treeview">
					<!-- <li class="nav-item"><a href="${pageContext.request.contextPath}/swap/Orders" class="nav-link"
							id="Orders_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Orders</p>
						</a></li> -->	
						<li class="nav-item"><a href="${pageContext.request.contextPath}/fundadmin/ApplicationList"
							class="nav-link" id="Application_List_nav"> <i
								class="fa fa-angle-double-right nav-icon"></i>
								<p>Application List</p>
						</a></li>
						

					</ul></li>


				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/fundadmin/AddMasterManager"
					class="nav-link"  id="Add_Master_Manager_nav"> <i
						class="nav-icon fa fa-users" aria-hidden="true"></i>
						<p>
							+ Master Manager
							<!--  <span class="right badge badge-danger">New</span>-->
						</p>
				</a></li>
				
				
				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/fundadmin/mastersetting"
					class="nav-link"  id="Master_Setting_nav"> <i
						class="nav-icon fa fa-cog" aria-hidden="true"></i>
						<p>
							Master Settings
							<!--  <span class="right badge badge-danger">New</span>-->
						</p>
				</a></li>
				

				<li class="nav-item"><a
					href="${pageContext.request.contextPath}/fundadmin/logout"
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