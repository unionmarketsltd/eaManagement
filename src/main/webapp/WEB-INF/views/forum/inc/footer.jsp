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

<script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<script type="text/javascript">

function googleTranslateElementInit() {
    new google.translate.TranslateElement({
         pageLanguage: 'ko,en', // Default language
        includedLanguages: 'ko,en,ja,zh-CN,ms',
        layout: google.translate.TranslateElement.FloatPosition.TOP_RIGHT,
        autoDisplay: false
    }, 'google_translate_element');
    
    if(isCookieSet('userlang') == false)
    	{
    	//alert("cookie not set ")
    	 getUserCountry();
    	}
    else
    	{
    	 setTimeout(function() {
    		 setUserRememberLang();
    	    }, 500); // Delay set to 500 milliseconds
    	
    	}
   
}


function setUserRememberLang(){
	
	var selectedlang = getCookie('userlang') ;
	
	var usercountry = getCookie('usercountry') ;
	document.getElementById('country').innerHTML = usercountry;
	//alert("cookie is set to "+getSupportedLanguages(selectedlang) + usercountry);
	
	document.getElementById('selectedlangguagename').innerHTML =getSupportedLanguages(selectedlang);
	 var supportedLanguages = selectedlang; // Get supported languages for the country
	 if(supportedLanguages.indexOf('kr')<0)
		 {
		 userselectLang(supportedLanguages);
		 }
	
}


function reloadselectoriginal(){
	setCookie('userlang','kr');
	
	location.reload();
}

function userselectLang(langguagecode)
{
	
	
	var list = document.querySelector('.VIpgJd-ZVi9od-xl07Ob-OEVmcd').contentDocument.querySelectorAll('a.VIpgJd-ZVi9od-vH1Gmf-ibnC6b');
    for(i=0;i<list.length;i++)
    	{
    	console.log(i);
    	if(list[i].innerHTML.indexOf(getSupportedLanguages(langguagecode))>=0)
    		{
    		//alert("langguage selected to" + getSupportedLanguages(langguagecode));
    		setCookie('userlang',langguagecode);
    		console.log("click");
    		list[i].click();
    		}
    	}
	}

    
   
function getUserCountry() {
    fetch('https://ipapi.co/json/')
        .then(response => response.json())
        .then(data => {
            var countryCode = data.country_code.toLowerCase(); // Get the country code
            console.log(countryCode);
            var supportedLanguages = getSupportedLanguages(countryCode); // Get supported languages for the country
            document.getElementById('country').innerHTML = data.country_name;
            document.getElementById('selectedlangguagename').innerHTML =getSupportedLanguages(countryCode);
           // alert("setting cookie");
            setCookie('userlang',countryCode);
            setCookie('usercountry',data.country_name);
           // alert("cookie is set");
            userselectLang(supportedLanguages);
            
        })
        .catch(error => {
            console.error('Error fetching user country:', error);
            
          
            supportedLanguages("English");
           
        });
}

// Function to get supported languages based on country
function getSupportedLanguages(countryCode) {
    switch (countryCode) {
        case 'kr': // Korea
            return 'Korean';
        case 'jp': // Japan
            return 'Japanese';
        case 'cn': // China
            return 'Chinese';
      /*  case 'my': // China
            return 'Malay';*/
        default:
            return 'English'; // Default language
    }
}


function setCookie(flag,value) {
    
    document.cookie = flag +"=" + value + "; expires=Fri, 31 Dec 9999 23:59:59 GMT; path=/";
  //  alert("Cookie with flag set successfully!");
}

// Get the flag from the cookie
function getCookie(flag) {
	var flagValue = '';
    var cookies = document.cookie.split(';');
    for (var i = 0; i < cookies.length; i++) {
        var cookie = cookies[i].trim();
        if (cookie.startsWith(flag+"=")) {
        	flagValue  = cookie.substring(flag.length+1);
         
            break;
        }
    }
    return flagValue;
}

function isCookieSet(cookieName) {
    // Get all cookies
    var cookies = document.cookie.split(';');

    // Loop through each cookie
    for (var i = 0; i < cookies.length; i++) {
        var cookie = cookies[i].trim();

        // Check if the cookie starts with the specified name followed by "="
        if (cookie.indexOf(cookieName + "=") === 0) {
            // Cookie found
            return true;
        }
    }
    // Cookie not found
    return false;
}

 

</script>