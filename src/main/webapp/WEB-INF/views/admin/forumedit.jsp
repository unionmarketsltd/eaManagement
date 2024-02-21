<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<%@include file="inc/session.jsp"%>
<head>
<%@include file="inc/header.jsp"%>
<title>INVESFORUM | Admin</title>



</head>
<body>
	<%@include file="inc/top.jsp"%>
 

	
<div class="layout-content-full grid-limit-new">
    
    <div class="tab-body">
        <!-- TAB ITEM -->
        <div class="tab-item spaced">
          <!-- LAYOUT CONTENT 4 -->
          <div class="layout-content-4 v2 layout-item-1-3">
            <!-- LAYOUT SIDEBAR -->
           <%@include file="inc/sidemenu.jsp" %>

            <!-- LAYOUT BODY -->
            <div class="layout-body">
              <!-- ACCOUNT SETTINGS FORM -->
        
              
              
              
              <div class="section-title-wrap blue no-space">
                <h2 class="section-title medium">Edit Forum</h2>
                <div class="section-title-separator"></div>
              </div>
              
              <br>
              <br>
              <br>
              
              <div class="form-item blue">
                    <label for="as_username" class="rl-label">Title</label>
                    <input type="text" id="title" name="as_username" placeholder="Enter your username here..." value="${forumdetailbyid.name}">
                  
                  </div>
                   <br>
              <br>
              
               <div class="form-item blue">
                    <label for="as_username" class="rl-label">Description</label>
                    <input type="text" id="desc" name="as_username" placeholder="Enter your username here..." value="${forumdetailbyid.description}">
                  
                  </div>
                   <br>
              <br>
                  
                   <div class="form-item blue">
                    <label for="as_username" class="rl-label">Logo</label>
                    <input type="text" id="logo" name="as_username" placeholder="Enter your username here..." value="${forumdetailbyid.logo}">
                  
                  </div>
                  <br>
                  <br>

<button class="button blue" style="float:right" onclick="updateforumdetails()">
                    Save all changes
                    <!-- BUTTON ORNAMENT -->
                    <span class="button-ornament">
                      <!-- ARROW ICON -->
                      <svg class="arrow-icon medium">
                        <use xlink:href="#svg-arrow-medium"></use>
                      </svg>
                      <!-- /ARROW ICON -->

                      <!-- CROSS ICON -->
                      <svg class="cross-icon small">
                        <use xlink:href="#svg-cross-small"></use>
                      </svg>
                      <!-- /CROSS ICON -->
                    </span>
                    <!-- /BUTTON ORNAMENT -->
                  </button>
                  
                  
                  <button class="button red" style="float:right;margin-right:10px" onclick="deletethisforum()">
                    Delete
                    <!-- BUTTON ORNAMENT -->
                    <span class="button-ornament">
                      <!-- ARROW ICON -->
                      <svg class="arrow-icon medium">
                        <use xlink:href="#svg-arrow-medium"></use>
                      </svg>
                      <!-- /ARROW ICON -->

                      <!-- CROSS ICON -->
                      <svg class="cross-icon small">
                        <use xlink:href="#svg-cross-small"></use>
                      </svg>
                      <!-- /CROSS ICON -->
                    </span>
                    <!-- /BUTTON ORNAMENT -->
                  </button>
            </div>
            <!-- /LAYOUT BODY -->
          </div>
          <!-- /LAYOUT CONTENT 4 -->
        </div>
        <!-- /TAB ITEM -->
      </div>
	</div>
	
	
	<script>
	
	
	
	function updateforumdetails()
	{
		let title = document.getElementById("title").value;
		let description = document.getElementById("desc").value;
		let logo = document.getElementById("logo").value;
		
		const id = new URLSearchParams(window.location.search).get('id');

		
		$.ajax({
			url : '${pageContext.request.contextPath}/admin/api/editforumdetail?title='+title+'&desc='+description+'&logo='+logo+'&id='+id,
			type : 'get',
			datatype : "application/json",
			contentType : "application/json",
			async : true,
			data : '',
			success : function(data) {
				console.log(data);
				location.reload();
			},

			error : function(xhr, status) {
				alert("ERROR : " + xhr + " : " + status);

				return;
			}
		});
		
		
	}
	
	
	function deletethisforum()
	{
const id = new URLSearchParams(window.location.search).get('id');

		
		$.ajax({
			url : '${pageContext.request.contextPath}/admin/api/deleteforum?id='+id,
			type : 'get',
			datatype : "application/json",
			contentType : "application/json",
			async : true,
			data : '',
			success : function(data) {
				console.log(data);
				window.location.href = "${pageContext.request.contextPath}/admin/forumsetting";

			},

			error : function(xhr, status) {
				alert("ERROR : " + xhr + " : " + status);

				return;
			}
		});
	}
	
	
	
	
	
	
	</script>

  <!-- LAYOUT CONTENT 1 -->
  <!-- /LAYOUT CONTENT 1 -->
	<%@include file="inc/footer.jsp"%>
</body>
</html>