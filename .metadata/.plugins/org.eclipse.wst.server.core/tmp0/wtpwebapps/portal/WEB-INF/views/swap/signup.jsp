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
<title>Swap Trading System | Sign Up</title>

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
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.login-box {
	width: 50% !important;
}

input[type="date"]::-webkit-inner-spin-button, input[type="date"]::-webkit-calendar-picker-indicator
	{
	display: none;
	-webkit-appearance: none;
}

select {
	-moz-appearance: none; /* Firefox */
	-webkit-appearance: none; /* Safari and Chrome */
	appearance: none;
}
</style>
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="/portal/swap/login"><b>Swap Trading</b> System </a>
		</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">Sign Up for an account</p>

				<form action="${pageContext.request.contextPath}/crm/loginConfirm"
					method="get" name="loginFrm" id="loginFrm">

					<div class="row">

						<div class="col-md-6">
							<div class="input-group mb-3">
								<input type="text" id="PersonName" name="PersonName"
									class="form-control" placeholder="Name">
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fa fa-user-circle"></span>
									</div>
								</div>
							</div>
							<div class="input-group mb-3">
								<input type="date" id="PersonBirthDate" name="PersonBirthDate"
									class="form-control" placeholder="BirthDate">
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fa fa-calendar"></span>
									</div>
								</div>
							</div>


							<div class="input-group mb-3">
								<select class="form-control" id="PersonGender">
									<option value="1">Male</option>
									<option value="2">Female</option>

								</select>
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fa fa-dot-circle-o"></span>
									</div>
								</div>
							</div>

							<div class="input-group mb-3">
								<input type="email" class="form-control" id=ContactEmail
									name="ContactEmail" placeholder="ContactEmail">
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fas fa-envelope"></span>
									</div>
								</div>
							</div>
							<div class="input-group mb-3">
								<input type="text" class="form-control" id=ContactPhone
									name="ContactPhone" placeholder="ContactPhone">

								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fas fa-phone"></span>
									</div>
								</div>
							</div>

							<div class="input-group mb-3">
								<input type="text" class="form-control" id=AddressCountry
									name="AddressCountry" placeholder="AddressCountry">

								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fa fa-globe"></span>
									</div>
								</div>
							</div>



						</div>
						<div class="col-md-6">
							<div class="input-group mb-3">
								<input type="text" id="AddressPostcode" name="AddressPostcode"
									class="form-control" placeholder="AddressPostcode">

								<div class="input-group-append">
									<div class="input-group-text">
										<i class="fa fa-address-book-o"></i>
									</div>
								</div>
							</div>

							<div class="input-group mb-3">
								<input type="text" class="form-control" id=AddressStreet
									name="AddressStreet" placeholder="AddressStreet">
								<div class="input-group-append">
									<div class="input-group-text">
										<i class="fa fa-address-card-o" aria-hidden="true"></i>
									</div>
								</div>
							</div>

							<div class="input-group mb-3">
								<input type="text" class="form-control" id=AddressState
									name="AddressState" placeholder="AddressState">
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fa fa-globe"></span>
									</div>
								</div>
							</div>
							<div class="input-group mb-3">
								<input type="text" class="form-control" id=AddressCity
									name="AddressCity" placeholder="AddressCity">
								<div class="input-group-append">
									<div class="input-group-text">
										<span class="fa fa-home"></span>
									</div>
								</div>
							</div>




							<div class="input-group mb-3">
								<div class="custom-file">
									<input type="file" class="custom-file-input"
										id="exampleInputFile" > <label
										class="custom-file-label" for="exampleInputFile">ID Card (.jpg .png .pdf file only)</label>
								</div>

							</div>

							<div class="input-group mb-3">
								<div class="custom-file">
									<input type="file" class="custom-file-input"
										id="exampleInputFile1" > <label
										class="custom-file-label" for="exampleInputFile1">Proof
										of Address (.jpg .png .pdf file only)</label>
								</div>

							</div>


							<div class="row">
								<div class="col-8">
									<div class="icheck-primary"></div>
								</div>
								<!-- /.col -->
								<div class="col-4">
									<button type="button" id="signupbtn"
										onclick="javascript:check();"
										class="btn btn-primary btn-block">Sign Up</button>
									<!-- <a href="javascript:check();">Sign In</a> -->
								</div>

								<!-- <img style="width:100px;height:100px"id="uploadimage" />-->
								<!-- /.col -->
							</div>
						</div>
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
					<strong>Copyright &copy; <script>document.write(new Date().getFullYear())</script>
						<a href="#"></a>.
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

	<script
		src="${pageContext.request.contextPath}/resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/dist/js/adminlte.min.js?v=3.2.0"></script>
</body>
<script type="text/javascript">
	function check() {
		if (document.loginFrm.PersonName.value == "") {
			alert("Please enter your Name.")
			document.loginFrm.PersonName.focus();
			return;
		}
		
		
		if (document.loginFrm.PersonBirthDate.value == "") {
			alert("Please enter your Birth Date.")
			document.loginFrm.PersonGender.focus();
			return;
		}
		
		
		if (document.loginFrm.ContactEmail.value == "") {
			alert("Please enter your Gender.")
			document.loginFrm.PersonGender.focus();
			return;
		}
		
		if (document.loginFrm.ContactPhone.value == "") {
			alert("Please enter your Contact Phone.")
			document.loginFrm.PersonGender.focus();
			return;
		}
		
		if (document.loginFrm.AddressCountry.value == "") {
			alert("Please enter Country.")
			document.loginFrm.PersonGender.focus();
			return;
		}
		
		if (document.loginFrm.AddressPostcode.value == "") {
			alert("Please enter Postcode.")
			document.loginFrm.PersonGender.focus();
			return;
		}
		
		if (document.loginFrm.AddressStreet.value == "") {
			alert("Please enter Street.")
			document.loginFrm.PersonGender.focus();
			return;
		}
		
		if (document.loginFrm.AddressState.value == "") {
			alert("Please enter State.")
			document.loginFrm.PersonGender.focus();
			return;
		}
		
		if (document.loginFrm.AddressCity.value == "") {
			alert("Please enter City.")
			document.loginFrm.PersonGender.focus();
			return;
		}
		
		
		if (base64ID.length<10) {
			alert("Please select ID document to upload.")
			return;
		}
		
		if (base64POA.length<10) {
			alert("Please select Proof of Address document to upload.")
			return;
		}
		
		document.getElementById("signupbtn").innerHTML ='<i class="fa fa-spinner fa-spin"></i>';
		testPost();
	}
	
	
	let input = document.getElementById("exampleInputFile");
	let label = document.querySelector("label[for='exampleInputFile']");
	input.addEventListener("change", e => {
	  label.innerText = input.value.split(`C:\\fakepath\\`)[1];
	  getbase64forID();
	});
	
	
	
	let input1 = document.getElementById("exampleInputFile1");
	let label1 = document.querySelector("label[for='exampleInputFile1']");
	input1.addEventListener("change", e => {
	  label1.innerText = input1.value.split(`C:\\fakepath\\`)[1];
	  getbase64forPOA();
	});
	
	let base64ID = "";
	let base64POA = "";
	let base64IDExt = "";
	let base64POAExt = "";
	
	function getbase64()
	{
		var file = document.getElementById("exampleInputFile").files[0];
		if (file) {
		  var filereader = new FileReader();
		  filereader.readAsDataURL(file);
		  filereader.onload = function (evt) {
		     var base64 = evt.target.result;
		     //document.getElementById("idcard").value = base64.slice(base64.indexOf(",")+1, base64.length);
		     console.log(base64.slice(base64.indexOf(",")+1, base64.length));
		     console.log($("#loginFrm").serialize()+base64.slice(base64.indexOf(",")+1, base64.length));
		     document.getElementById("uploadimage").src=base64;
		      return base64
		    // base64ID = base64.slice(base64.indexOf(",")+1, base64.length);
		  }
	}
	}
	
	function getbase64forID()
	{
		var file = document.getElementById("exampleInputFile").files[0];
		if(file.name.split('.').pop().indexOf("jpg")>=0 || file.name.split('.').pop().indexOf("png")>=0 || file.name.split('.').pop().indexOf("pdf")>=0)
			{
			
			
		if (file) {
		  var filereader = new FileReader();
		  filereader.readAsDataURL(file);
		  filereader.onload = function (evt) {
		     var base64 = evt.target.result;
		     
		     base64ID = base64.slice(base64.indexOf(",")+1, base64.length);
		     base64IDExt = file.name.split('.').pop();
		     console.log(base64ID);
		     console.log(base64IDExt);
		  }
	}
			}
		else
			{
			
			 document.querySelector("label[for='exampleInputFile']").innerText = "ID Card (.jpg .png .pdf file only)";
			 var $el = $('#exampleInputFile');
		      $el.wrap('<form>').closest('form').get(0).reset();
		      $el.unwrap();
			alert("please choose .jpg .png .pdf extension images");
			}
	}
	
	function getbase64forPOA()
	{
		var file = document.getElementById("exampleInputFile1").files[0];
		if(file.name.split('.').pop().indexOf("jpg")>=0 || file.name.split('.').pop().indexOf("png")>=0 || file.name.split('.').pop().indexOf("pdf")>=0)
		{
			
		
		if (file) {
		  var filereader = new FileReader();
		  filereader.readAsDataURL(file);
		  filereader.onload = function (evt) {
		     var base64 = evt.target.result;
		     base64POA = base64.slice(base64.indexOf(",")+1, base64.length);
		     base64POAExt = file.name.split('.').pop();
		     console.log(base64POA);
		     console.log(file.name.split('.').pop());
		  }
	}
		}
		else
		{
		
		 document.querySelector("label[for='exampleInputFile1']").innerText = "Proof of Address (.jpg .png .pdf file only)";
		 var $el = $('#exampleInputFile1');
	      $el.wrap('<form>').closest('form').get(0).reset();
	      $el.unwrap();
		alert("please choose .jpg .png .pdf extension images");
		}
		
	}
	
	
	function getbase64text()
	{
		var file = document.getElementById("exampleInputFile").files[0];
		if (file) {
		  var filereader = new FileReader();
		  filereader.readAsDataURL(file);
		  filereader.onload = function (evt) {
		     var base64 = evt.target.result;
		      console.log(base64);
		  }
	}
	}
	
	
	
	
	function testPost()
	{
		document.getElementById('signupbtn').innerHTML ='<i class="fa fa-spinner fa-spin"></i>';
			var obj = {};
			var form = document.loginFrm;
			var elements = form.querySelectorAll( "input, select, textarea" );
			for( var i = 0; i < elements.length; ++i ) {
				var element = elements[i];
				var name = element.name;
				if(name =="PersonBirthDate")
					{
					
					var value = new Date(element.value).getTime() / 1000
					}
				else
					{
					var value = element.value;
					}
					
				

				if( name ) {
					obj[ name ] = value;
				}
			}
			
			obj.PersonGender = document.loginFrm.PersonGender.value;
		//	var base64 = document.getElementById("uploadimage").src;
			//obj.test=  base64.slice(base64.indexOf(",")+1, base64.length);
			
			 obj.base64ID  =base64ID;
			 obj.base64POA =base64POA;
			 obj.base64IDExt = base64IDExt;
			 obj.base64POAExt = base64POAExt;

			var json =  JSON.stringify( obj );
			console.log(json)
		
		$
		.ajax({
			url : '${pageContext.request.contextPath}/swap/signupConfirm',
			type : 'post',
			contentType: 'application/json',
			async : true,
			data : json,
			success : function(data) {
				console.log(data.result);
				
				if(data.result.indexOf("0 Done")>=0)
					{
					alert("Success Apply for an account,we will send you an confirmation email upon approval of account. Thanks. ")
					
					window.location.replace("${pageContext.request.contextPath}/swap/login");
					document.getElementById("signupbtn").innerHTML ='Sign Up';
					}
			
			
			
			
			},
			error : function(xhr, status) {
				alert("ERROR : " + data.result + xhr + " : " + status);
				document.getElementById("signupbtn").innerHTML ='Sign Up';
				return;
			}
		});
	}
</script>
</html>


