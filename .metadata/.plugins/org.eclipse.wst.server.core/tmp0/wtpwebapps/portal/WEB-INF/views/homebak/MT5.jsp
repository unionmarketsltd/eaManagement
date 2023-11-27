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

        
        <section class="py-5 in-cirro-13">
        
         <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-9 text-center">
                        <h1 class="fw-bold">MetaTrader5 <span class="text-highlight"><spring:message code="mt.top.title" text="Terminal" /></span></h1>
                       
                    </div>
                    
                </div>
            <div class="container mt-3">
                <div class="row d-flex align-items-center gx-5 mb-3">
                    <div class="col-md-12 col-lg-5">
                        <h1><spring:message code="mt.content.title" text="The most powerful and stable Forex Trading platform
MetaTrader5 Terminal" /></h1>
                        <p class="lead mb-3"><spring:message code="mt.content.desc" text="We pride ourselves on offering fully transparent quality execution, alongside some of the best trading conditions." /></p>
                        <ul class="fa-ul lh-lg">
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="mt.content.info" text="The most powerful Forex trading platform" /></li>
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="mt.content.info2" text="Automatic trading possible" /></li>
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="mt.content.info3" text="One-click trading possible" /></li>
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="mt.content.info4" text="Sell/Buy Limit/Stop, TP, SL, Trailing Stop" /></li>
                            
                          
                        </ul>
                       
                    </div>
                    <div class="col-md-12 col-lg-7 mt-3 mt-lg-0">
                        <div class="card card-body ms-lg-5 widget-card" style="background:var(--bs-body-bg)">
                           <img src="${pageContext.request.contextPath}/resources/home_new/img/mt5.png" data-src="${pageContext.request.contextPath}/resources/home_new/img/mt5.png" alt="profit-mockup"  data-uk-img="">
                    </div>
                </div>
            </div>
            </div>
        </section>
        
        
        <section class="py-5 in-cirro-9">
        
        <div class="row justify-content-center">
                    <div class="col-12 col-md-10 col-lg-9 text-center">
                        <h1 class="fw-bold"><spring:message code="pp.title" text="Perfect package" /></h1>
                       
                    </div>
                    
                </div>
            <div class="container mt-2">
                <div class="row mb-5 gx-0" style="border: 1px solid #e1e3e5;
    padding: 26px;">
                    <div class="col-12 col-lg-6 pb-3 pb-lg-0">
                        <div class="row">
                            <div class="col-md-7 col-lg-6">
                                <h1 class="mb-1"><spring:message code="pp.left.title" text="Classic" /> <span class="text-info"><spring:message code="pp.left.title2" text="account" /></span></h1>
                                <p class="mb-1"><spring:message code="pp.left.desc" text="Benefit from the industry's best entry price" /></p>
                            </div>
                            <div class="col-md-5 col-lg-6 d-flex align-items-end">
                                <ul class="fa-ul">
                                    <li><a href="#" class="link-dark text-decoration-none"><span class="fa-li"><i class="fas fa-arrow-right text-info"></i></span><spring:message code="pp.left.info" text="Leader in the Forex market" /></a></li>
                                    <li><a href="#" class="link-dark text-decoration-none"><span class="fa-li"><i class="fas fa-arrow-right text-info"></i></span><spring:message code="pp.left.info2" text="Advanced risk management" /></a></li>
                                    <li><a href="#" class="link-dark text-decoration-none"><span class="fa-li"><i class="fas fa-arrow-right text-info"></i></span><spring:message code="pp.left.info3" text="Best customer service" /></a></li>
                                    <li><a href="#" class="link-dark text-decoration-none"><span class="fa-li"><i class="fas fa-arrow-right text-info"></i></span><spring:message code="pp.left.info4" text="Low minimum deposit" /></a></li>
                                </ul>
                            </div>
                        </div>
                        <a class="btn btn-info mt-2 mt-lg-0 float-right" href="${pageContext.request.contextPath}/home/real?accountType=classic"><spring:message code="pp.left.button" text="Open an Account" /></a>
                    </div>
                    <div class="col-12 col-lg-6 border-top border-top-lg-0 border-start-lg pt-3 pt-lg-0 ps-lg-4">
                        <div class="row">
                            <div class="col-md-7 col-lg-6">
                                <h1 class="mb-1"><spring:message code="pp.right.title" text="Platinum " /><span class="text-info"><spring:message code="pp.right.title2" text="account" /></span></h1>
                                <p class="mb-1"><spring:message code="pp.right.desc" text="Low spread + get commission" /></p>
                            </div>
                            <div class="col-md-5 col-lg-6 d-flex align-items-end">
                                <ul class="fa-ul">
                                    <li><a href="#" class="link-dark text-decoration-none"><span class="fa-li"><i class="fas fa-arrow-right text-info"></i></span><spring:message code="pp.right.info" text="Various charting tools" /></a></li>
                                    <li><a href="#" class="link-dark text-decoration-none"><span class="fa-li"><i class="fas fa-arrow-right text-info"></i></span><spring:message code="pp.right.info2" text="Fast order execution" /></a></li>
                                    <li><a href="#" class="link-dark text-decoration-none"><span class="fa-li"><i class="fas fa-arrow-right text-info"></i></span><spring:message code="pp.right.info3" text="Low spread" /></a></li>
                                    <li><a href="#" class="link-dark text-decoration-none"><span class="fa-li"><i class="fas fa-arrow-right text-info"></i></span><spring:message code="pp.right.info4" text="Get tight spreads and high commissions" /></a></li>
                                </ul>
                            </div>
                        </div>
                        <a class="btn btn-info mt-2 mt-lg-0 float-right" href="${pageContext.request.contextPath}/home/real?accountType=platinum"><spring:message code="pp.right.button" text="Open an Account" /></a>
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