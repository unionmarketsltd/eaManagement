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
<section class="pt-5 pb-2">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="card bg-info border-0" style="background-image: url(img/blockit/in-content-10-image.png); background-repeat: no-repeat; background-position: left bottom;">
                            <div class="card-body p-3 p-md-4 p-lg-4">
                                <h1 class="fw-bold text-center mb-2 text-white"><spring:message code="hlp.top.title" text="Hi, we’re here to help." /></h1>
                                
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
        </section>
        <section class="py-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-12">
                        <div class="card mb-2">
                            <div class="card-body px-3 px-md-4 px-lg-4">
                                <div class="d-md-flex d-lg-flex align-items-center">
                                    <div>
                                        <div class="icon-wrap bg-info flex-shrink-0">
                                            <i class="fas fa-book fa-lg text-white"></i>
                                        </div>
                                    </div>
                                    <div class="ms-0 ms-md-3 ms-lg-3 mt-2 mt-md-0 mt-lg-0">
                                        <h5 class="fw-bold">
                                            <a href="#" class="link-primary text-decoration-none stretched-link"><spring:message code="hlp.info1.title" text="Inquiries about opening an account" /></a>
                                        </h5>
                                        <div class="d-flex align-items-start">
                                           
                                            <small><spring:message code="hlp.info.email" text="Email :" /> account@unionmks.com<br><span class="text-muted"><spring:message code="hlp.info.desc" text="Skype :" /> union_account</span></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-2">
                            <div class="card-body px-3 px-md-4 px-lg-4">
                                <div class="d-md-flex d-lg-flex align-items-center">
                                    <div>
                                        <div class="icon-wrap bg-info flex-shrink-0">
                                            <i class="fas fa-pen-nib fa-lg text-white"></i>
                                        </div>
                                    </div>
                                    <div class="ms-0 ms-md-3 ms-lg-3 mt-2 mt-md-0 mt-lg-0">
                                        <h5 class="fw-bold">
                                            <a href="#" class="link-primary text-decoration-none stretched-link"><spring:message code="hlp.info2.title" text="Partner inquiries" /></a>
                                        </h5>
                                        <div class="d-flex align-items-start">
                                        
                                            <small><spring:message code="hlp.info.email" text="Email :" /> partner@unionmks.com<br><span class="text-muted"><spring:message code="hlp.info.desc" text="Skype :" /> union_partner</span></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-2">
                            <div class="card-body px-3 px-md-4 px-lg-4">
                                <div class="d-md-flex d-lg-flex align-items-center">
                                    <div>
                                        <div class="icon-wrap bg-info flex-shrink-0">
                                            <i class="fas fa-file-invoice fa-lg text-white"></i>
                                        </div>
                                    </div>
                                    <div class="ms-0 ms-md-3 ms-lg-3 mt-2 mt-md-0 mt-lg-0">
                                        <h5 class="fw-bold">
                                            <a href="#" class="link-primary text-decoration-none stretched-link"><spring:message code="hlp.info3.title" text="Inquiry about deposit and withdrawal" /></a>
                                        </h5>
                                        <div class="d-flex align-items-start">
                                          
                                            <small><spring:message code="hlp.info.email" text="Email :" /> fund@unionmks.com<br><span class="text-muted"><spring:message code="hlp.info.desc" text="Skype :" /> union_support</span></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body px-3 px-md-4 px-lg-4">
                                <div class="d-md-flex d-lg-flex align-items-center">
                                    <div>
                                        <div class="icon-wrap bg-info flex-shrink-0">
                                            <i class="fas fa-users fa-lg text-white"></i>
                                        </div>
                                    </div>
                                    <div class="ms-0 ms-md-3 ms-lg-3 mt-2 mt-md-0 mt-lg-0">
                                        <h5 class="fw-bold">
                                            <a href="#" class="link-primary text-decoration-none stretched-link"><spring:message code="hlp.info4.title" text="Further inquiry" /></a>
                                        </h5>
                                        <div class="d-flex align-items-start">
                                          
                                            <small><spring:message code="hlp.info.email" text="Email :" /> support@unionmks.com<br><span class="text-muted"><spring:message code="hlp.info.desc" text="Skype :" /> union_support</span></small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
         <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="card shadow-sm border-info">
                            <div class="card-body d-lg-flex justify-content-between align-items-center p-4">
                                <h4 class="fw-bold mb-0"><spring:message code="psb.title" text="Practice Stocks and CFDs trading in a risk-free environment." /></h4>
                                <a class="btn btn-info mt-2 mt-lg-0" href="${pageContext.request.contextPath}/home/demo"><spring:message code="psb.button" text="Open an Account" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	<!-- content end here -->
	</main>
	<!-- footer begin -->
	<%@include file="inc/footer.jsp"%>
</body>

</html>