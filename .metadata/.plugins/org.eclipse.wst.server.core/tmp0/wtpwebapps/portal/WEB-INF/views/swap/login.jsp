<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Swap Trading System | Log in</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/fontawesome-free/css/all.min.css">
<!-- icheck bootstrap -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="/portal/swap/login"><b>Swap Trading</b> System </a>
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">Sign in to start your session</p>

				<form action="${pageContext.request.contextPath}/crm/loginConfirm"
					method="get" name="loginFrm" id="loginFrm">
					<div class="input-group mb-3">
						<input type="number" id="login" name="login" class="form-control"
							placeholder="Login">
					</div>
					<div class="input-group mb-3">
						<input type="password" id="password" name="password"
							class="form-control" placeholder="Password">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						
						<!-- /.col -->
						<div class="col-12">
							<button id="signinbtn" type="button"
								onClick="javascript:check();" class="btn btn-primary btn-block">Sign
								In</button>
							<!-- <a href="javascript:check();">Sign In</a> -->
						</div>
						<br>
						<br>
						
						<div class="row" style="text-align:center">
							<p class="mb-1 col-12">
								<a href="${pageContext.request.contextPath}/swap/forgotpassword">I forgot my password</a>
							</p>



							<p class="mb-0 col-12">
								<a href="${pageContext.request.contextPath}/swap/signup" class="text-center">Register a new
									account</a>
							</p>

						</div>
						<!-- /.col -->
					</div>
				</form>

				<!--   <div class="social-auth-links text-center mb-3">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
        </a>
      </div>-->
				<!-- /.social-auth-links -->

				<!--   <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p>
      <p class="mb-0">
        <a href="register.html" class="text-center">Register a new membership</a>
      </p>-->
				<p style="text-align: center">
					<strong>Copyright &copy; <script>document.write(new Date().getFullYear())</script> <a href="#"></a>.
					</strong> All rights reserved.
				</p>
			</div>
			<!-- /.login-card-body -->
		</div>
	</div>
	<!-- /.login-box -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js"></script>
</body>
<script type="text/javascript">
	function check() {

		if (document.loginFrm.login.value == "") {
			alert("Please enter your login.")
			document.loginFrm.login.focus();
			return;
		}
		if (document.loginFrm.password.value == "") {
			alert("Please enter your master password.")
			document.loginFrm.password.focus();
			return;
		}

		document.getElementById("signinbtn").innerHTML = '<i class="fa fa-spinner fa-spin"></i>';
		$
				.ajax({
					url : '${pageContext.request.contextPath}/swap/loginConfirm',
					type : 'get',
					async : false,
					data : $("#loginFrm").serialize(),
					success : function(data) {
						if (data.result == "SUCCESS") {
							self.location.href = "${pageContext.request.contextPath}/swap/index";
						} else {
							document.getElementById("signinbtn").innerHTML = 'Sign In';
							alert(data.result);
							return;
						}
					},
					error : function(xhr, status) {
						document.getElementById("signinbtn").innerHTML = 'Sign In';
						alert("ERROR : " + data.result + xhr + " : " + status);
						return;
					}
				});
	}
</script>
</html>
