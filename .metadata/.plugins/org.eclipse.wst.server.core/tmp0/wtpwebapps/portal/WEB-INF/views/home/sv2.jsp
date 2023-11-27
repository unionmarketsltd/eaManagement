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
        <div class="site-breadcrumb" style="background: url(${pageContext.request.contextPath}/resources/assets/img/service/service.jpg)">
            <div class="container">
                <h2 class="breadcrumb-title">Services</h2>
                <ul class="breadcrumb-menu">
                    <li><a href="index.html"><i class="far fa-home"></i> Home</a></li>
                    <li class="active">Services</li>
                </ul>
            </div>
        </div>
        <!-- breadcrumb end -->



        <!-- service area -->
        <div class="service-area service-area2 bg py-120">
            <div class="shape-1"></div>
            <div class="shape-2"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto">
                        <div class="site-heading text-center">
                            <span class="site-title-tagline">Services</span>
                            <div class="heading-divider"></div>
                            
                        </div>
                    </div>
                </div>
                <div class="row g-5 align-items-center">
                        <div class="col-lg-6 col-12">
                            <div class="skill-left">
                                <div class="skill-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/service/s1.jpg" alt="thumb">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="skill-right">
                                <h2 class="site-title"><span>자산운용 및 관리</span></h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;금융업의 본질은 한마디로, 자금을 잘 운용하는 것입니다. 즉, 돈을 잘 굴려서 수익을 만들어내는 것인데, 어떤 상품에 투자하든 합리적인 방법으로 자금을 잘 운용해서 수익을 만드는 것입니다. 국제금융시장은 이미 자산운용의 시대입니다.
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;회사는 다양한 투자자들의 자금(투자운용금)을 보다 효율적이면서도 안전하게 관리하기 위해 다수의 전문 트레이더들을 육성하고 있으며, 이를 바탕으로 전 세계의 투자금을 운용하는 자산 전문회사로 발돋움해 나갈 계획입니다.
                                </p>
                                
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <!-- service area end -->

        

        <!-- service area -->
        <div class="service-area service-area2 py-120">
            <div class="shape-1"></div>
            <div class="shape-2"></div>
            <div class="container">
                <div class="row g-5 align-items-center">
                        <div class="col-lg-6 col-12">
                            <div class="skill-right">
                                <h2 class="site-title"><span>교육 및 아카데미</span></h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;전 세계의 초대형 금융회사들이 고수익을 추구하는 금융 거래는 큰 수익과 동시에 큰 손실(High Risk High Return)을 초래할 수 있습니다. 때문에 안정적으로 지속적인 수익을 내고자 한다면 반드시 실전거래 노하우에 대한 교육이 필수입니다.
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;㈜트라이엔은 아카데미를 통해 일반인들도 쉽게 배우고 익힐 수 있는 국제금융 실전투자 및 거래방법 등에 대한 체계적이고도 논리적인 정보와 지식을 제공합니다.
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;특히, 선진 금융회사들이 돈을 버는 종목과 방법들을 살펴보고 어떻게 돈을 벌고 자산을 관리하는지, 일반인들은 어떻게 배우고 투자에 적용할 수 있는지에 대한 정보와 지식을 전달합니다.
                                </p>
                                
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="skill-left">
                                <div class="skill-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/service/s2.jpg" alt="thumb">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-12">
                                <p class="skill-details">
                                    &nbsp;&nbsp;일반-실전-심화교육의 3단계 커리큘럼을 통해 일정 단계와 기간이 지나면 일반인들도 쉽게 자신만의 안전하고 체계적인 재테크 노하우 기술을 확보하고 실력을 기를 수 있습니다. 안전한 재테크의 꿈은 더 이상 꿈이 아닙니다. 아카데미를 통해 누구든 도전할 수 있습니다.

                                </p><br>
                                <p class="skill-details">
                                    <span style="color: skyblue;">외환거래 일반 교육</span><br>
                                    &nbsp;&nbsp;외환에 대해 처음 접하는 일반인들을 위한 과정입니다. 기본적인 용어부터 지식, 정보를 체계적으로 습득해 나가게 됩니다.

                                </p><br>
                                <p class="skill-details">
                                    <span style="color: skyblue;">외환거래 실전 교육</span><br>
                                    &nbsp;&nbsp;다양한 외환거래에 대한 실전 노하우를 익히는 과정입니다. 실전투자 및 거래에 대한 이해와 적용, 안전하면서도 체계적인 방법을 배우게 됩니다.


                                </p><br>
                                <p class="skill-details">
                                    <span style="color: skyblue;">외환거래 심화 교육</span><br>
                                    &nbsp;&nbsp;실전 교육을 받은 이들이 자신만의 노하우를 만드는 과정입니다. 실전투자 및 거래에 대해 습관을 확립하고, 시스템 트레이딩으로 발전시켜 나가게 됩니다.

                                </p><br>
                                <p class="skill-details">
                                    <span style="color: skyblue;">강의/교육 커리큘럼</span><br>
                                    &nbsp;&#8226;일반 교육: 일반인 및 초보자 대상의 이론 및 실전 강의<br>
                                    기간: 4회(주 1회 2시간 * 4회)<br>
                                    &nbsp;&#8226;실전 교육: 실전에서 사용 가능한 트레이딩 기법/노하우 강의<br>
                                    기간: 4회(주 1회 2시간 * 4회)<br>
                                    &nbsp;&#8226;심화 교육: 시스템 트레이딩으로 개량화 가능한 실전 트레이딩 강의<br>
                                    기간: 3회(주 1회 2시간 * 3회)
                                </p>
                        </div>
                    </div>
            </div>
        </div>
        <!-- service area end -->



        <!-- service area -->
        <div class="service-area service-area2 bg py-120">
            <div class="shape-1"></div>
            <div class="shape-2"></div>
            <div class="container">
                <div class="row g-5 align-items-center">
                        <div class="col-lg-6 col-12">
                            <div class="skill-left">
                                <div class="skill-img">
                                    <img src="${pageContext.request.contextPath}/resources/assets/img/service/s3.jpg" alt="thumb">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="skill-right">
                                <h2 class="site-title"><span>시스템 트레이딩</span></h2>
                                <p class="skill-details">
                                    &nbsp;&nbsp;㈜트라이엔은 거래 노하우인 ‘시그널’ 및 회사만의 거래기법을 프로그램에 적용해, 보다 안전하고 높은 수익률을 낼 수 있는 온라인 외환거래 시스템을 개발하고 있습니다. 스윙과 스캘핑 거래방법 및 진입과 청산에 대한 적절한 포지션, 변동성이 큰 장에서도 빠른 수익 청산을 할 수 있는 헤지 시스템을 함께 적용하고 있습니다.
                                </p>
                                <p class="skill-details">
                                    &nbsp;&nbsp;이러한 시스템 트레이딩에 대한 지속적인 연구개발(R&D)를 통해 수익률 개량화 작업을 진행하고 있으며, 일정한 수익을 계속해서 발생시킬 수 있는 시스템을 구축하고 있습니다. 이제 진입과 청산 타이밍을 잡기 위해 기다릴 필요 없이, 개인 업무를 하면서도 재테크로 활용할 수 있는 안정적인 시스템 트레이딩을 만나볼 수 있습니다.
                                </p>
                                
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <!-- service area end -->
        
        
        <!-- cta area -->
        <div class="cta-area pt-50 pb-50">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-8 col-lg-9">
                        <div class="cta-content">
                            <h3>강의/교육 신청!</h3>
                            
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-3">
                        <div class="d-flex justify-content-md-end">
                            <a href="education.html" class="theme-btn">지금 신청하기! <i class="far fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- cta area end -->
        
    </main>
<%@include file="inc/footer.jsp"%>
</html>