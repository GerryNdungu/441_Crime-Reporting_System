<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report Form</title>
	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/bootstrap.js" rel="stylesheet">
	<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
	
<!-- Custom CSS -->	
	<link href="assets/css/style.css" rel="stylesheet">
	

</head>
<style>
	.d-flex{
		margin-top :400px;
	}
	.my-flex-container{
		border:2px solid green;
		height: 100px;
		margin-bottom: 20px;
	}
	.my-flex-container-column{
		border:2px solid green;
		height: 100px;
		margin-bottom: 20px;
	}	
	.my-flex-item{
		border:2px solid green;
		height: 100px;
		background-color: lightgrey;		
	}
</style>
<body>
<div class="container-full">
<div class="header">
	<header>
		<div id="headr">
			EGERTON UNIVERSITY SECURITY DEPARTMENT
			<br>
			Crime Reporting System
		</div>
	</header>
	</div>
	


	<!-- To display contents -->
	<section id="navs">

    <div class="container">
      <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Cases
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
		          <a class="dropdown-item" href="OB.jsp">View Cases</a>
		          <a class="dropdown-item" href="ReportCase.jsp">Report a Case</a>
		        </div>
		      </li>

   			 <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Guards
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
		          <a class="dropdown-item" href="Guards.jsp">List of Guards</a>
		          <a class="dropdown-item" href="AddGuard.jsp">Add New Guard</a>
		        </div>
		      </li>	
    		<li class="nav-item">
    		  <a class="nav-link" href="About.jsp">About</a>
    		</li>
    		<li class="nav-item">
      			<a class="nav-link" href="#">Contact</a>
    </li>
  </ul>
</nav>
<section>

    <div class="container">
      <div class="row">
        <div class="span12">
          <h2><strong><span class="highlight primary">Security Department</span></strong></h2>
          <p class="lead">
            The department of security is a 24 hour, 365 - day service oriented department with the 
            mission of providing a safe and secure environment to
             all members of the University community.</p>
          <ul class="list list-ok strong bigger">
            <li>Security for all members of the university and neighbouring community </li>
            <li>Reliable and effective service for our students and staff</li>
        
          </ul>

        </div>
       
      </div>
    </div>
    </section>
    </div>

  </section>

	
</div>	
<script>window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 10 || document.documentElement.scrollTop > 10) {
    document.getElementById("headr").style.fontSize = "35px";
  } else {
    document.getElementById("headr").style.fontSize = "40px";
  }
}
</script>
  <script src="assets/js/jquery.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  
</body>

</html>