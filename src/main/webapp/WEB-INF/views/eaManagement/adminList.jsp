<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<!-- %@include file="inc/session.jsp"%<>  -->

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
	            <h2>Admin List</h2>&nbsp;&nbsp;<span>Union Market EA Management System</span>
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
	                          <input type="text" class="form-control" placeholder="Search: name only" id="searchinput">
	                          <div class="input-group-btn">
	                            <button onclick="searchadminfx()" class="btn btn-primary"><i class="fas fa-search" style="font-size:24px;"></i></button>
	                          </div>
	                        </div>
	                      
	                    </div>
	                  </div>
	                  <div class="card-body">
	                    <div class="table-responsive">
	                      <table class="table table-bordered table-md">
	                        <tr>
	                          <th>Seq</th>
	                          <th>Name</th>
	                          <th>ID</th>
	                          <th>PassWord</th>
	                          <th>Email</th>
	                          <th>Phone</th>
	                          <th style='display: none;'>Edit</th><!--   -->
	                        </tr>
	                        <c:choose>
	                        	<c:when test="${not empty eaAdminList}">
		                        	<c:forEach items="${eaAdminList}" var="listinfo">
			                        	<tr>
				                          <td>${listinfo.adminseq}</td>
				                          <td>${listinfo.name}</td>
				                          <td>${listinfo.userseq}</td>
				                          <td>${listinfo.password}</td>
				                          <td>${listinfo.email}</td>
				                          <td>${listinfo.phone}</td>
				                          <td style='display: none;' ><!-- style="text-align:center"-->
						                      <button id="${listinfo.adminseq}" onclick="oneUpdStartEnd(this)" class="btn btn-sm btn-warning" data-toggle="modal" data-target="#exampleModal">Edit Information</button>
			                      		  </td>
				                        </tr>
			                        </c:forEach>
	                        	</c:when>
	                        	<c:otherwise>
	                        		<tr>
	                        			<td style="text-align:center" colspan="7">No matching record found!</td>
	                        		</tr>
	                        	</c:otherwise>
	                        </c:choose>
	                        
	                        
	                      </table>
	                    </div>
	                  </div>
	                  <div class="card-footer" style="display:inline;">
	                  	<div class="row ">
	                  		<div class="col-10">
	                  			<button class="btn btn-danger" data-toggle="modal" data-target="#AddAdminModal">Admin Add</button>
	                  			<!-- <a href="#" class="btn btn-danger">Admin Add</a> -->
	                  		</div>
	                  		<div class="col-2">
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
	                  	<div class="text-left">

	                  	</div>
	                  	<div class="text-right">
	                  		
	                  	</div>
	                  </div>
	                </div>
	              </div>
              
            </div> <!-- /row -->
	            
	          </div>  <!-- /section-body -->
	        </section>
	      </div>
	      
	      
	      <!-- MODAL TESTING -->
	      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Administrator information!</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        <form action="#" method="POST" enctype="multipart/form-data"></form>
			          <input type="text" id="eaoneAccno" style='display: none;' > <!-- style='display: none;' -->
			          <div class="form-group">
			            <label for="e-email" class="col-form-label">Email</label>
			            <input type="text" class="form-control" id="e-email" name="e-email">
			          </div>
			          <div class="form-group">
			            <label for="e-pwd" class="col-form-label">Password</label>
			            <input type="text" class="form-control" id="e-pwd" name="e-pwd">
			          </div>
			          <div class="form-group">
			            <label for="e-name" class="col-form-label" >Name</label>
			            <input style="cursor: no-drop;" id="e-name" class="form-control" name="e-name" readonly="readonly">
			          </div>
			          <div class="form-group">
			            <label for="e-phone" class="col-form-label">Phone</label>
			            <input type="text" class="form-control" id="e-phone" name="e-phone">
			          </div>
			          <div class="form-group">
			            <label for="e-address" class="col-form-label">Address</label>
			            <input type="text" class="form-control" id="e-address" name="e-address">
			          </div>
			          
			        
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
			        <button type="button" onclick="editeaallowed()" class="btn btn-primary">Edit</button>
			        <button type="button" onclick="handleClick()" class="btn btn-danger">Delete Admin</button>
			      </div>
			      
			      <!-- /FORM -->
			    </div>
			  </div>
			</div>
			
			
	      
	      <!-- MODAL ADMIN ADD -->
	      <div class="modal fade" id="AddAdminModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Add new administrator!</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        <form action="${pageContext.request.contextPath}/eaManagement/api/createnewadmintest" method="post"><!--  -->
			          <div class="form-group">
			            <label for="ID" class="col-form-label">ID (Userseq)</label>
			            <input type="text" class="form-control" id="ID" name="ID">
			          </div>
			          <div class="form-group">
			            <label for="Email" class="col-form-label">Email</label>
			            <input type="text" class="form-control" id="Email" name="Email">
			          </div>
			          <div class="form-group">
			            <label for="Password" class="col-form-label" >Password</label>
			            <input type="text" class="form-control" id="Password" name="Password">
			          </div>
			          <div class="form-group">
			            <label for="Name" class="col-form-label">Name</label>
			            <input type="text" class="form-control" id="Name" name="Name">
			          </div>
			          <div class="form-group">
			            <label for="Phone" class="col-form-label">Phone</label>
			            <input type="text" class="form-control" id="Phone" name="Phone">
			          </div>
			          <div class="form-group">
			            <label for="Address" class="col-form-label">Address</label>
			            <input type="text" class="form-control" id="Address" name="Address">
			          </div>
			          
			        
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="submit"  class="btn btn-info">Submit</button>
			      </div>
			      
			       </form><!-- /FORM onclick="addnewadminfx()"-->
			    </div>
			  </div>
			</div>
			
			
			
	<script>
		
		function searchadminfx(){
			var theSearch = document.getElementById("searchinput").value;
			console.log(theSearch);
			location.replace("${pageContext.request.contextPath}/eaManagement/adminList?search="+theSearch);
		}
		
		
		function oneUpdStartEnd(button){
			var oneUpd = button.id;
			console.log(oneUpd);
			/**/
			$.ajax({
				url : '${pageContext.request.contextPath}/eaManagement/api/getAdminInfoOne?id='+oneUpd,
				type : 'get',
				data : '',
				success : function(data) {
					const testsss = JSON.parse(data.result);
					console.log(testsss);
					const siadminseq = testsss.adminseq;
					const siemail = testsss.email;
					const sipwd = testsss.password;
					const siname = testsss.name;
					const siphone = testsss.phone;
					const siaddr = testsss.addr;
					// const slogin = testsss.name;
					$('#e-email').val(siemail);
					$('#eaoneAccno').val(siadminseq);
					$('#e-pwd').val(sipwd);
					$('#e-name').val(siname);
					$('#e-phone').val(siphone);
					$('#e-address').val(siaddr);
					// document.getElementById('eaAccNospan').innerHTML = slogin;
				},

				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);

					return;
				}
			});
			
		}
		
		
		
		function editeaallowed() {
			var checkaccNo = document.getElementById("eaoneAccno").value;
			var updEmail = document.getElementById("e-email").value;
			var updPwd = document.getElementById("e-pwd").value;
			var updNme = document.getElementById("e-name").value;
			var updPhn = document.getElementById("e-phone").value;
			var updAddr = document.getElementById("e-address").value;
			
			
			
			$.ajax({
				url : '${pageContext.request.contextPath}/eaManagement/api/updateAdminInfo?id='+checkaccNo+'&emails='+updEmail+'&pwds='+updPwd+'&phns='+updPhn+'&adds='+updAddr, 
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
			});
		}
		
		
		function handleclick(){
			var checkaccNo = document.getElementById("eaoneAccno").value;
			
			
			$.ajax({
				url : '${pageContext.request.contextPath}/eaManagement/api/deleteAdminAcc?del='+checkaccNo,
				type : 'get',
				datatype : "application/json",
				contentType : "application/json",
				async : true,
				data : '',
				success : function(data) {
					console.log(data);
					alert("Deleted");
	            	window.location.reload(true);
				},

				error : function(xhr, status) {
					alert("ERROR : " + xhr + " : " + status);

					return;
				}
			});
		}
	</script>
	      
  <!-- FOOTER -->
	<!--  -->
	<%@include file="inc/footer.jsp"%>
	
	
	<script>
	
	
	
	</script>
	
</body>
</html>