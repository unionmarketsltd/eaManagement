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
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 gx-0 gx-md-5 gx-lg-5">
                    <div class="col-12 col-md-12 col-lg-12 mb-md-2 mb-lg-4">
                        <h1 class="fw-bold text-center"><spring:message code="doc.top.title" text="Legal" />&nbsp;&nbsp;<span class="text-highlight"><spring:message code="doc.top.title1" text="Documents" /></span></h1>
                    </div>
                    <div class="border-end-0 border-end-md border-end-lg">
                        <div class="icon-wrap bg-info flex-shrink-0 mb-2 mb-md-3 mb-lg-3">
                            <i class="fas fa-file fa-lg text-white"></i>
                        </div>
                        <h4 class="fw-bold">CT Investing LTD <spring:message code="doc.content1.title" text="Documents" /></h4>
                        <p><spring:message code="doc.content1.title" text="Documents" /></p>
                        <ul class="list-unstyled lh-lg mb-0">
                            <li><a class="btn btn-link link-primary text-decoration-none p-0" href="${pageContext.request.contextPath}/resources/home/documents/en/UnionMK.pdf"><i class="fas fa-file-pdf fa-sm me-1"></i><spring:message code="doc.content1.info" text="Certificate of Formation" /></a></li>
                           
                        </ul>
                        <hr class="d-md-none d-lg-none my-3 my-md-3">
                    </div>
                    <div class="border-end-md-0 border-end-lg">
                        <div class="icon-wrap bg-info flex-shrink-0 mb-2 mb-md-3 mb-lg-3">
                            <i class="fas fa-globe fa-lg text-white"></i>
                        </div>
                        <h4 class="fw-bold"><spring:message code="doc.content2.title" text="Website" /></h4>
                        <p>CT Investing LTD <spring:message code="doc.content2.desc" text="Privacy Policy" /></p>
                        <ul class="list-unstyled lh-lg mb-0">
                            <li><a class="btn btn-link link-primary text-decoration-none p-0" href="${pageContext.request.contextPath}/resources/home/documents/en/TermsofService.pdf"><i class="fas fa-file-pdf fa-sm me-1"></i><spring:message code="doc.content2.info" text="Terms of Use" /></a></li>
                            <li><a class="btn btn-link link-primary text-decoration-none p-0" href="${pageContext.request.contextPath}/resources/home/documents/en/AMLPolicy.pdf"><i class="fas fa-file-pdf fa-sm me-1"></i><spring:message code="doc.content2.info1" text="AML anti-money laundering" /></a></li>
                        </ul>
                        <hr class="d-md-none d-lg-none my-3 my-md-3">
                    </div>
                    <div class="d-md-none d-lg-block">
                        <div class="icon-wrap bg-info flex-shrink-0 mb-2 mb-md-3 mb-lg-3">
                            <i class="fas fa-shield-alt fa-lg text-white"></i>
                        </div>
                        <h4 class="fw-bold"><spring:message code="doc.content3.title" text="Risk Warning" /></h4>
                        <p><spring:message code="doc.content3.desc" text="Trading derivatives and leveraged instruments involves a high level of risk, including the risk of losing significantly more than your initial investment. Not suitable for everyone." /></p>
                        <ul class="list-unstyled lh-lg mb-0">
                            <li><a class="btn btn-link link-primary text-decoration-none p-0" href="${pageContext.request.contextPath}/resources/home/documents/en/RiskWarning.pdf"><i class="fas fa-file-pdf fa-sm me-1"></i><spring:message code="doc.content3.info" text="Risk Management Notice" /></a></li>
                      
                        </ul>
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