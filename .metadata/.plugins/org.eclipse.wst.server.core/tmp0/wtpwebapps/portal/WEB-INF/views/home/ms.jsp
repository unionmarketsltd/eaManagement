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
<%@include file="inc/header.jsp"%>


    <main class="main">

        <!-- breadcrumb -->
        <div class="site-breadcrumb" style="background: url(${pageContext.request.contextPath}/resources/assets/img/index/slidercheck1.jpg)">
            <div class="container">
                <h2 class="breadcrumb-title">Manual System</h2>
                <ul class="breadcrumb-menu">
                    <li><a href="index.html"><i class="far fa-home"></i> Home</a></li>
                    <li class="active">Manual System</li>
                </ul>
            </div>
        </div>
        <!-- breadcrumb end -->



        <!-- service area -->
        <div class="service-area service-area2 bg py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <span class="site-title-tagline">Manual System 소개</span>
                            <div class="heading-divider"></div>
                            
                        </div>
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                        <div class="col-lg-6 col-12">
                            <div class="skill-left">
                                <div class="skill-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/earningbot/eb1.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="skill-right">
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <span style="color:skyblue;">01&nbsp;</span> System(Auto) Trading
                                    </button>
                                </h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&#8226;전체적으로 안정된 시스템 트레이딩 구현
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&#8226;서버호스팅, 인디케이터 지원
                                </p>
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <span style="color:#FCD92A;">02&nbsp;</span> Manual Trading
                                    </button>
                                </h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&#8226;손 거래 가능
                                </p>
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <span style="color:#9D987C;">03&nbsp;</span> Signal Trading
                                    </button>
                                </h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&#8226;Signal에 의한 진입과 청산
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&#8226;전략 시뮬레이션 가능
                                </p>
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <span style="color:#49DC47;">04&nbsp;</span> 높은 정확도
                                    </button>
                                </h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&#8226;정확도가 높은 구간에서만 자동으로 거래됨으로써 안정적 수익률
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&#8226;추가적인 자동 프로그램 구현 가능
                                </p>
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        <span style="color:#F34399;">05&nbsp;</span> 24시간 안전한 거래 지원
                                    </button>
                                </h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&#8226;언제, 어디서든 안전한 거래 지원
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&#8226;초보자 및 누구나 사용 가능
                                </p>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <!-- service area end -->

        

        <!-- service area -->
        <div class="service-area service-area2 py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <span class="site-title-tagline">Manual System 개발 과정</span>
                            <div class="heading-divider"></div>
                            
                        </div>
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                        <div class="col-12">
                            <div class="skill-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/earningbot/eb2.png" alt="">
                                </div>
                        </div>
                    </div>
            </div>
        </div>
        <!-- service area end -->



        <!-- service area -->
        <div class="service-area service-area2 bg py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <span class="site-title-tagline">Manual System 차별점</span>
                            <div class="heading-divider"></div>
                            
                        </div>
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                        <div class="col-12">
                            <div class="skill-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/earningbot/eb3.png" alt="">
                                </div>
                        </div>
                    </div>
            </div>
        </div>
        <!-- service area end -->
        

        <!-- service area -->
        <div class="service-area service-area2 py-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <span class="site-title-tagline">실전 외환(FOREX)거래 교육</span>
                            <div class="heading-divider"></div>
                            
                        </div>
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                        <div class="col-12">
                            <p class="skill-details">
                                &nbsp;&nbsp;투자는 주식이나 부동산에만 하는 것이 아닙니다. 세계에서 가장 큰 투자시장인 외환시장에서 가장 안전한 투자에 도전해 보시기 바랍니다.
전문 외환 투자가만이 아닌 일반인들도 쉽게 배우고 익힐 수 있는 외환 거래의 이론 및 실전투자 방법에 대한 체계적인 지식과 정보를 제공합니다.
                            </p>
                        </div>
                        <br>&nbsp;<br>&nbsp;
                        <div class="row justify-content-between">
                            <div class="col-lg-4 col-md-6 text-center mb-30">
                                <div class="service-item">
                                    <h3 class="service-title">
                                        교육 기간
                                    </h3>
                                    &nbsp;
                                    <p class="service-text">
                                        &#8226;총 4회
                                    </p>
                                    <p class="service-text">
                                        &#8226;1회 2시간 내외
                                    </p>
                                    <hr>
                                    <h3 class="service-title">
                                        일정 : 연중
                                    </h3>
                                    &nbsp;
                                    <p class="service-text">
                                        &#8226;2월 과정: 2월 3 ~ 28일 내
                                    </p>
                                    <p class="service-text">
                                        &#8226;단체: 일정 협의 가능
                                    </p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 text-center mb-30">
                                <div class="service-item">
                                    <h3 class="service-title">
                                        교육비: 1,000,000원
                                    </h3>
                                    &nbsp;
                                    <p class="service-text">
                                        &#8226; IBK기업은행 / 주식회사 트라이엔
                                    </p>
                                    <p class="service-text">
                                        &#8226;계좌번호: 434-115383-01-109
                                    </p>
                                    <hr>
                                    <h3 class="service-title">
                                        교육 내용
                                    </h3>
                                    &nbsp;
                                    <p class="service-text">
                                        &#8226; 외환/환율거래 일반 이론
                                    </p>
                                    <p class="service-text">
                                        &#8226;실전거래 시그널 및 전략
                                    </p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 text-center mb-30">
                                <div class="service-item">
                                    <h3 class="service-title">
                                        준비물
                                    </h3>
                                    &nbsp;
                                    <p class="service-text">
                                        &#8226; 노트북, 필기도구
                                    </p>

                                <hr>
                                    <h3 class="service-title">
                                        장소
                                    </h3>
                                    &nbsp;
                                    <p class="service-text">
                                        &#8226; 서울 금천구 디지털로9길 46
                                    </p>
                                    <p class="service-text">
                                        &#8226;단체: 장소 협의 가능
                                    </p>
                                    <p class="service-text">
                                        &#8226;문의: ☎ 070-8873
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <!-- service area end -->
        
    </main>


<%@include file="inc/footer.jsp"%>
</html>