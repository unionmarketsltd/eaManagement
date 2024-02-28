<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html lang="en">
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>
   
<title>INVESFORUM | My Page</title>

</head>
<body>
	
	<div class="banner-wrap forum-banner">
		<!-- BANNER -->
		<div class="banner grid-limit">
			<h2 class="banner-title">MT5 Accounts List</h2>
			<p class="banner-sections">
				<a style="color: white"
					href="${pageContext.request.contextPath}/home/index"
					class="banner-section">Home</a>
				<!-- ARROW ICON -->
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<a style="color: white"
					href="#"
					class="banner-section">Trade Account</a>
					
				<svg class="arrow-icon">
          <use xlink:href="#svg-arrow"></use>
        </svg>
				<!-- /ARROW ICON -->
				<a style="color: white"
					href="#"
					class="banner-section">FOREX MT5 ACCOUNTS</a>
			</p>
		</div>
		<!-- /BANNER -->
	</div>





	<div class="layout-content-full grid-limit">
    
    <div class="section-title-wrap blue no-space">
                <h2 class="section-title medium">MT5 Account List</h2>
                <div class="section-title-separator"></div>
              </div>
		
		<hr>
		
		<form id="excelFileUpload" enctype="multipart/form-data" method="post"><!-- action="${pageContext.request.contextPath}/upload/UploadController" -->
		  <label for="cars">Select an account:</label>
			<select class="form-control custom-select rounded-0 select2" name="groupCliemtID" id="groupCliemtID">
														<!--<option value="ClientID">Client Name</option>-->
				<c:forEach items="${nowform}" var="clistinfo" varStatus="status">
					<option value="${clistinfo.accountid}">${clistinfo.name}</option>
				</c:forEach>


			</select>
		  
		  <label for="lname">Last name:</label><br>
		  <input type="file" id="file" name="file" ><br><br>
		  <input type="button" onclick="uploadFile(event)" value="submit"> <!-- onclick="uploadFile()" -->
		</form> 
		
		<div id="result"></div>
		
	
		
		
	</div>
	
	<!-- <script src="xlsx.full.min.js"></script>
    <script src="upload.js"></script> -->
	
	<script >
	
		function uploadFile(event) {
			event.preventDefault();
			var theID = document.getElementById("groupCliemtID").value;
			console.log(theID);
			console.log("testing");
			var fileInput = document.getElementById('file');
		    var file = fileInput.files[0];
		    var reader = new FileReader();
		    
		    reader.onload = function(e) {
		        var data = new Uint8Array(e.target.result);
		        var workbook = XLSX.read(data, { type: 'array' });

		        // Specify the sheet/tab name you want to read
		        var sheetName = 'Deals'; // aaaaaaa
		        var sheet = workbook.Sheets[sheetName];
		        //console.log(sheet);
		        var jsonData = XLSX.utils.sheet_to_json(sheet, { header: 0 });
		        let intojsonData = JSON.stringify(jsonData);
		        let newintojsonData =  intojsonData
		        .replace(/거래일/g, 'transactionDate')
		        .replace(/종목/g, 'item')
		        .replace(/구분/g, 'type')
		        .replace(/체결량/g, 'volume')
		        .replace(/체결가격/g, 'price')
		        .replace(/진입가격/g, 'entryPrice')
		        .replace(/통화/g, 'currency')
		        .replace(/선물청산손익/g, 'futureProfitLoss')
		        .replace(/체결일시/g, 'dealDateTime')
		        .replace(/진입일시/g, 'entryDateTime');
		        
		        
		        
		        console.log(jsonData);
		        console.log("------------------------");
		        // console.log(KTEresult);
		        

		        // Output the data to the HTML
		        var outputDiv = document.getElementById('result');
		        outputDiv.innerHTML = '<pre>' + JSON.stringify(newintojsonData, null, 2) + '</pre>';
				
		        
		        $.ajax({
                    url: "${pageContext.request.contextPath}/upload/api/posthistorydata",
                    type: "POST",
                    contentType: "application/json",
                    data: newintojsonData,
                    success: function(data) {
        				
                    	// const jobj = JSON.parse(data.result);
        				
        				
        				
                    }
                });
		        
		        
		    };
		    reader.readAsArrayBuffer(file);
		    
		}
		
		    
		    
	</script>



</body>
</html>