<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="s" uri="/struts-tags"%>




<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>



<%@ taglib prefix="sjdt" uri="/struts-jquery-datatables-tags"%>
<!DOCTYPE html>
<html lang="en">
	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>Touristical Monuments &mdash; Project Made By GI2 Students</title>
    <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/css/bootstrap/bootstrap.css");%> />
    <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/css/animate.css");%> />
    <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/fonts/ionicons/css/ionicons.min.css");%> />
    <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/css/owl.carousel.min.css");%> />
    <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/fonts/flaticon/font/flaticon.css");%> />
        <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/css/bootstrap-datepicker.css");%> />
        <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/css/select2.css");%> />
     <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/css/helpers.css");%> />
     <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/css/style.css");%> />
            <link rel="stylesheet" type="text/css" media="screen,projection,print" href=<%out.print(request.getContextPath() + "/assets/fonts/ionicons/css/ionicons.min.css");%> />
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,700" rel="stylesheet">
<sb:head/>
	</head>
	<body >
  	<s:actionerror theme="bootstrap"/>
    <s:actionmessage theme="bootstrap"/>
    <s:fielderror theme="bootstrap"/>

    <nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
      <div class="container">
        <a class="navbar-brand" href="/">Touristical Monuments</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
          <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>

            <li class="nav-item"><a class="nav-link" href="">About Us</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->
    

    <section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('assets/images/bg_1.jpg');" data-stellar-background-ratio="0.5"  id="section-home">
      <div class="overlay"></div>
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md">
         
            <s:form action="register" method="post" class="probootstrap-form probootstrap-form-box mb60">
              
              
                <div class=""><h1>Register :</h1></div>
                <div class="">

                <div class="">
                  <div class="form-group">
                    <label for="fname" class="sr-only sr-only-focusable">First Name</label>
                    <s:textfield class="form-control" id="fname" name="user.first_name" placeholder="First Name"/>
                  </div>
                </div>
                <div class="">
                  <div class="form-group">
                    <label for="lname" class="sr-only sr-only-focusable">Last Name</label>
                    <s:textfield type="text" class="form-control" id="lname" name="user.last_name" placeholder="Last Name"/>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="username" class="sr-only sr-only-focusable">Username</label>
                <s:textfield type="text" class="form-control" id="username" name="user.login" placeholder="Username"/>
              </div>
              <div class="form-group">
                  <label for="password" class="sr-only sr-only-focusable">Password</label>
                  <s:password type="password" class="form-control" id="password" name="user.password" placeholder="Password"/>
                </div>
              <div class="form-group">
                <s:submit type="submit" class="btn btn-primary" id="submit" name="submit" value="Register"/>
              </div>
            </s:form>
          </div> 
          <div class="col-md ">
            <s:form action="authentifier" method="post" class="probootstrap-form probootstrap-form-box mb60">
       
              <div class="row ">         <h1>Login :</h1></div>
              <div class="row mb-3">
              
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="fname" class="sr-only sr-only-focusable">Username</label>
                    <s:textfield type="text" class="form-control" id="username" name="user1.login" placeholder="Username"/>
                  </div> 
                </div>
          
              </div>
              <div class="form-group">
                <label for="email" class="sr-only sr-only-focusable">password</label>
                <s:password type="password" class="form-control" id="password" name="user1.password" placeholder="password" required="required"/>
              </div>
   
              <div class="form-group">
                <s:submit  class="btn btn-primary" id="submit" name="submit" value="Log In"/>
              </div>
            </s:form>
          </div>
        </div>
      </div>
      
    </section>
    <!-- END section -->
    

    <!-- Latest compiled and minified CSS -->

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="../assets/js/jquery.min.js"></script>
    
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/owl.carousel.min.js"></script>

    <script src="../assets/js/bootstrap-datepicker.js"></script>
    <script src="../assets/js/jquery.waypoints.min.js"></script>
    <script src="../assets/js/jquery.easing.1.3.js"></script>

    <script src="../assets/js/select2.min.js"></script>

    <script src="../assets/js/main.js"></script>
	</body>
</html>