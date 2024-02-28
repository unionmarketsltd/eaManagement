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

<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.4/xlsx.full.min.js"></script>
 <script src="https://code.jquery.com/jquery-3.4.1.min.js" ></script>

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
                <h2 class="section-title medium">Upload Deals</h2>
                <div class="section-title-separator"></div>
              </div>
              
              <form class="account-settings-form">
			        <!-- FORM ROW -->
			        <div class="form-row">
			          <!-- FORM ITEM -->
			          <div class="form-item blue">
			            <label for="as_first_name" class="rl-label">Select Account</label>
			            <select class="form-select" name="groupCliemtID" id="groupCliemtID">
							<!--<option value="ClientID">Client Name</option>
							<option value="">Client Name</option>-->
							<c:forEach items="${nowform}" var="clistinfo" varStatus="status">
								<option value="${clistinfo.accountid}">${clistinfo.name}</option>
							</c:forEach>
			
						</select>
			            
			          </div>
			          <!-- /FORM ITEM -->
			
			
			        <!-- FORM ROW -->
			        <div class="form-row">
			          <!-- FORM ITEM -->
			          <div class="form-item blue">
			            <label for="as_username" class="rl-label">Upload File</label>
			            <input type="file" id="file" name="file" >
			          </div>
			          <!-- /FORM ITEM -->
			        </div>
			        <!-- /FORM ROW -->
			
			        <!-- SUBMIT BUTTON WRAP -->
			        <div class="submit-button-wrap">
			          <!-- BUTTON -->
			          <button onclick="uploadFile(event)" class="button blue">
			            Upload File
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
			          <!-- /BUTTON -->
			        </div>
			        <!-- /SUBMIT BUTTON WRAP -->
			</form>
			
			
			
<script>
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
		        
		        
		        
		        console.log(newintojsonData);
		        console.log("------------------------");
		        // console.log(KTEresult);
				
		        /* */
		        $.ajax({
		            url: "${pageContext.request.contextPath}/admin/api/posthistorydata?id="+theID,
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

            </div>
            <!-- /LAYOUT BODY -->
          </div>
          <!-- /LAYOUT CONTENT 4 -->
        </div>
        <!-- /TAB ITEM -->
      </div>
	</div>

  <!-- LAYOUT CONTENT 1 -->
  <!-- /LAYOUT CONTENT 1 -->
	<%@include file="inc/footer.jsp"%>
</body>
</html>