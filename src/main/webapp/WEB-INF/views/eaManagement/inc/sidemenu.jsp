<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="main-sidebar sidebar-style-2">
	        <aside id="sidebar-wrapper">
	          <div class="sidebar-brand">
	            <a>Union Market EA</a>
	          </div>
	          <div class="sidebar-brand sidebar-brand-sm">
	            <a href="index.html">EA</a>
	          </div>
	          <ul class="sidebar-menu">
	            <li class="menu-header">Menu</li>
	            <li class="dropdown">
	              <a href="#" class="nav-link has-dropdown"><i class="fa fa-key" aria-hidden="true"></i><span>Admin Setting</span></a>
	              <ul class="dropdown-menu">
	                <li><a class="nav-link" href="${pageContext.request.contextPath}/eaManagement/adminList"><i class="fa fa-wrench" ></i>View/Edit/Input</a></li>
	              </ul>
	            </li>
	            <li class="dropdown">
	              <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fa-solid fa-briefcase"></i> <span>EA Connection List</span></a>
	              <ul class="dropdown-menu">
	                <!-- <li><a class="nav-link" href="${pageContext.request.contextPath}/eaManagement/eaAccountList"><i class="fa fa-list" aria-hidden="true"></i>GET FROM DB</a></li> -->
	                <c:forEach items="${eaNameList}" var="eanamelistinfo">
	                	<li><a class="nav-link" href="${pageContext.request.contextPath}/eaManagement/eaAccountList?group=${eanamelistinfo.eaname}"><i class="fa fa-list" aria-hidden="true"></i>${eanamelistinfo.eaname}</a></li>
	                </c:forEach>
	              </ul>
	            </li>
	            
	            
	            
	          </ul>
	
	          </aside>
	      </div>


<script>
	var page = window.location.href.substring(
			window.location.href.lastIndexOf('/') + 1).split('?')[0];

	if (page.indexOf("index") >= 0) {
		document.getElementById("menu_index").classList.add('active');
	} else if (page.indexOf("forum") >= 0) {
		document.getElementById("menu_forumsetting").classList.add('active');
	}

	else if (page.indexOf("category") >= 0) {
		document.getElementById("menu_categorysetting").classList.add('active');
	}

	else if (page.indexOf("topic") >= 0) {
		document.getElementById("menu_topicsetting").classList.add('active');
	}

	else if (page.indexOf("comment") >= 0) {
		document.getElementById("menu_commentsetting").classList.add('active');
	}
</script>