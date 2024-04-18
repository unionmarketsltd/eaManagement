<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<!-- --><%@include file="inc/session.jsp"%> 

<head>
<%@include file="inc/header.jsp"%>
<title>Union Market EA Management System</title>



</head>
<body>
	<%@include file="inc/top.jsp"%>
	<%@include file="inc/sidemenu.jsp"%>
	
	      <!-- Main Content -->
	      <div class="main-content">
	        <section class="section">
	          <div class="section-header">
	            <h3>EA Connection List -&nbsp;</h3><h3 id="eaGroupNameH3"></h3>&nbsp;&nbsp;<span>Union Market EA Management System</span>
	            <div class="section-header-breadcrumb">
	               <div class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/eaManagement/main"><i class="fa fa-tachometer" aria-hidden="true"></i>Home</a></div>
	            </div>
	          </div>
	
	          <div class="section-body">
	            
	            <div class="row">
	              <div class="col-12 col-md-12 col-lg-12">
	                <div class="card">
	                  <div class="card-header">
	                    <h4>&nbsp;</h4>
	                    <div class="card-header-form">
	                      <form></form>
	                        <div class="input-group">
	                          <input type="text" class="form-control" placeholder="Search: acc no. or account name" id="searchInput">
	                          <div class="input-group-btn">
	                            <button onclick="onclickSearch()" class="btn btn-primary"><i class="fas fa-search" style="font-size:24px; color:white;"></i></button>
	                          </div>
	                        </div>
	                      
	                    </div>
	                  </div>
	                  
	                  <div class="card-body p-0">
	                    <div class="table-responsive">
	                      <table class="table table-striped table-md">
	                        <tr>
	                          <th>Choice</th>
	                          <th>Login</th>
	                          <th>Name</th>
	                          <th>Broker</th>
	                          <th>Type</th>
	                          <th>Balance</th>
	                          <th>Equity</th>
	                          <th>EA Name</th>
	                          <th>Version</th>
	                          <th>Last Connect</th>
	                          <th>Start Date</th>
	                          <th>End Date</th>
	                          <th>Remaining</th>
	                          <th>Permission</th>
	                          <th>Action</th>
	                        </tr>
	                        <c:choose>
	                        	<c:when test="${not empty getEAGroupList}">
		                        	<c:forEach items="${getEAGroupList}" var="listinfo" varStatus="status">
			                        	<tr id="${listinfo.accountsseq}"> <!-- id: -->
				                          <td style="text-align:center;">
				                          	<c:if test="${listinfo.remaining_days != 0}">
				                          		<input type="checkbox"  class="row-checkbox" value="#" style="text-align: center;" checked>
				                          	</c:if>
				                          </td>
				                          <td>${listinfo.login}</td>
				                          <td>${listinfo.name}</td>
				                          <td>${listinfo.broker}</td>
				                          <td>${listinfo.accounttype}</td>
				                          <td>${listinfo.balance}</td>
				                          <td>${listinfo.equity}</td>
				                          <td>${listinfo.eaname}</td>
				                          <td style="text-align:center;">${listinfo.version}</td>
				                          <td>${listinfo.lastconnectdate }</td>
				                          <td>${listinfo.startdate}</td>
				                          <td>${listinfo.enddate}</td>
				                          <td>${listinfo.remaining_days}</td>
				                          <td>
				                          	<c:choose>
				                          		<c:when test="${listinfo.remaining_days != 0}">
				                          			<button id="${listinfo.accountsseq}" onclick="oneUpdStartEnd(this)"  data-toggle="modal" class="btn btn-sm btn-success" data-target="#exampleModal">EA Allowed</button>
				                          		</c:when>
				                          		<c:otherwise>
				                          			<span style="color:red;">Process Completed</span>	
				                          		</c:otherwise>
				                          	</c:choose>
				                          		                          
				                          </td>
				                          <td style="align:center;">
				                          	<button id="${listinfo.accountsseq}" onclick="handleClick(this)" class="btn btn-sm btn-danger">Delete</button>
				                          </td>
				                        </tr>
			                        </c:forEach>
	                        	</c:when>
	                        	<c:otherwise>
	                        		<tr>
	                        			<td style="text-align:center" colspan="14">No record found!</td>
	                        		</tr>
	                        	</c:otherwise>
	                        </c:choose>
	                        
	                        
	                        
	                        <c:if test="${myObject.getEAGroupList.isEmpty}">
	                        	<tr>
		                        	<td style="text-align:center;" colspan="15">No matching record found.</td>
		                        </tr>
	                        </c:if>
	                        
	                      </table>
	                    </div>
	                  </div>
	                  <div class="card-footer">
	                    <div class="row">
	                    	<div class="col-9">
	                    		<button data-toggle="modal" data-target="#batchProcessingModal" id="batchProcessing" class="btn btn-primary" >Batch Processing</button>
	                    	</div>
	                    	<div class="col-3  text-right" >
	                    		<nav class="d-inline-block">
			                      <ul class="pagination mb-0">
			                        <li class="page-item disabled">
			                          <a class="page-link" href="#" tabindex="-1"><i class="fas fa-chevron-left"></i></a>
			                        </li>
			                        ${totalAdmin}
			                        <li class="page-item">
			                          <a class="page-link" href="#"><i class="fas fa-chevron-right"></i></a>
			                        </li>
			                      </ul>
			                    </nav>
	                    	</div>
	                    </div>
	                    
	                  </div>
	                </div> <!-- /card -->
	              </div>
              
            </div> <!-- /row -->
	            
	          </div>  <!-- /section-body -->
	        </section>
	      </div> <!-- Main Content -->
	      
	    <!-- Modal EA Allowed -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Edit EA Account - <span id="eaAccNospan"></span></h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form id="eaallowedForm" name="eaallowedForm"></form><!-- ${pageContext.request.contextPath}/eaManagement/api/createnewadmintest -->
			          <div class="form-group">
			            <input type="text" class="form-control" id="eaoneAccno" name="eaoneAccno" hidden>
			          </div>
			          <!--  --><div class="form-group">
			            <label for="eaoneAccnumbur" class="col-form-label">Account Number</label>
			            <input type="text" class="form-control" id="eaoneAccnumbur" name="eaoneAccnumbur" disabled>
			          </div>
			          <div class="form-group">
			            <label for="eaoneAccname" class="col-form-label">Account Name</label>
			            <input type="text" class="form-control" id="eaoneAccname" name="eaoneAccname" disabled>
			          </div>
			          <div class="form-group">
			            <label for="eaoneEAname" class="col-form-label" >EA Name</label>
			            <input type="text" class="form-control" id="eaoneEAname" name="eaoneEAname" disabled>
			          </div>
			          <div class="form-group">
			            <label for="eaoneVersion" class="col-form-label">Version</label>
			            <input type="text" class="form-control" id="eaoneVersion" name="eaoneVersion" disabled>
			          </div>
			          <div class="form-group">
			            <label for="eaoneSdate" class="col-form-label">Start Date</label>
			            <input type="date" class="form-control" id="eaoneSdate" name="eaoneSdate">
			          </div>
			          <div class="form-group">
			            <label for="eaoneEdate" class="col-form-label">End Date</label>
			            <input type="date" class="form-control" id="eaoneEdate" name="eaoneEdate">
			          </div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button onclick="editeaallowed()" class="btn btn-primary">Save changes</button>
		      </div>
		      
		      	 <!-- /FORM -->
		    </div>
		  </div>
		</div>
		
		
		<!-- Modal batch processing -->
		<div class="modal fade" id="batchProcessingModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Batch Processing</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form action=""><!-- ${pageContext.request.contextPath}/eaManagement/api/createnewadmintest -->
			          
			          <div class="form-group">
			            <label for="bpSdate" class="col-form-label">Start Date</label>
			            <input type="date" class="form-control" id="bpSdate" name="bpSdate">
			          </div>
			          <div class="form-group">
			            <label for="bpEdate" class="col-form-label">End Date</label>
			            <input type="date" class="form-control" id="bpEdate" name="bpEdate">
			          </div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" onclick="javascript:buha()" class="btn btn-primary">Save changes</button>
		      </div>
		      
		      	</form> <!-- /FORM -->
		    </div>
		  </div>
		</div>
	      
	<script>
		
		
	
		function onclickSearch() {
			var theSearch = document.getElementById("searchInput").value;
			console.log(theSearch);
			location.replace("${pageContext.request.contextPath}/eaManagement/eaAccountList?eaSearch="+theSearch)
		}
		

		function editeaallowed() {
			var checkaccNo = document.getElementById("eaoneAccno").value;
			var checkSDate = document.getElementById("eaoneSdate").value;
			var checkEDate = document.getElementById("eaoneEdate").value;
			
			if(checkSDate == "" || checkSDate == null){
				alert("Please fill in  Start Date");
				return;
			} else if (checkEDate == "" || checkEDate == null) {
				alert("Please fill in End Date");
				return;
			} else {
				console.log("id: "+checkaccNo+" start: "+checkSDate+" end: "+checkEDate);
				$.ajax({
					url : '${pageContext.request.contextPath}/eaManagement/api/updateOneStaEnd?id='+checkaccNo+'&startd='+checkSDate+'&endd='+checkEDate, 
					type : 'POST',
					contentType : "application/json",
					data : '',
					success : function(data) {
						console.log(data);
						alert("Updated!");
		            	window.location.reload(true);
					},

					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);

						return;
					}
				});	/**/
			}
		}
		
		
		function oneUpdStartEnd(button){
			var oneUpd = button.id;
			console.log(oneUpd);
			
			$.ajax({
				url : '${pageContext.request.contextPath}/eaManagement/api/getAccountInfoOne?id='+oneUpd,
				type : 'get',
				data : '',
				success : function(data) {
					const testsss = JSON.parse(data.result);
					
					const saccno = testsss.accountsseq;
					const slogin = testsss.name;
					const ssaads = testsss.login;
					const sname = testsss.eaname;
					const sversion = testsss.version;
					const ssdate = testsss.startdate;
					// Parse the string into a Date object
					const dateObj = new Date(ssdate);

					// Extract year, month, and day components
					const year = dateObj.getFullYear();
					const month = (dateObj.getMonth() + 1).toString().padStart(2, '0');
					const day = dateObj.getDate().toString().padStart(2, '0');

					// Assemble the components into the desired format
					const SformattedDate = year+'-'+month+'-'+day;
					
					const sedate = testsss.enddate ;
					// Parse the string into a Date object
					const EdateObj = new Date(sedate);
					const Eyear = EdateObj.getFullYear();
					const Emonth = (EdateObj.getMonth() + 1).toString().padStart(2, '0');
					const Eday = EdateObj.getDate().toString().padStart(2, '0');
					const EformattedDate = Eyear+'-'+Emonth+'-'+Eday;
					
					
					$('#eaoneAccno').val(saccno);
					$('#eaoneAccnumbur').val(ssaads);
					$('#eaoneAccname').val(slogin);
					$('#eaoneEAname').val(ssdate);
					$('#eaoneVersion').val(sversion);
					$('#eaoneSdate').val(SformattedDate);
					$('#eaoneEdate').val(EformattedDate);

					document.getElementById('eaAccNospan').innerHTML = slogin;
				},

				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);

					return;
				}
			});
		}
		
		function handleClick(button){
			var theSearch = button.id;
			console.log("Button ID: " + button.id);
			
			
			$.ajax({
				url : '${pageContext.request.contextPath}/eaManagement/api/deleteListAccount?del='+theSearch,
				type : 'get',
				datatype : "application/json",
				contentType : "application/json",
				async : true,
				data : '',
				success : function(data) {
					console.log(data);
					alert("Successful");
	            	window.location.reload(true);
				},

				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);

					return;
				}
			});
			
		}
		
		function getCheckedRows() {
		    // Get all checked checkboxes that have the 'row-checkbox' class
		    const checkedCheckboxes = document.querySelectorAll('.row-checkbox:checked');
		    
		    // Initialize an array to hold the IDs
		    const checkedRowIds = [];

		    // Loop through each checked checkbox
		    checkedCheckboxes.forEach(checkbox => {
		        // Traverse the DOM to find the parent <tr> element
		        let parentRow = checkbox.closest('tr');
		        
		        // If the parent row has an ID, add it to the array
		        if (parentRow && parentRow.id) {
		            checkedRowIds.push(parentRow.id);
		        }
		    });

		    // Do something with the collected IDs, like logging them to the console
		    return checkedRowIds;
		}
		
		function buha(){
			
			const baha = getCheckedRows();
			let intojsonData = JSON.stringify(baha);
			
			const startDte = document.getElementById("bpSdate").value;
			const endDte = document.getElementById("bpEdate").value;
			
			if(startDte == null || startDte == ""){
				alert("Start date is empty");
				return;
			} else if(endDte == null || endDte == "") {
				alert("End date is empty");
				return;
			} else {
				$.ajax({
					url : '${pageContext.request.contextPath}/eaManagement/api/posthistorydata?startd='+startDte+'&endd='+endDte, 
					type : 'POST',
					contentType : "application/json",
					data : intojsonData,
					success : function(data) {
						console.log(data);
						alert("Batching process updated!");
		            	window.location.reload(true);
					},

					error : function(xhr, status) {
						alert("ERROR : " + xhr + " : " + status);

						return;
					}
				});	
			}
		}
		
	</script>
	      
  <!-- FOOTER -->
	<!--  -->
	<%@include file="inc/footer.jsp"%>
	
	
	
	<script type="application/javascript">
		document.addEventListener("DOMContentLoaded", function() {
		    // Function to fetch query parameter by name
		    function getQueryParam(param) {
		        const urlParams = new URLSearchParams(window.location.search);
		        return urlParams.get(param);
		    }
	
		    // Fetching the 'group' query parameter
		    const groupName = getQueryParam('group');
		    const easearckh = getQueryParam('eaSearch');
			
		    // Selecting the <p> element by its ID and setting its text content
		    // to the 'group' parameter value, or a default text if not found.
		    const groupNameElement = document.getElementById('eaGroupNameH3');
		    if(easearckh) {
		    	groupNameElement.textContent = "Search result '"+easearckh+"'";
		    } else {
		    	if(groupName) {
			        groupNameElement.textContent = groupName;
			    } else {
			        groupNameElement.textContent = 'NOT FOUND';
			    }
		    }
		    
		});
	</script>
</body>
</html>