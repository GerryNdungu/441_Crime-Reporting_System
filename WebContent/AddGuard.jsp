<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Guard form</title>
	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/bootstrap.js" rel="stylesheet">
	<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="assets/css/parsley.css" rel="stylesheet">
	
<!-- Custom CSS -->	
	<link href="assets/css/style.css" rel="stylesheet">
	

</head>

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

    <div class="container">
      <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  		<ul class="navbar-nav">
    		<li class="nav-item active">
     		 	<a class="nav-link" href="OB.jsp">View Cases</a>
    		</li>
    		<li class="nav-item">
    		  <a class="nav-link" href="ReportCase.jsp">Report Cases</a>
   			 </li>
   			 <li class="nav-item">
    		  <a class="nav-link" href="AddGuard.jsp">Add Guard</a>
   			 </li>
    		<li class="nav-item">
    		  <a class="nav-link" href="About.jsp">About</a>
    		</li>
    		<li class="nav-item">
      			<a class="nav-link" href="#">Contact</a>
    		</li>
  		</ul>
		</nav>
		
		
		
    </div>


<div class="wrapper">
	<section id="maincontent" style="background:white">
		    <div class="container">    
				<div class="row" style="background:white"> 
					<div class="col-lg-3 col-md-3 col-sm-3">
					</div>
		            <!-- Parsley Validation -->
		             		<!-- Form for reporting the case -->
		            <div class="col-lg-6 col-sm-6 col-md-6">
		           
		            
		               <form id="validate_form" action="" method="post" data-parsley-validate>
		                	<h3 class="text-center">Register Guard here</h3>
		                
								  <div class="form-group">
									    <label for="regno">Security Staff Id:</label>
									    <input type="text" class="form-control" name="regno" required pattern="[A-Za-z][0-9][0-9][//][0-9]{1,6}[//][1][0-9]">
								  </div>
								  <div class="form-group">
									    <label for="name"> Enter First Name:</label>
									    <input type="text" class="form-control" name="fname" required  data-parsley-pattern="^[a-zA-Z]+$" data-parsley-length="[4, 20]" data-parsley-trigger="keyup">
								  </div> 
								  <div class="form-group">
									    <label for="name"> Enter Last Name:</label>
									    <input type="text" class="form-control" name="lname" required  data-parsley-pattern="^[a-zA-Z]+$" data-parsley-trigger="keyup">
								  </div>
								  <div class="form-group">
									    <label for="name"> Enter Phone No:</label>
									    <input type="text" class="form-control" name="phoneno" required  data-parsley-pattern="^[a-zA-Z]+$" data-parsley-trigger="keyup">
								  </div>
								  &nbsp
								<div class="span4">
								  <button type="submit" class="btn btn-primary">Submit</button>
								  </div>  
		                		  
						</form><!-- Report Case form -->
		        </div>
		                
		   </div>
	</div>
		 
		

		  </section>
		 
		</div>
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
<script >

	$(document).ready(function(){
  	$('#validate_form').parsley();
	});
	</script>
  	<script src="assets/js/jquery.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/bootstrap.js"></script>
 	<script src="assets/js/bootstrap.min.js"></script>
  	
  	<script src="assets/js/parsley.min.js"></script>
   
</body>
<footer class="page-footer font-small black">
<hr>
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3"><kbd>© 2019 Copyright:</kbd>
    <a href="https:egerton.ac.ke">Egerton University</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
</html>