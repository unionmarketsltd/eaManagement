<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
     <!-- content start here -->
<section class="py-5">
            <div class="container">
                <div class="row gy-md-3 gx-0 gx-md-3 gx-lg-5">
                    <div class="col-md-12 col-lg-7">
                        <h1 class="fw-bold mb-2"><span class="text-highlight"><spring:message code="depo.top.title" text="Various deposit methods" /></h1>
                        <p class="lead text-muted"><spring:message code="depo.top.content" text="We provide various deposit and withdrawal methods such as Bitcoin, Ethereum, USDT, etc.
Deposits and withdrawals are converted to the current exchange rate and can be traded immediately." /></p>
                        <div class="d-flex align-items-center mt-3 mb-4 mb-md-0 mb-lg-0">
                            <span class="badge bg-secondary mb-0"><i class="fas fa-book fa-sm me-1"></i>BTC</span>
                            
                            <span class="badge bg-secondary mb-0"><i class="fas fa-lightbulb fa-sm me-1"></i>ETH</span>
                            
                            <span class="badge bg-secondary mb-0"><i class="fas fa-chart-area fa-sm me-1"></i>USDT</span>
                            <span class="badge bg-secondary mb-0"><i class="fas fa-chart-area fa-sm me-1"></i><spring:message code="depo.top.extra" text="OTHER CRYPTOCURRENCIES" /></span>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-5">
                        <div class="card bg-white">
                            <div class="card-body">
                                <div class="d-flex align-items-start text-dark">
                                    <div class="flex-md-fill">
                                        <h4 class="fw-bold"><spring:message code="depo.top.titleRight" text="Money security" /></h4>
                                        <p><spring:message code="depo.top.contentRight" text="Deposits and withdrawals of funds are safe due to crypto transactions." /></p>
                                        <a class="btn btn-warning" href="${pageContext.request.contextPath}/home/safetyFunds"><spring:message code="depo.top.buttonRight" text="More...." /><i class="fas fa-angle-right fa-xs ms-1"></i></a>
                                    </div>
                                    <div class="ms-1">
                                        <i class="fas fa-lock fa-5x text-dark text-opacity-50 mt-1"></i>
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
	<!-- content end here -->
		