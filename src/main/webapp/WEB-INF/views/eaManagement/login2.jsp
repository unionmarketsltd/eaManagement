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
<%@include file="inc/header.jsp"%>
<title>Union Market EA Management System</title>


<style>
iframe {

margin-left:auto !important;
margin-right:auto !important
}
</style>



</head>
<body>
<!-- %@include file="inc/top.jsp"%<> -->


	

	
	<!-- /LIVE NEWS WIDGET WRAP -->

	<!-- LAYOUT CONTENT FULL -->
	
		<div id="app">
		    <section class="section">
		      <div class="container mt-5">
		        <div class="row">
		          <div class="col-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-6 offset-lg-3 col-xl-4 offset-xl-4">
		            <div class="login-brand">
		              <p style="text-align:center;"><h4>Union Market EA <br>Management System</h4></p>
		            </div>
		
		            <div class="card card-primary">
		              <div class="card-header" style="text-align:center;"><span>Sign in to start your session</span></div>
		
		              <div class="card-body">
		                <form   id="loginFrm" name="loginFrm"></form>
		                  <div class="form-group">
		                    <label for="lgemail">Email</label>
		                    <input id="lgemail" type="email" class="form-control" name="lgemail" tabindex="1" required autofocus>
		                    <div class="invalid-feedback">
		                      Please fill in your email
		                    </div>
		                  </div>
		
		                  <div class="form-group">
		                    <div class="d-block">
		                    	<label for="lgpassword" class="control-label">Password</label>
		                      <div class="float-right">
		                      </div>
		                    </div>
		                    <input id="lgpassword" type="password" class="form-control" name="lgpassword" tabindex="2" required>
		                    <div class="invalid-feedback">
		                      please fill in your password
		                    </div>
		                  </div>
		
		                  
		                  <div class="form-group">
		                    <button class="btn btn-primary btn-lg btn-block" id="logginButton" onclick="loginbuttn();">Sign In</button>
		                    <!-- <a href="${pageContext.request.contextPath}/eaManagement/main" type="button" class="btn btn-primary btn-lg btn-block" tabindex="4">
		                      Sign In
		                    </a> -->
		                  </div>
		                
		                
		                
		
		              </div>
		            </div>
		            
		            
		          </div>
		        </div>
		      </div>
		    </section>
		  </div>	


	<%@include file="inc/footer2.jsp"%>
</body>

<script>
function loginbuttn(){
	const lgemail = document.getElementById("lgemail").value;
	const lgpassword = document.getElementById("lgpassword").value;
	
	// document.getElementById("logginButton").innerHTML ='<i class="fa fa-spinner fa-spin"></i>';
	$.ajax({
		url : '${pageContext.request.contextPath}/eaManagement/api/checkloginnew?email='+lgemail+'&passwd='+lgpassword,
		type : 'GET',
		contentType : "application/json",
		data : '',
		success : function(data) {
			console.log("check!");
			console.log(data.result);
			// alert(data.result);
			const ress = data.result;
			if(ress == "Success"){
				location.replace("${pageContext.request.contextPath}/eaManagement/main");
			} else {
				alert("Please try again!");
			}
			
			
		},
		error : function(xhr, status) {
			 
            alert(data.result ); // +data.result + xhr + " : " + status
            return;
        }
	});
}
</script>

</html>