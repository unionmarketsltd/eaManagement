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
					<form method="POST" action="uploadFile"
						enctype="multipart/form-data">
						File to upload: <input type="file" name="file" id="uploadfile"
							accept=".png,.jpg" onchange="getfilename()"> <br />
						<input type="text" name="name" id="filename" style="display:none"> <br /> <br /> <input
							type="submit" value="Upload">
					</form>
					<c:if test="${not empty message}">
    ${message} <!-- here would be a message with a result of processing -->
					</c:if>
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
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">
										<strong>404</strong>
									</h3>

								</div>
								<!-- /.card-header -->
								<div class="card-body " style="text-align: center">
									<h3>Sorry,</h3>
									<h5>We can't find the page you're looking for,</h5>
									<h5>This may due to the page is no longer exist or you
										have no privilege to access to the page,</h5>
									<h5>
										Click here to <a
											href="${pageContext.request.contextPath}/fundclient/index">Return
											to home</a>
									</h5>
									<img src="http://localhost:8080/portal/fundclient/image/qqq.jpg"
										alt="Girl in a jacket" width="500" height="600">
								</div>

							</div>
						</div>
					</div>
					<!-- Main row -->
					<!-- /.row (main row) -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
	</div>


	<script>
		function getfilename() {
			
			document.getElementById("filename").value = 	document.getElementById("uploadfile").files[0].name;

		}
	</script>
	
	<!-- /.content-wrapper -->
	<%@include file="inc/footer.jsp"%>
</body>
</html>
