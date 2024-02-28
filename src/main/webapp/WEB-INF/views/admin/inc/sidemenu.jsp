<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="layout-sidebar">
	<!-- DROPDOWN LIST -->

	<ul class="dropdown-list void centered">
		<!-- DROPDOWN LIST ITEM -->
		
		
		<li class="dropdown-list-item "><p
			class="dropdown-list-item-link" style="color:#3093ef">(ADMIN) ${s_GEmail}</p></li>
			
			
			
		<li class="dropdown-list-item " id="menu_index"><a
			href="${pageContext.request.contextPath}/admin/index"
			class="dropdown-list-item-link">User setting</a></li>
		<!-- /DROPDOWN LIST ITEM -->

		<!-- DROPDOWN LIST ITEM -->
		<li class="dropdown-list-item" id="menu_forumsetting"><a
			href="${pageContext.request.contextPath}/admin/forumsetting"
			class="dropdown-list-item-link">Forum Setting</a></li>
		<!-- /DROPDOWN LIST ITEM -->

		<!-- DROPDOWN LIST ITEM -->
		<li class="dropdown-list-item" id="menu_categorysetting"><a
			href="${pageContext.request.contextPath}/admin/categorysetting"
			class="dropdown-list-item-link">Category Setting</a></li>
		<!-- /DROPDOWN LIST ITEM -->

		<!-- DROPDOWN LIST ITEM -->
		<li class="dropdown-list-item" id="menu_topicsetting"><a
			href="${pageContext.request.contextPath}/admin/topicsetting"
			class="dropdown-list-item-link">Topic Setting</a></li>

		<li class="dropdown-list-item" id="menu_commentsetting"><a
			href="${pageContext.request.contextPath}/admin/commentsetting"
			class="dropdown-list-item-link">Comment Setting</a></li>

		<li class="dropdown-list-item" id="menu_"><a 
			href="${pageContext.request.contextPath}/admin/DealsUpload"
			class="dropdown-list-item-link">Deals Upload</a></li>
			
			
			<li class="dropdown-list-item" ><a href="${pageContext.request.contextPath}/admin/logout"
			class="dropdown-list-item-link">Logout</a></li>
		<!-- /DROPDOWN LIST ITEM -->
	</ul>
	<!-- /DROPDOWN LIST -->
</div>
<!-- /LAYOUT SIDEBAR -->


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