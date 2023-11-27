<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

   <footer class="py-5 in-cirro-footer">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="row gx-0 mb-3">
                        <div class="col-md-12 col-lg-3 footer-logo">
                            <h4 class="fw-bold">CT Investing LTD</h4>
                        </div>
                        <div style="border: 1px grey double; border-radius: 10px 100px / 120px;" class="col-md-12 col-lg-9"  onclick="location.href='${pageContext.request.contextPath}/home/Risk';">
                            <div class="in-footer-warning in-margin-top-20@s" style="padding-bottom: 20px; padding-left: 20px; padding-right: 20px; padding-top: 20px">
	                            <h5 class="small uk-text-small uk-text-uppercase"><span><spring:message code="ftr.warn.title" text="Risk Warning" />:</span></h5>
	                            <p class="small uk-text-small"><a href="/portal/home/Risk"><spring:message code="ftr.warn.desc" text="Trading derivatives and leveraged products carries a high level of risk, including the risk of losing substantially more than your initial investment. It is not suitable for everyone. Before you make any decision in relation to a financial product you should obtain and consider our Product Disclosure Statement (PDS) and Financial Services Guide (FSG) available on our website and seek independent advice if necessary " /></a></p>
	                        </div>
                        </div>
                        <div class="col-md-12 col-lg-3 mt-5 d-flex">
                            <div class="align-self-end">
                                <p class="mb-0 copyright-text">ⓒ 2022 CT INVESTING LTD, All Rights Reserved.</p>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-9 d-lg-flex justify-content-lg-end d-none d-lg-block">
                            <div class="align-self-end">
                                <nav class="nav in-footer-link-2">
                                    <a class="nav-link border-end-md" href="${pageContext.request.contextPath}/home/documents"><spring:message code="ftr.item" text="Risk Disclosure" /></a>
                                    <a class="nav-link border-end-md" href="${pageContext.request.contextPath}/home/documents"><spring:message code="ftr.item2" text="Privacy policy" /></a>
                                    <a class="nav-link border-end-md" href="${pageContext.request.contextPath}/home/documents"><spring:message code="ftr.item3" text="Return policy" /></a>
                                    <a class="nav-link border-end-md" href="${pageContext.request.contextPath}/home/documents"><spring:message code="ftr.item4" text="Customer Agreement" /></a>
                                    <a class="nav-link pe-0" href="${pageContext.request.contextPath}/home/documents"><spring:message code="ftr.item5" text="AML policy" /></a>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer end -->
    <div class="d-none d-md-block">
        <a href="#" class="to-top fas fa-arrow-up text-decoration-none text-white"></a>
    </div>
    <!-- javascript -->
    <script src="${pageContext.request.contextPath}/resources/home_new/js/vendors/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/home_new/js/vendors/trading-widget.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/home_new/js/utilities.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/home_new/js/config-theme.js"></script>
    
	<script src="${pageContext.request.contextPath}/resources/home_new/js/vendors/vanilla-marquee.min.js"></script>
	
	
                