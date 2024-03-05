<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="inc/session.jsp"%>
<html >
<head>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | My Page</title>

</head>
<body>
	<%@include file="inc/top.jsp"%>

	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">MT5 Accounts List</h2>
			<p class="banner-sections">
				<a style="color: white"
					href="${pageContext.request.contextPath}/home/index"
					class="banner-section">Home</a>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<a style="color: white"
					href="#"
					class="banner-section">Trade Account</a>
					
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<a style="color: white"
					href="#"
					class="banner-section">FOREX MT5 ACCOUNTS</a>
			</p>
		</div>
		<!-- /BANNER -->
	</div>

	<%@include file="inc/newsscroll.jsp"%>



	<div class="layout-content-full grid-limit">
    
    <div class="section-title-wrap blue no-space">
                <h2 class="section-title medium">MT5 Account List</h2>
                <div class="section-title-separator"></div>
              </div>
		
		<hr>
		
		<form action="${pageContext.request.contextPath}/forum/UploadController" type="multipart/form-data" method="post">
		  <label for="cars">Select an account:</label>
			<select class="form-control custom-select rounded-0 select2" name="groupCliemtID" id="groupCliemtID">
														<!--<option value="ClientID">Client Name</option>-->
				<c:forEach items="${nowform}" var="clistinfo" varStatus="status">
					<option value="${clistinfo.accountid}">${clistinfo.login}</option>
				</c:forEach>


			</select>
		  
		  <label for="lname">Last name:</label><br>
		  <input type="file" id="lname" name="lname" value="Doe"><br><br>
		  <input type="submit" value="Submit">
		</form> 
		
		
	
		
		
	</div>




	<%@include file="inc/footer.jsp"%>
</body>
</html>