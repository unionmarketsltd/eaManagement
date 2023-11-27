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
          <!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content"><!-- /.container-fluid -->
    
    <div class="row">
                        <div class="col-md-12">
                            <div class="card card-primary card-outline">
                                <div class="card-header">
                                    <h5 class="m-0">METATRADER 5 (MT5)</h5>
                                </div>
                                <div class="card-body">


                                    <p class="card-text "><strong>A powerful platform for Forex and Exchange markets</strong></p>
                                    

                                    
                                    <a href="#" class="btn btn-primary float-right"><i class="fa fa-download" aria-hidden="true"></i> Download MT5 Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <%@include file="inc/footer.jsp"%> 
</body>
</html>
