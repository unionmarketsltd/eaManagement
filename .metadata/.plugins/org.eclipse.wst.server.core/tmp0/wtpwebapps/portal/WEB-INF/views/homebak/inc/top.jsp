<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
  
  <script language="javascript">
	function changeLanguage(language){
		document.frmLang.lang.value=language;
		document.frmLang.action = window.location.href;
		document.frmLang.submit();
	}
</script>
<form name='frmLang' method='get'>
	<input type=hidden name='lang' value='${lang}'>
</form>


     <!-- page loader begin -->
    <div class="page-loader w-100 h-100 bg-white d-flex justify-content-center align-items-center position-fixed overflow-hidden">
        <div class="spinner-grow spinner-grow-sm text-primary"></div>
        <div class="spinner-grow spinner-grow-sm text-primary"></div>
        <div class="spinner-grow spinner-grow-sm text-primary"></div>
    </div>
    <!-- page loader end -->
    <!-- header begin -->
    <header class="navbar navbar-expand-lg navbar-light">
    
      
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <h4 class="fw-bold">CT Investing LTD</h4>
            </a>
            <div class="collapse navbar-collapse d-flex justify-content-between d-none d-xl-block" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-resources" data-bs-toggle="dropdown" aria-expanded="false"><spring:message code="homepage.home" text="Home" /></a>
                        <ul class="dropdown-menu dropdown-large-menu">
                            <li>
                                <div class="row">
                                    <div class="col-8">
                                        <ul class="list-unstyled">
				                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/about"><spring:message code="" text="About" /></a></li>
				                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/TermsOfService"><spring:message code="" text="homepage.home2" />Terms of service</a></li>
				                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/AML"><spring:message code="homepage.home3" text="Anti-Money Laundering " /><br><spring:message code="homepage.home31" text="Policy" /></a></li>
				                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/Risk"><spring:message code="homepage.home4" text="Risk Warning" /></a></li>
                                        </ul>
                                    </div>
                                    <div class="col-4 border-start child-menu-text">
                                        <p> * Add UMK's logo</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/home/markets"><spring:message code="homepage.trading" text="Trading" /></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-home" data-bs-toggle="dropdown" aria-expanded="false"><spring:message code="homepage.dnw" text="Deposit&Withdrawal" /></a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/deposit"><spring:message code="homepage.dnw1" text="Deposit" /></a></li>
                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/withdrawal"><spring:message code="homepage.dnw2" text="Withdrawal" /></a></li>
                        	<li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/safetyFunds"><spring:message code="homepage.dnw3" text="Safety Fund" /></a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-resources" data-bs-toggle="dropdown" aria-expanded="false"><spring:message code="homepage.platf" text="Platform" /></a>
                        <ul class="dropdown-menu dropdown-large-menu">
                            <li>
                                <div class="row">
                                    <div class="col-6">
                                        <ul class="list-unstyled">
				                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/MT5">MetaTrader5 <spring:message code="homepage.platf1" text="Terminal" /></a></li>
				                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/mobile">MetaTrader5 <spring:message code="homepage.platf2" text="Mobile" /></a></li>
				                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/webTrader">MetaTrader5 <spring:message code="homepage.platf3" text="WebTrader" /></a></li>
                                        </ul>
                                    </div>
                                    <div class="col-6 border-start child-menu-text">
                                       <img src="${pageContext.request.contextPath}/resources/home/img/mt5.png">
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    
                    <!-- <teset> -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-resources" data-bs-toggle="dropdown" aria-expanded="false"><spring:message code="homepage.cont" text="Contact" /></a>
                        <ul class="dropdown-menu dropdown-large-menu">
                            <li>
                                <div class="row">
                                    <div class="col-6">
                                        <ul class="list-unstyled">
				                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/contact"><spring:message code="homepage.cont1" text="Contact Us" /></a></li>
				                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/help"><spring:message code="homepage.cont2" text="Help Center" /></a></li>
				                            <li><a class="dropdown-item" href="${pageContext.request.contextPath}/home/documents"><spring:message code="homepage.cont3" text="Legal Documents" /> </a></li>
                                        </ul>
                                    </div>
                                    <div class="col-6 border-start child-menu-text">
                                        <img src="${pageContext.request.contextPath}/resources/home/img/contactus.png">
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdown-resources" data-bs-toggle="dropdown" aria-expanded="false"><spring:message code="testgroup.language" text="About US" /></a>
                        <ul class="dropdown-menu dropdown-large-menu">
                            <li>
                                <div class="row">
                                    <div class="col-6">
                                        <ul class="list-unstyled">
				                            <li><button class="dropdown-item" onclick="changeLanguage('en');">English</button></li>
				                             <li><button class="dropdown-item" onclick="changeLanguage('ko');">한국어</button></li> 
				                          
                                        </ul>
                                    </div>
                                    <div class="col-6 border-start child-menu-text">
                                        <img src="${pageContext.request.contextPath}/resources/home/img/contactus.png">
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
                 
                  
                <div class="optional-link d-flex align-items-center ms-4 d-none d-xl-block">
                    <a href="${pageContext.request.contextPath}/stp/login" class="btn btn-link me-3"><i class="fas fa-circle-user"></i><spring:message code="homepage.lgin" text="Login" /></a>
                    <a hidden="hidden" href="#" class="btn btn-info"><spring:message code="homepage.btn" text="Create live account" /></a> <!-- Create another Top empty space for language -->
                </div>
            </div>
        </div>
    </header>
    <!-- header end -->