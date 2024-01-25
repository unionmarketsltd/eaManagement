<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


  <!-- FOOTER TOP WRAP -->
  <div class="footer-top-wrap" style="border-top: 1px solid #4f4f4f;">
    <!-- FOOTER TOP -->
    <div class="footer-top grid-limit">
      <!-- FOOTER TOP BRAND -->
      <div class="footer-top-brand">
        <!-- LOGO -->
        <div class="logo negative">
          <!-- LOGO IMG -->
          <figure class="logo-img">
          <img src="${pageContext.request.contextPath}/resources/forum/img/brand/logo.png" alt="Logo">
          </figure>
          <!-- /LOGO IMG -->

          <!-- LOGO TEXT -->
          <div class="logo-text">
            <h2 class="logo-title">INVES<span class="highlight">FORUM</span></h2>
            <p class="logo-info">The Latest Asset News</p>
          </div>
          <!-- /LOGO TEXT -->
        </div>
        <!-- /LOGO -->

        <!-- SPONSORS SLIDER WRAP -->
        <div class="sponsors-slider-wrap">
        
        </div>
       
      </div>
      <!-- /FOOTER TOP BRAND -->

      <!-- LINE SEPARATOR -->
      <div class="line-separator negative"></div>

      <!-- FOOTER TOP WIDGETS -->
      <!-- /FOOTER TOP WIDGETS -->
    </div>
    <!-- /FOOTER TOP -->
  </div>
  <!-- /FOOTER TOP WRAP -->

  <!-- FOOTER BOTTOM WRAP -->
  <div class="footer-bottom-wrap">
    <!-- FOOTER BOTTOM -->
    <div class="footer-bottom grid-limit">
      <p class="footer-bottom-text"><span class="brand"><span class="highlighted">INVESFORUM</span> </span><span class="separator">|</span>All Rights Reserved <span id="footer-year"></span></p>
      <p class="footer-bottom-text"><a href="#">Terms and Conditions</a><span class="separator">|</span><a href="#">Privacy Policy</a></p>
    </div>
    <!-- /FOOTER BOTTOM -->
  </div>
  <!-- /FOOTER BOTTOM WRAP -->

<!-- app bundle -->



<script>

document.getElementById("footer-year").innerHTML = new Date().getFullYear();
loadingScripts();
function loadingScripts() {
    /* getting url of current page */
    var url = window.location.pathname.indexOf('createtopic');
    var url1 = window.location.pathname.indexOf('edittopic');
    console.log(url);
    console.log(url1);
    if (url == -1 && url1 ==-1) { /* checking whether the current page is home page or not */
        var script = document.createElement('script');
        script.src = "${pageContext.request.contextPath}/resources/forum/app.bundle.min.js";
        document.body.appendChild(script);
    } 
}


</script>