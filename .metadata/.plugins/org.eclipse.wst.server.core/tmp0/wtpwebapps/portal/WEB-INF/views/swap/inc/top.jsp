<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="${pageContext.request.contextPath}/resources/dist/img/icon.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
     
    </ul>

    <!-- Right navbar links -->
  <ul class="navbar-nav ml-auto">
                <!-- Navbar Search -->

                <!-- Messages Dropdown Menu -->
     <li class="nav-item" title="Select Language">
                    <a class="nav-link" href="#" >
                        <i class="fa fa-language mr-2" aria-hidden="true"></i>
                        English
                    </a>
                </li>
                <!-- Notifications Dropdown Menu -->
                <li class="nav-item dropdown" title="Select Languages">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                        <i class="fa fa-cog" aria-hidden="true"></i>
                        <!--  <span class="badge badge-warning navbar-badge">15</span>-->
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-item dropdown-header">More Options</span>
                        <div class="dropdown-divider"></div>
                        <a href="${pageContext.request.contextPath}/swap/myprofile" class="dropdown-item">
                            <i class="fa fa-user-circle  mr-2" aria-hidden="true"></i> My Profile

                        </a>
                        

                        <div class="dropdown-divider"></div>
                        <a href="${pageContext.request.contextPath}/swap/logout" class="dropdown-item dropdown-footer" title="Logout">Logout</a>
                    </div>
                </li>

           
            </ul>
  </nav>