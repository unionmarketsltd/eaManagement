<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Swap Trading System | Log in</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="/portal/swap/login"><b>Fund Manager</b> System </a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
    <div id="loginformdiv">
      <p class="login-box-msg">Forgotten your password? key in your details below to recover your account.</p>

      <form action="${pageContext.request.contextPath}/crm/loginConfirm" method="get" name="loginFrm" id="loginFrm">
        <div class="input-group mb-3">
          <input type="number" id="login" name="login" class="form-control" placeholder="Trading Account Login">
        </div>
        <div class="input-group mb-3">
          <input type="email" id="email" name="email" class="form-control" placeholder="email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class=" fa fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="row">
          
          <!-- /.col -->
          <div class="col-12">
            <button id= "recoverbtn" type="button" onClick="check()" class="btn btn-primary btn-block">Recover My Account</button>
            <!-- <a href="javascript:check();">Sign In</a> -->
          </div>
          <!-- /.col -->
        </div>
      </form>
</div>
<div id="successresetdiv" style="display:none;text-align:center">
<span style="font-size: 50px;
    margin-bottom: 25px;
    color: green;"><i class="fa fa-check-circle" aria-hidden="true"></i></span>
<br>
<span>If the details you have enter are correct, an confirmation email will send to your inbox, please check your inbox for further step to recover your account.</span>


<br>
<br>
<a   class="btn btn-primary btn-block" href="${pageContext.request.contextPath}/swap/login">Go to Login Page</a></div>
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
<script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js"></script>
</body>
<script type="text/javascript">


function success(){
	
	document.getElementById("loginformdiv").style.display = "none";
	document.getElementById("successresetdiv").style.display = "";
	
	
	}
	
	
	
function check(){
	
	
	document.getElementById('recoverbtn').innerHTML ='<i class="fa fa-spinner fa-spin"></i>';
	if(document.loginFrm.login.value==""){
		alert("Please enter your login.")
		document.loginFrm.login.focus();
		document.getElementById('recoverbtn').innerHTML ='Recover My Account';
		return;
	}
	if(document.loginFrm.email.value==""){
		alert("Please enter your master password.")
		document.loginFrm.password.focus();
		document.getElementById('recoverbtn').innerHTML ='Recover My Account';
		return;
	}
	
	
	
	$.ajax({
		url : '${pageContext.request.contextPath}/swap/resetPassword',
		type : 'get',
		async: true,
		data : $("#loginFrm").serialize(),
		success : function(data) {
			success();
				//self.location.href="${pageContext.request.contextPath}/swap/index";
				
		},
		error : function(xhr, status) {
            alert("ERROR : " +data.result + xhr + " : " + status);
            return;
        }
	});
}
</script>
</html>
