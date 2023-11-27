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
        <div class="site-breadcrumb" style="background: url(${pageContext.request.contextPath}/resources/assets/img/about/aboutus.jpg)">
            <div class="container">
                <h2 class="breadcrumb-title">About Us</h2>
                <ul class="breadcrumb-menu">
                    <li><a href="index.html"><i class="far fa-home"></i> Home</a></li>
                    <li class="active">About Us</li>
                </ul>
            </div>
        </div>
        <!-- breadcrumb end -->


        <!-- skill-area -->
        <div class="skill-area py-120">
            <div class="container">
                <div class="skill-wrapper">
                    <div class="row g-5 align-items-center">
                        <div class="col-lg-6 col-12">
                            <div class="skill-left">
                                <span class="site-title-tagline">인사말</span>
                                <h2 class="site-title">금융투자연구소 ㈜트라이엔을 통해 즐거운 재테크에 도전해보세요!</h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&nbsp;&nbsp;㈜트라이엔은 주식, 선물, 외환(환율), 암호화폐 등 다양한 국제금융상품에 관해 연구개발(R&D)하는 금융투자연구소입니다. 특히, 세계에서 가장 큰 투자 규모를 이루고 있는 외환시장에서 안전하게 투자할 수 있는 방법들을 연구하고 있으며, 개인이 실전투자에 효과적으로 활용할 수 있는 시스템 트레이딩 개발에도 힘쓰고 있습니다.
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;&nbsp;&nbsp;또한, 아카데미를 통해 일반인들도 쉽게 배우고 익힐 수 있는 외환거래의 이론 및 실전투자 방법에 대한 체계적인 지식과 정보를 제공합니다. 일반-실전-심화교육의 3단계 교육 커리큘럼을 통해 초보자도 손쉽게 재테크에 참여할 수 있도록 실전 노하우를 전달하고 있습니다.
                                </p>
                                
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="skill-right">
                                <div class="skill-img">
                                    
                                    <h2 class="site-title"></h2>
                                    <p class="skill-details">
                                        &nbsp;
                                    </p>
                                    <div class="skills-section">
                                    <div class="progress-box">
                                        <h5>Education <span class="pull-right">75%</span></h5>
                                        <div class="progress" data-value="85">
                                            <div class="progress-bar" role="progressbar"></div>
                                        </div>
                                    </div>
                                    <div class="progress-box">
                                        <h5>Financial Consulting <span class="pull-right">65%</span></h5>
                                        <div class="progress" data-value="65">
                                            <div class="progress-bar" role="progressbar"></div>
                                        </div>
                                    </div>
                                    <div class="progress-box">
                                        <h5>Lecture <span class="pull-right">75%</span></h5>
                                        <div class="progress" data-value="75">
                                            <div class="progress-bar" role="progressbar"></div>
                                        </div>
                                    </div>
                                    <div class="progress-box">
                                        <h5>System Trading <span class="pull-right">75%</span></h5>
                                        <div class="progress" data-value="75">
                                            <div class="progress-bar" role="progressbar"></div>
                                        </div>
                                    </div>
                                </div>
                                
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-12">
                            <p class="skill-details">
                                &nbsp;&nbsp;&nbsp;&nbsp;이와 함께 회사는 안정적인 자산운용의 새로운 모멘텀을 제시하고 있습니다. 대규모의 큰 자금은 물론이고, 작은 자금을 운용해야 하는 일반인들도 자신만의 거래를 통해 재테크 수준을 넘어 전문가처럼 운용할 수 있도록 돕고 있습니다.
                            </p>
                            <p c&nbsp;&nbsp;&nbsp;&nbsp;lass="skill-details">
                                큰 수익과 함께 큰 손실도 수반할 수 있는 국제금융시장에서 ㈜트라이엔은 안정적이고도 효율적인 투자시장 개척에 앞장서겠습니다.
                            </p>
                            <p class="skill-details">
                                &nbsp;&nbsp;&nbsp;&nbsp;감사합니다.
                            </p>
                            <p class="skill-details">
                                &nbsp;&nbsp;&nbsp;&nbsp;㈜트라이엔 대표이사 박병주
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- skill area end -->





        <!-- team-area -->
        <div class="team-area bg py-120">
            <div class="shape-1"></div>
            <div class="shape-2"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <span class="site-title-tagline">Our</span>
                            <h2 class="site-title">History</h2>
                            <div class="heading-divider"></div>
                            
                        </div>
                    </div>
                </div>
                <div class="row g-5">
                    <div class="col-md-3 col-lg-3">
                        <div >
                            <div class="pricing-header">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/about/his1.jpg" alt="thumb" height="30px">
                            </div>
                            <div class="pricing-amount">
                                <p style="text-align: center;">January 2015</p>
                            </div>
                            <div class="pricing-amount-type">
                                <span>외환거래 실전 강의</span>
                            </div>
                            <div class="pricing-feature">
                                <ul>
                                    <li><i class="far fa-check"></i> FOREX 실전 강의 시작</li>
                                    <li><i class="far fa-check"></i> 실전 외환거래 커리큘럼 발표 및 배포</li>
                                    <li><i class="far fa-check"></i> 일본(금융 관계자 및 일반인 대상) 초청 강의</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <div >
                            <div class="pricing-header">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/about/his2.jpg" alt="thumb" >
                            </div>
                            <div class="pricing-amount">
                                <p style="text-align: center;">January 2016</p>
                            </div>
                            <div class="pricing-amount-type">
                                <span>아카데미 비즈니스</span>
                            </div>
                            <div class="pricing-feature">
                                <ul>
                                    <li><i class="far fa-check"></i> 실전 외환거래 강의</li>
                                    <li><i class="far fa-check"></i> 한국, 일본, 중국</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <div >
                            <div class="pricing-header">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/about/his5.jpg" alt="thumb" >
                            </div>
                            <div class="pricing-amount">
                                <p style="text-align: center;">January 2017</p>
                            </div>
                            <div class="pricing-amount-type">
                                <span>금융투자연구소 설립</span>
                            </div>
                            <div class="pricing-feature">
                                <ul>
                                    <li><i class="far fa-check"></i> 실전 외환거래 강의</li>
                                    <li><i class="far fa-check"></i> FOREX 아카데미(한국 & 일본) 시작</li>
                                    <li><i class="far fa-check"></i> 외환 및 선물 거래(증권사 & 은행) 실전 강의</li>
                                    <li><i class="far fa-check"></i> 시스템 트레이딩(자동거래) 연구개발 시작</li>
                                    <li><i class="far fa-check"></i> 주식회사 트라이엔</li>
                                    <li><i class="far fa-check"></i> 금융투자연구소</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <div >
                            <div class="pricing-header">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/about/his4.jpg" alt="thumb" >
                            </div>
                            <div class="pricing-amount">
                                <p style="text-align: center;">January 2018</p>
                            </div>
                            <div class="pricing-amount-type">
                                <span>시스템 트레이딩 연구개발</span>
                            </div>
                            <div class="pricing-feature">
                                <ul>
                                    <li><i class="far fa-check"></i> 실전 외환거래 강의</li>
                                    <li><i class="far fa-check"></i> 아카데미 비즈니스(일본 & 한국) 진행</li>
                                    <li><i class="far fa-check"></i> 필리핀(금융투자자 및 일반인 대상) 초청 강의</li>
                                    <li><i class="far fa-check"></i> 제2의 R&D센터(베트남) 구축 진행</li>
                                    <li><i class="far fa-check"></i> 10~11월 Demo 테스트</li>
                                    <li><i class="far fa-check"></i> 6계좌 일본 회사 공유</li>
                                    <li><i class="far fa-check"></i> 일본(동경) 교육 오픈</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row g-5">
                    <div class="col-md-3 col-lg-3">
                        <div >
                            <div class="pricing-header">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/about/his2.jpg" alt="thumb" height="30px">
                            </div>
                            <div class="pricing-amount">
                                <p style="text-align: center;">January 2019</p>
                            </div>
                            <div class="pricing-amount-type">
                                <span>자동거래프로그램 테스트</span>
                            </div>
                            <div class="pricing-feature">
                                <ul>
                                    <li><i class="far fa-check"></i> 1월 Demo 테스트(8계좌)</li>
                                    <li><i class="far fa-check"></i> 1차 : 07.01~09.31</li>
                                    <li><i class="far fa-check"></i> 2차 : 10.01~12.31</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <div >
                            <div class="pricing-header">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/about/his4.jpg" alt="thumb" >
                            </div>
                            <div class="pricing-amount">
                                <p style="text-align: center;">January 2020</p>
                            </div>
                            <div class="pricing-amount-type">
                                <span>인터뱅크(LP) 업무 제휴</span>
                            </div>
                            <div class="pricing-feature">
                                <ul>
                                    <li><i class="far fa-check"></i> 호주 Advanced Markets</li>
                                    <li><i class="far fa-check"></i> 브로커리지 셋팅</li>
                                    <li><i class="far fa-check"></i> 싱가포르 Dabia Holdings</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <div >
                            <div class="pricing-header">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/about/his3.jpg" alt="thumb" >
                            </div>
                            <div class="pricing-amount">
                                <p style="text-align: center;">January 2021</p>
                            </div>
                            <div class="pricing-amount-type">
                                <span>Our Future Plan</span>
                            </div>
                            <div class="pricing-feature">
                                <ul>
                                    <li><i class="far fa-check"></i> Please wait for this</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-lg-3">
                        <div >
                            <div class="pricing-header">
                                <img src="${pageContext.request.contextPath}/resources/assets/img/about/his5.jpg" alt="thumb" >
                            </div>
                            <div class="pricing-amount">
                                <p style="text-align: center;">January 2022</p>
                            </div>
                            <div class="pricing-amount-type">
                                <span>Our Future Plan</span>
                            </div>
                            <div class="pricing-feature">
                                <ul>
                                    <li><i class="far fa-check"></i> Please wait for this</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- team-area end -->

        
<!-- service area -->
        <div class="service-area service-area2 py-120">
            <div class="container">
                <div class="row g-5 align-items-center">
                        <div class="col-lg-6 col-12">
                            <div class="skill-left">
                                <div class="skill-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/education/edu_education.jpg" alt="thumb">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="skill-right">
                                <h2 class="site-title"><span>사업 - 금융 투자 연구</span></h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;외환 거래
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;외환 전문 교육
                                </p>
                                
                            </div>
                        </div>
                    </div>
                    <br>
                <div class="row g-5 align-items-center">
                        <div class="col-lg-6 col-12">
                            <div class="skill-right">
                                <h2 class="site-title"><span>강사 - 박병주, 김준호</span></h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;(前)한국벤처마케팅 위원, ‘AVING’ Global News Media 본부장
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;한국콘텐츠진흥원 심사위원
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;한국, 일본, 미국, 중국, 베트남, 필리핀, 태국, 말레이시아에서 이론/실전 아카데미 및 세미나 진행
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;실전거래 강의: 350회 이상
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;기타, 기업 및 기관 대상 글로벌마케팅, 외환/환율 강의 다수
                                </p>
                                
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="skill-left">
                                <div class="skill-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/about/ab_last2.jpg" alt="thumb">
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