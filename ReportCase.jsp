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
	<link href="assets/css/parsley.css" rel="stylesheet">
	<link href="assets/css/font-awesome.css" rel="stylesheet">
	
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
      <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
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
  		</div>
  			<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
		        <ul class="navbar-nav ml-auto">
		        
		            <li class="nav-item">
		            	<i class="fas fa-power-off"></i>
		                <a class="nav-link" href="login.jsp">Logout</a>
		            </li>

		        </ul>
    </div>
		</nav>
		
		
		
    </div>


<div class="wrapper">
	<section id="maincontent" style="background:white">
		    <div class="container">    
				<div class="row" style="background:white"> 
					
		            <!-- Parsley Validation -->
		             		<!-- Form for reporting the case -->
		               <form id="validate_form" action="" method="post" data-parsley-validate>
		                	<h3>File a Complaint Here</h3>
		                <div class="row">
		                		<div class="col-md-4 col-lg-4 col-sm-4">
								  
								  <div class="form-group">
									    <label for="name"> Enter First Name:</label>
									    <input type="text" class="form-control" name="fname" required  data-parsley-pattern="^[a-zA-Z]+$" data-parsley-length="[4, 20]" data-parsley-trigger="keyup">
								  </div>
								  <div class="form-group">
									    <label for="name"> Enter Last Name:</label>
									    <input type="text" class="form-control" name="lname" required  data-parsley-pattern="^[a-zA-Z]+$" data-parsley-trigger="keyup">
								  </div>
								  <div class="form-group">
									    <label for="regno"> Staff Id/ Student RegNo:</label>
									    <input type="text" class="form-control" name="regno" required pattern="[A-Za-z][0-9][0-9][//][0-9]{1,6}[//][1][0-9]">
								  </div>
						</div>		  
		                		<div class="col-md-4 col-lg-4 col-sm-4">
								  	<div class="form-group">
									    <label for="date"> Date of Occurence:</label>
									    <input type="date" class="form-control" name="date" required>
								  </div>
								  	<div class="form-group">
									    <label for="time"> Time of Occurence:</label>
									    <input type="time" class="form-control" name="time" required>
								  </div>
								  <div class="form-group">
									    <label for="place"> Place of Occurence:</label>
									    <select class="form-control" id="place"name="place" onchange='check_place(this.value);'>
 					   			 		<option>FASS</option>
	 					   			 	<option>Fedcos </option>
	 					   			 	<option>NPL</option>
	 					   			 	<option>CBD Hostels</option>
	 					   			 	<option>Library</option>
	 					   			 	<option>Buruburu Hostels</option>
	 					   			 	<option>Maringo Hostels</option>
	 					   			 	<option>Ruwenzori Hostels</option>
	 					   			 	<option>Hollywood Hostels</option>
	 					   			 	<option>Tatton Hostels</option>
	 					   			 	<option>Field (Pavilion)</option>
	 					   			 	
 					   			 	</select>
								  </div>
							</div>
							<div class="col-sm-4 col-lg-4 col-md-4">	
							      <div class="form-group">
									    <label for="category">Category of Crime</label>
									    <select class="form-control" id="category" name="category">
									    	<option>Theft</option>
									    	<option>Assault</option>									    	
									  		<option>Destruction</option>
									  		<option>Sexual Offence</option>
									    </select>
								  </div>
								  <div class="form-group">
									    <label for="nature"> Description:</label>
									    <textarea class="form-control" name="nature" rows="4" cols="75" placeholder="What happened"></textarea>
								  </div>
								<div class="span4">
								  <button type="submit" class="btn btn-primary">Submit</button>
								  </div>
								</div>
							</div>	  
						</form><!-- Report Case form -->
		       
		                
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
  <div class="footer-copyright text-center py-3">© 2019 Copyright:
    <a href="https:egerton.ac.ke">Egerton University</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
</html>