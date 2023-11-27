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
<title>Fund Client System | Log in</title>

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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/crm/css/sh.css">
</head>
<body class="hold-transition login-page">
	

	<section class="content">
		<div class="error-page">
			<div class="headline text-warning"><div class="login-box">
		<div class="login-logo">
		 <b><span style="font-size: 18px; color:#28a745">Seiren Holdings</span></b><br>
			<img class=" login-box-msg"
				style="width: 176px; border-radius: 33px;margin-top:10px"
				src="${pageContext.request.contextPath}/resources/dist/img/AdminLTELogo.jpg">
			
			
		</div>
		<!-- /.login-logo -->
		
	</div></div>
			<div class="error-content">
				<h5>
					Dear Mr/Ms <br>${name},
				</h5>
				<p>
					Thank you for confirming your email, your account will be create after our admin review all the details and document that you uploaded.
					 Meanwhile, you may <a href="${pageContext.request.contextPath}/fundclient/login">return to login</a>.
				</p>
				
			</div>

		</div>

	</section>


	<script
		src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js"></script>
</body>

</html>
