<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div id="app">
	    <div class="main-wrapper main-wrapper-1">
	      <div class="navbar-bg"></div>
	      <nav class="navbar navbar-expand-lg main-navbar">
	        <form class="form-inline mr-auto">
	          <ul class="navbar-nav mr-3">
	            <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
	            <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
	          </ul>
	        </form>
	        <ul class="navbar-nav navbar-right">
	          
	          
	          <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
	            <i class="fas fa-user"></i>
	            <div class="d-sm-none d-lg-inline-block">Hi, ${s_GEmail}</div></a>
	            <div class="dropdown-menu dropdown-menu-right">
	              <div class="dropdown-title">Member since 2018</div>
	              
	              <div class="dropdown-divider"></div>
	              <a href="${pageContext.request.contextPath}/eaManagement/logout" class="dropdown-item has-icon text-danger">
	                <i class="fas fa-sign-out-alt"></i> Logout
	              </a>
	            </div>
	          </li>
	        </ul>
	      </nav>

