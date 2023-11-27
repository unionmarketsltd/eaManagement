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
		<!-- content start here -->
<section class="py-5 in-cirro-17">
            <div class="container position-relative">
               
                <div class="row">
                    <div class="col-12 mb-2" style="text-align:center">
                        <h1><spring:message code="wit.top.title" text="Withdrawal" />&nbsp;&nbsp;<span class="text-info"><spring:message code="wit.top.title1" text="Process" /></span></h1>
                    </div>
                </div>
                <div class="row gx-0">
                    <div class="col-md-12 col-lg-12">
                        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 gx-2 gy-2">
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center mb-2">
                                            <div class="icon-wrap icon-wrap-small flex-shrink-0 me-1">
                                                1
                                            </div>
                                            <h5 class="mb-0"><spring:message code="wit.contentf1.title" text="CRM login" /></h5>
                                        </div>
                                        <p class="mb-1"><spring:message code="wit.contentf1.desc" text="Login to CRM" /></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center mb-2">
                                            <div class="icon-wrap icon-wrap-small flex-shrink-0 me-1">
                                               2
                                            </div>
                                            <h5 class="mb-0"><spring:message code="wit.contentf2.title" text="Select withdrawal method" /></h5>
                                        </div>
                                        <p class="mb-1"><spring:message code="wit.contentf2.desc" text="Choose your preferred withdrawal method." /></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center mb-2">
                                            <div class="icon-wrap icon-wrap-small flex-shrink-0 me-1">
                                              3
                                            </div>
                                            <h5 class="mb-0"><spring:message code="wit.contentf3.title" text="Enter withdrawal amount" /></h5>
                                        </div>
                                        <p class="mb-1"><spring:message code="wit.contentf3.desc" text="Enter the withdrawal amount." /></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center mb-2">
                                            <div class="icon-wrap icon-wrap-small flex-shrink-0 me-1">
                                               4
                                            </div>
                                            <h5 class="mb-0"><spring:message code="wit.contentf4.title" text="Check your email" /></h5>
                                        </div>
                                        <p class="mb-1"><spring:message code="wit.contentf4.desc" text="Please check your email." /></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </section>
        
        <section class="py-3">
            <div class="container">
                <div class="row gy-md-2 gx-0 gx-lg-4">
                    
                    <div class="col-md-12 col-lg-12">
                   
                        <table class="table table-striped mt-n1 mb-2">
                           <thead>
                                        <tr>
                                            <th class="uk-text-center"><spring:message code="depo.table.headerType" text="Type" /></th>
                                            <th class="uk-text-center"><spring:message code="depo.table.headerContents" text="Contents" /></th>
                                            <th class="uk-text-center"><spring:message code="depo.table.headerCompletiontime" text="Completion time" /></th>
                                            <th class="uk-text-center"><spring:message code="depo.table.headerAAVD" text="Amount available for deposit" /></th>
                                            <th class="uk-text-center uk-visible@s"><spring:message code="depo.table.headerCurrency" text="Currency" /></th>
                                            <th class="uk-text-center uk-visible@s"><spring:message code="depo.table.headerDeposit" text="Deposit" /></th>
                                        </tr> 
                                    </thead>
                            <tbody>
                                        <tr>
                                            <td><img class="uk-margin-small-right" src="https://www.unionmkc.com/portal/resources/home/img/btc-1.png" data-src="/portal/resources/home/img/btc-1.png" alt="fx-flag" width="132" data-uk-img=""></td>
                                            <td><spring:message code="depo.table.contentr1" text="Bitcoin" /></td>
                                            <td><spring:message code="depo.table.ctR1" text="5 to 60 minutes" /></td>
                                            <td><spring:message code="depo.table.aavdr" text="Unlimited" /></td>
                                            <td><span class="uk-label uk-label-danger uk-border-pill">USD</span></td>
                                            <td class="uk-visible@s"><button class="btn btn-info"><spring:message code="depo.table.dr" text="Deposit" /></button></td>
                                        </tr>
                                        <tr>
                                            <td><img class="uk-margin-small-right" src="https://www.unionmkc.com/portal/resources/home/img/eth-1.png" data-src="/portal/resources/home/img/eth-1.png" alt="fx-flag" width="132" data-uk-img=""></td>
                                            <td><spring:message code="depo.table.contentr2" text="Ethereum" /></td>
                                            <td><spring:message code="depo.table.ctR2" text="5 to 30 minutes" /></td>
                                            <td><spring:message code="depo.table.aavdr" text="Unlimited" /></td>
                                            <td><span class="uk-label uk-label-danger uk-border-pill">USD</span></td>
                                            <td class="uk-visible@s"><button class="btn btn-info"><spring:message code="depo.table.dr" text="Deposit" /></button></td>
                                        </tr>
                                        <tr>
                                            <td><img class="uk-margin-small-right" src="https://www.unionmkc.com/portal/resources/home/img/erc20-1.png" data-src="/portal/resources/home/img/erc20-1.png" alt="fx-flag" width="132" data-uk-img=""></td>
                                            <td>USDT ERC-20</td>
                                            <td><spring:message code="depo.table.ctR2" text="5 to 30 minutes" /></td>
                                            <td><spring:message code="depo.table.aavdr" text="Unlimited" /></td>
                                            <td><span class="uk-label uk-label-danger uk-border-pill">USD</span></td>
                                            <td class="uk-visible@s"><button class="btn btn-info"><spring:message code="depo.table.dr" text="Deposit" /></button></td>
                                        </tr>
                                        <tr>
                                            <td><img class="uk-margin-small-right" src="https://www.unionmkc.com/portal/resources/home/img/bep20-1.png" data-src="/portal/resources/home/img/bep20-1.png" alt="fx-flag" width="132" data-uk-img=""></td>
                                            <td>USDT BEP-20(<spring:message code="depo.table.contentr3" text="Binance Only" />)</td>
                                            <td><spring:message code="depo.table.ctR2" text="5 to 30 minutes" /></td>
                                            <td><spring:message code="depo.table.aavdr" text="Unlimited" /></td>
                                            <td><span class="uk-label uk-label-danger uk-border-pill">USD</span></td>
                                            <td class="uk-visible@s"><button class="btn btn-info"><spring:message code="depo.table.dr" text="Deposit" /></button></td>
                                        </tr>
                                    </tbody>
                        </table>
                        
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
                                <h4 class="fw-bold mb-0"><spring:message code="depo.content.boxT" text="It takes 10 minutes to open an account." /></h4>
                                <a class="btn btn-info mt-2 mt-lg-0" href="${pageContext.request.contextPath}/home/real"><spring:message code="depo.content.boxB" text="Open an Account" /></a>
                            </div>
                        </div>
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
	<!-- content end here -->
	</main>
	<!-- footer begin -->
	<%@include file="inc/footer.jsp"%>
</body>

</html>