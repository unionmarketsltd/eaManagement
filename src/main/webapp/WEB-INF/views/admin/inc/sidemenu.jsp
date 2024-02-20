<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <div class="layout-sidebar">
              <!-- DROPDOWN LIST -->
              <ul class="dropdown-list void centered">
                <!-- DROPDOWN LIST ITEM -->
                <li class="dropdown-list-item active">
                  <a href="${pageContext.request.contextPath}/admin/index" class="dropdown-list-item-link">All Users</a>
                </li>
                <!-- /DROPDOWN LIST ITEM -->
        
                <!-- DROPDOWN LIST ITEM -->
                <li class="dropdown-list-item">
                  <a href="${pageContext.request.contextPath}/admin/forumsetting" class="dropdown-list-item-link">Forum Setting</a>
                </li>
                <!-- /DROPDOWN LIST ITEM -->
        
                <!-- DROPDOWN LIST ITEM -->
                <li class="dropdown-list-item">
                  <a href="${pageContext.request.contextPath}/admin/categorysetting" class="dropdown-list-item-link">Category Setting</a>
                </li>
                <!-- /DROPDOWN LIST ITEM -->
        
                <!-- DROPDOWN LIST ITEM -->
                <li class="dropdown-list-item">
                  <a href="${pageContext.request.contextPath}/admin/topicsetting" class="dropdown-list-item-link">Topic Setting</a>
                </li>
                
                 <li class="dropdown-list-item">
                  <a href="#" class="dropdown-list-item-link">Comment Setting</a>
                </li>
                <!-- /DROPDOWN LIST ITEM -->

                <!-- DROPDOWN LIST ITEM -->
                <li class="dropdown-list-item">
                  <a href="#" class="dropdown-list-item-link">Deals Upload</a>
                </li>
                <!-- /DROPDOWN LIST ITEM -->
              </ul>
              <!-- /DROPDOWN LIST -->
            </div>
            <!-- /LAYOUT SIDEBAR -->