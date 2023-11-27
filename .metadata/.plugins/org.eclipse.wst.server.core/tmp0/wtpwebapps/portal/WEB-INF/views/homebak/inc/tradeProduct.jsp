<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
     <!-- section content begin -->
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
                            <div class="col border-end-0 border-end-md border-end-lg">
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
        <section class="py-5 " >
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
		