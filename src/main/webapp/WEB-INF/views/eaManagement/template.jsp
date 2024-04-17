<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<!-- %@include file="inc/session.jsp"%<> -->

<head>
<%@include file="inc/header.jsp"%>
<title>Union Market EA Management System</title>



</head>
<body>
	<%@include file="inc/top.jsp"%>
	<%@include file="inc/sidemenu.jsp"%>
	
	      <!-- Main Content -->
	      <div class="main-content">
	        <section class="section">
	          <div class="section-header">
	            <h4>Blank Page</h4>
	            <div class="section-header-breadcrumb">
	              <div class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/eaManagement/main"><i class="fa fa-tachometer" aria-hidden="true"></i>Home</a></div>
	            </div>
	          </div>
	
	          <div class="section-body">
	          </div>
	        </section>
	      </div>
	      
  <!-- FOOTER -->
	<!--  -->
	<%@include file="inc/footer.jsp"%>
	
</body>
</html>