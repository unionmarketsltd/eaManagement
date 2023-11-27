<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
    <!-- meta tags -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- title -->
    <title>Seiren Holdings</title>

    <!-- favicon -->
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/img/logo/logo-light.jpg">

    <!-- css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/all-fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/magnific-popup.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">

</head>

<body>

    <!-- preloader -->
    <div class="preloader">
        <div class="loader">
            <div class="loader-box-1"></div>
            <div class="loader-box-2"></div>
        </div>
    </div>
    <!-- preloader end -->


    <!-- header area -->
    <header class="home-3 header"  style="background:#1B1B1B !important">


        <div class="main-navigation">
            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand" href="index-3.html">
                        <img style="height:80px;width:60px" src="${pageContext.request.contextPath}/resources/assets/img/logo/logo-light.jpg" alt="logo" >
                        <a><span class="site-title-tagline" style="font-size: 20px;">Seiren Holdings</span></a>   
                    </a>
                    <div class="mobile-menu-right">
                        <a href="#" class="mobile-search-btn search-box-outer"><i class="far fa-search"></i></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#main_nav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"><i class="far fa-stream"></i></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="main_nav">
                        <ul class="navbar-nav ms-auto">
                            <ul class="navbar-nav ms-auto">
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/home"> Home </a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/home/aboutus"> 회사소개 </a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/home/sv2"> 사업소개 </a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/home/edu"> 강의/교육 </a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/home/ms"> Manual System </a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/home/contact"> Contact</a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/fundclient/login"> My Page</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- header area end -->


    <!-- popup search -->
    <div class="search-popup">
        <button class="close-search"><span class="far fa-times"></span></button>
        <form action="#">
            <div class="form-group">
                <input type="search" name="search-field" placeholder="Search Here..." required>
                <button type="submit"><i class="far fa-search"></i></button>
            </div>
        </form>
    </div>
    <!-- popup search end -->


