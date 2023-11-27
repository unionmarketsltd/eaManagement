<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="inc/session.jsp"%> 
<!DOCTYPE html>
<html lang="en">
<head>
  <%@include file="inc/header.jsp"%> 
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <%@include file="inc/top.jsp"%> 

  <!-- Main Sidebar Container -->
  <%@include file="inc/left.jsp"%> 

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0" id="pagetitlemain"></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index">Home</a></li>
              <li class="breadcrumb-item active">Edit Profile</li>
            </ol>
          </div>
          <!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content"><!-- /.container-fluid -->
    
    <div class="container-fluid">
        <!-- /.row -->
    
    <div class="row">
          <div class="col-md-12">
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title b"><strong>Change My Email</strong></h3>
              </div>
              <div class="card-body">
                <div class="bs-stepper linear">
            
                  <div class="bs-stepper-content">
                    <!-- your steps content here -->
                    <div id="logins-part" class="content active dstepper-block" role="tabpanel" aria-labelledby="logins-part-trigger">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Enter your email <span style="color:red">*</span></label>
                        <input type="email" class="form-control" id="email" placeholder="Enter email address here">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Confirm your email <span style="color:red">*</span></label>
                        <input type="text" class="form-control" id="reemail" placeholder="Re-enter email address here">
                      </div>
                      <button class="btn btn-primary float-right" onclick="stepper.next()">Submit</button>
                    </div>
                    
                  </div>
                </div>
              </div>
              
            </div>
            <!-- /.card -->
          </div>
        </div>
    
    <div class="row">
          <div class="col-md-12">
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title b"><strong>Change My Contact Number</strong></h3>
              </div>
              <div class="card-body">
                <div class="row">
              <div class="col-md-2" data-select2-id="30">
                <div class="form-group" data-select2-id="29">
                  <label>Mobile Number <span style="color:red">*</span> </label>
                  <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    <option selected="selected" data-select2-id="3">Korea (+82)</option>
                    <option data-select2-id="33">Malaysia (+60)</option>
                    <option data-select2-id="34">Country (+50)</option>
                    
                  </select><span class="selection"><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span><span class="dropdown-wrapper" aria-hidden="true"></span>
                </div>
              </div>
                    
                    <div class="col-md-10" data-select2-id="30">
               <div class="form-group" data-brackets-id="1562">
                        <label for="exampleInputEmail1"> <span style="color:white">*</span></label>
                        <input type="email" class="form-control" id="email" placeholder="Enter mobile number here">
                      </div>
              </div>
             
              <!-- /.col -->
            </div>
                  
                  <div class="row">
              <div class="col-md-2" data-select2-id="30">
                <div class="form-group" data-select2-id="29">
                  <label>Phone Number <span style="color:red">*</span> </label>
                  <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
                    <option selected="selected" data-select2-id="3">Korea (+82)</option>
                    <option data-select2-id="33">Malaysia (+60)</option>
                    <option data-select2-id="34">Country (+50)</option>
                    
                  </select><span class="selection"><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span><span class="dropdown-wrapper" aria-hidden="true"></span>
                </div>
              </div>
                    
                    <div class="col-md-10" data-select2-id="30">
               <div class="form-group" data-brackets-id="1562">
                        <label for="exampleInputEmail1"> <span style="color:white">*</span></label>
                        <input type="email" class="form-control" id="email" placeholder="Enter Phone number here">
                      </div>
              </div>
             
              <!-- /.col -->
            </div>
                   <button class="btn btn-primary float-right" onclick="stepper.next()">Submit</button>
              </div>
              
            </div>
            <!-- /.card -->
          </div>
        </div>
    
    
    <div>
    </div>
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <%@include file="inc/footer.jsp"%> 
</body>
</html>
