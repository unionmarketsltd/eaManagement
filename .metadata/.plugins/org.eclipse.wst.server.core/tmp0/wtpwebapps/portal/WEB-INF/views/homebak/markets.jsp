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
	<!-- section content begin -->
		<section class="py-5 in-cirro-3">
			<div class="container">
				<div class="row d-flex align-items-center gx-5 mb-3">
					<div class="col-md-12 col-lg-6 mb-5 mb-md-3 mb-lg-0">
						<h1 class="mt-2 mb-1"><spring:message code="hp.liveFxQuotesTitle" text="Live Fx Quotes" /></h1>
						<span style="font-size: 0.875em; /* 14px/16=0.875em */" class="lead mb-4"><spring:message code="hp.liveFxQuotesBody" text="Forex markets and prices are primarily influenced and influenced by the different flows of trading and investment between different countries. To some extent, exchange rates are also affected by various national economies and their economic policies. Factors such as interest rate adjustments, inflation and political instability are directly correlated with exchange rates (these factors have a serious impact on stock and bond markets)." /></span>
						<ul class="fa-ul lh-lg mb-0">
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="hp.liveFxQuotesLower1" text="Low spread" /></li>
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="hp.liveFxQuotesLower2" text="Fast order execution" /></li>
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="hp.liveFxQuotesLower3" text="Abundant liquidity" /></li>
                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="hp.liveFxQuotesLower4" text="150+ traded products" /></li>
                        </ul>
					</div>
					<div class="col-md-12 col-lg-6 mt-md-5">
						<div class="card card-body ms-lg-5">
							<div id="tradingview-widget"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- section content end -->
        <!-- section content begin -->
        <section class="py-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-12">
                        <div class="row row-cols-1 row-cols-md-1 row-cols-lg-4 gx-0 gx-md-4 gx-lg-5 mt-4 text-center">
                            <div class="col border-end-md-0 border-end-lg" >
                                <h2>&lt; 7.12 ms</h2>
                                <p class="uk-text-uppercase uk-text-small uk-text-primary"><spring:message code="mar.content.f1" text="Average order execution speed" /></p>
                            </div>
                            <div class="col border-end-md-0 border-end-lg">
                                <h2>12+</h2>
                                <p class="uk-text-uppercase uk-text-small uk-text-primary"><spring:message code="mar.content.f2" text="Liquidity provider" /></p>
                            </div>
                            <div class="col border-end-md-0 border-end-lg">
                                <h2>&gt; 12,000</h2>
                                <p class="uk-text-uppercase uk-text-small uk-text-primary"><spring:message code="mar.content.f3" text="Number of orders executed per second" /></p>
                            </div>
                            <div class="col">
                                <h2>$545 M</h2>
                                <p class="uk-text-uppercase uk-text-small uk-text-primary"><spring:message code="mar.content.f4" text="Average daily trading volume" /></p>
                            </div>
                        </div>
                        <div class="row row-cols-1 row-cols-md-2 gx-2 gy-1 gy-md-0 mt-2">
                            <div class="col">
                                <a href="#" class="btn btn-primary w-100"><i class="fas fa-user-circle fa-lg me-1"></i><spring:message code="mar.content.fbutton1" text="Open an Account" /></a>
                            </div>
                            <div class="col">
                                <a href="#" class="btn btn-outline-primary w-100"><i class="fas fa-graduation-cap fa-lg me-1"></i><spring:message code="mar.content.fbutton2" text="Open a Demo Account" /></a>
                            </div>
                        </div>
                        <br>&nbsp;
                        <p class="text-muted mt-1 mb-0 text-center"><spring:message code="mar.content.fdesc" text="Registration takes only 5 minutes!" /></p>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="py-5 bg-primary text-white in-cirro-1">
            <div class="container">
                <div class="row d-flex align-items-center gx-0 gx-lg-4 gy-2 gy-lg-0">
                    <div class="col-md-12 col-lg-4 border-end-lg">
                        <h4 class="text-white"><spring:message code="mar.content.TPtitle" text="Trading products" /></h4>
                        <p class="text-white small  mb-1"><spring:message code="mar.content.TPdesc" text="Choose from 6 asset classes and get access to 500+ trading instruments" /></p>
                    </div>
                    <div class="col-md-12 col-lg-8 mb-2 mb-lg-0">
                        <div class="row row-cols-2 row-cols-md-6 row-cols-lg-6 gx-0 gy-2 gy-md-0">
                            <div class="col text-center">
                                <div class="icon-wrap icon-wrap-medium bg-white wrap-circle">
                                    <i class="fas fa-euro-sign fa-xl text-info"></i>
                                </div>
                                <p class="text-warning mt-1 mb-0"><spring:message code="mar.content.TP1" text="Forex" /></p>
                            </div>
                            <div class="col text-center">
                                <div class="icon-wrap icon-wrap-medium bg-white wrap-circle">
                                    <i class="fas fa-bitcoin-sign fa-xl text-info"></i>
                                </div>
                                <p class="text-warning mt-1 mb-0"><spring:message code="mar.content.TP2" text="Crypto" /></p>
                            </div>
                            <div class="col text-center">
                                <div class="icon-wrap icon-wrap-medium bg-white wrap-circle">
                                    <i class="fas fa-chart-area fa-xl text-info"></i>
                                </div>
                                <p class="text-warning mt-1 mb-0"><spring:message code="mar.content.TP3" text="Indexes" /></p>
                            </div>
                            <div class="col text-center">
                                <div class="icon-wrap icon-wrap-medium bg-white wrap-circle">
                                    <i class="fas fa-file-contract fa-xl text-info"></i>
                                </div>
                                <p class="text-warning mt-1 mb-0"><spring:message code="mar.content.TP4" text="Stocks" /></p>
                            </div>
                            <div class="col text-center">
                                <div class="icon-wrap icon-wrap-medium bg-white wrap-circle">
                                    <i class="fas fa-tint fa-xl text-info"></i>
                                </div>
                                <p class="text-warning mt-1 mb-0"><spring:message code="mar.content.TP5" text="Energy" /></p>
                            </div>
                            <div class="col text-center">
                                <div class="icon-wrap icon-wrap-medium bg-white wrap-circle">
                                    <i class="fas fa-cube fa-xl text-info"></i>
                                </div>
                                <p class="text-warning mt-1 mb-0"><spring:message code="mar.content.TP6" text="Commodities" /></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- section content end -->	
        <!-- section content begin -->
        <section class="pt-5 pb-2">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 gx-0 gx-md-5 gx-lg-5 mt-4">
                            <div class="col border-end-0 border-end-md border-end-lg">
                                <h4 class="fw-bold border-start border-5 ps-1"><spring:message code="" text="Metals" /></h4>
                                <p class="text-muted"><spring:message code="" text="MARKETS’ SPOT METALS:" /></p>
                                <div class="d-flex align-items-start mt-2" style="justify-content: center;">
                                    <div>
                                        <ul class="fa-ul lh-lg mb-0 small">
				                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>XAGEUR</li>
				                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>XAGUSD</li>
				                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>XAUUSD</li>
				                        </ul>
				                        <br>&nbsp;
                                        <a href="#" class="btn btn-link "><i class="fas fa-arrow-right"></i><spring:message code="f1.button" text="Open Demo Account" /></a>
                                    </div>
                                    <div>
                                        <i class="fas fa-chart-bar fa-3x ms-1 ms-md-1 ms-lg-3 text-dark text-opacity-50"></i>
                                    </div>
                                </div>
                                <hr class="d-md-none d-lg-none my-3 my-md-3">
                            </div>
                            <div class="col border-end-0 border-end-md border-end-lg">
                                <h4 class="fw-bold border-start border-5 ps-1"><spring:message code="f2.title" text="Index" /></h4>
                                <p class="text-muted"><spring:message code="f2.desc" text=" MARKETS'S INDEX" /></p>
                                <div class="d-flex align-items-start mt-2 justify-content-center">
                                    <div>
                                        <ul class="fa-ul lh-lg mb-0 small">
				                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>SP500m (US SPX 500 – <spring:message code="f2.info" text="Mini" />)</li>
				                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>UK100 (UK100)</li>
				                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span>ND100m (US Tech 100 – <spring:message code="f2.info" text="Mini" />)</li>
				                        </ul>
				                        <br>&nbsp;
                                        <a href="#" class="btn btn-link"><i class="fas fa-arrow-right"></i><spring:message code="f2.button" text="Open Real Account" /></a>
                                    </div>
                                    <div>
                                        <i class="fas fa-chart-area fa-3x ms-1 ms-md-1 ms-lg-3 text-dark text-opacity-50"></i>
                                    </div>
                                </div>
                                <hr class="d-md-none d-lg-none my-3 my-md-3">
                            </div>
                            <div class="col ">
                                <h4 class="fw-bold border-start border-5 ps-1"><spring:message code="f3.title" text="Commodity" /></h4>
                                <p class="text-muted"><spring:message code="f3.desc" text="YOU CAN TRADE CFDS ON:" /></p>
                                <div class="d-flex align-items-start mt-2" style="justify-content: center">
                                    <div>
                                        <ul class="fa-ul lh-lg mb-0 small">
				                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="f3.info" text="UK Brent oil (spot)" /></li>
				                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="f3.info2" text="US crude oil (spot)" /></li>
				                            <li><span class="fa-li"><i class="fas fa-check-square text-info"></i></span><spring:message code="f3.info3" text="US natural gas (spot)" /></li>
				                        </ul>
				                        <br>&nbsp;
                                        <a href="#" class="btn btn-link"><i class="fas fa-arrow-right"></i><spring:message code="f3.button" text="Start Following" /></a>
                                    </div>
                                    <div>
                                        <i class="fas fa-chart-pie fa-3x ms-1 ms-md-1 ms-lg-3 text-dark text-opacity-50"></i>
                                    </div>
                                </div>
                                <hr class="d-md-none d-lg-none my-3 my-md-3">
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- section content end -->
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="card shadow-sm border-info">
                            <div class="card-body d-lg-flex justify-content-between align-items-center p-4">
                                <h4 class="fw-bold mb-0"><spring:message code="depo.content.boxT" text="It takes 10 minutes to open an account." /></h4>
                                <a class="btn btn-info mt-2 mt-lg-0" href="${pageContext.request.contextPath}/home/real"><spring:message code="depo.content.boxB" text="Open an Account" /></a>
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