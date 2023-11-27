<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html lang="en">

<head>
<%@include file="inc/header.jsp"%>
</head>

<body>
	<%@include file="inc/top.jsp"%>
	<main>
	<section class="py-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-9 text-center">
                        <h1 class="fw-bold">Open a live  <span class="text-highlight">account</span></h1>
                       
                    </div>
                    
                </div>
                <hr class="mt-3 mb-2">
                <div class="row row-cols-md-1 row-cols-lg-3 gx-lg-3">
                    <div class="col timeline-horizontal">
                        <div class="timeline-item d-flex align-items-center ms-3">
                            <div class="icon-wrap bg-info me-1">
                                <i class="fas fa-clipboard-check fa-lg text-white"></i>
                            </div>
                            <div class="d-flex align-items-center">
                                <h5 class="fw-bold mb-0 me-1">Write information</h5>
                                <span class="badge bg-secondary">on progress</span>
                            </div>
                        </div>
                        <div class="card mt-2">
                            <div class="card-body ps-2">
                                <ul class="fa-ul lh-lg mb-0">
                                    <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>Account type</li>
                                    <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>Write personal information</li>
                                    <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>Address input</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col timeline-horizontal">
                        <div class="timeline-item d-flex align-items-center mt-2 mt-md-2 mt-lg-0 ms-3">
                            <div class="icon-wrap bg-info me-1">
                                <i class="fas fa-cog fa-lg text-white"></i>
                            </div>
                            <div class="d-flex align-items-center">
                                <h5 class="fw-bold mb-0 me-1">Upload KYC documents</h5>
                                <span class="badge bg-secondary">planned</span>
                            </div>
                        </div>
                        <div class="card mt-2">
                            <div class="card-body ps-2">
                                <ul class="fa-ul lh-lg mb-0">
                                    <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>Upload ID</li>
                                    <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>Upload address proof</li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col timeline-horizontal">
                        <div class="timeline-item d-flex align-items-center mt-2 mt-md-2 mt-lg-0 ms-3">
                            <div class="icon-wrap bg-info me-1">
                                <i class="fas fa-flask fa-lg text-white"></i>
                            </div>
                            <div class="d-flex align-items-center">
                                <h5 class="fw-bold mb-0 me-1">Customer Agreement</h5>
                                <span class="badge bg-secondary">planned</span>
                            </div>
                        </div>
                        <div class="card mt-2">
                            <div class="card-body ps-2">
                                <ul class="fa-ul lh-lg mb-0">
                                    <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>Terms of Use</li>
                                    <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>AML anti-money laundering</li>
                                    <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>Risk Management Notice</li>
                                    </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        
        <div class="icon-wrap bg-info me-1">
                                <i class="fas fa-clipboard-check fa-lg text-white"></i>
                            </div>
                            <div class="d-flex align-items-center">
                                <h5 class="fw-bold mb-0 me-1">Write information</h5>
                                <span class="badge bg-secondary">on progress</span>
                            </div>
	<!-- content end here -->
	</main>
	<!-- footer begin -->
	<%@include file="inc/footer.jsp"%>
</body>

</html>