<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guard View</title>
	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/bootstrap.js" rel="stylesheet">
	<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
	
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
	<section id="navs">

    <div class="container">
      <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
 		 <ul class="navbar-nav">
   
    		 
    		<li class="nav-item">
		        <a class="nav-link" href="guardView.jsp">
		          Cases Assigned
		        </a>
		        
		      </li>

   			 <li class="nav-item">
		        <a class="nav-link"  href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Profile
		        </a>
		      </li>
		     
  			</ul>
  			<ul class="nav navbar-nav navbar-right">
  			<li class="nav-item">
		      	<a class="nav-link" href="login.jsp">Logout</a>
		      </li>
		      </ul>
</nav>
<section>

    <div class="container">
      <div class="row">
        <div class="span12">

        </div>
       
      </div>
    </div>
    </section>
    </div>

  </section>
    <h2 class="text-center"><strong><span class="highlight primary">Cases Assigned</span></strong></h2>
  
 <!-- To display table with contents --> 
<div class="row">
		<div class="col-lg-2">
		</div>
				<div class="col-lg-10">
					<div class="col-lg-10">
			          			<table class="table table-hover">
								  <thead class="thead-dark">
								    <tr>
								      <th scope="col">#</th>
								      <th scope="col">Case Category</th>
								      <th scope="col">Name</th>
								      <th scope="col">StaffID/RegNo</th>
								      <th scope="col">Date</th>
								      <th scope="col">Time</th>
								      <th scope="col">Place</th>
								      <th scope="col">Description</th>
								      <th scope="col">Time Reported</th>
								      <th scope="col">Status Handle</th>
								    </tr>
								  </thead>
		<!-- To fetch cases from DB -->						  
					<%
					 %>
							 <tbody>
								    <tr>
								    <td><%=res %></td>
								   	<td><%=res %></td>
								   	<td><%=res %></td>
								    <td><%=res %></td>
								    <td><%=res %></td>
								    <td><%=res %></td>
								    <td><%=res %></td>
								    <td><%=res %></td>
								    <td><%=res %></td>
					<!-- Add backend parameters here -->			    
								    
				<!-- edit this -->				    <td><a href="Case?id=<%= %>" class="btn btn-primary">Handle</a></td>
							
								    </tr>
								 </tbody>
								  
							</table>
				</div>
			</div>
	
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
  <script src="assets/js/jquery.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  
</body>

</html>