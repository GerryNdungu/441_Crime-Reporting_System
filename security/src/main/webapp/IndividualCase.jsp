<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="javazack.models.DataModel"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javazack.models.Guard"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IndividualCase</title>
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
	<section id="navs">

    <div class="container">
      <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  		<ul class="navbar-nav">
  			<li class="nav-item ">
     		 	<a class="nav-link" href="CSO_Display?page=1">Recorded Cases</a>
    		</li>
    		
   			 <li class="nav-item">
    		  <a class="nav-link" href="Addguard.jsp">Add Guard</a>
   			 </li>
   			 
   			  <li class="nav-item">
    		  <a class="nav-link" href="GuardsDisplay?page=1"> Investigation Guards</a>
   			 </li>
   			 <li class="nav-item active">
    		  <a class="nav-link" href="#"> Individual Case</a>
   			 </li>
  		</ul>
		</nav>
		</div>
	
		<br>
		
		</hr>
		
		  <%
			DataModel individual_case=(DataModel)session.getAttribute("individual_case"); 
								  					  
		 %>
		
		<div class="row">
		
		<div class= "col-10 offset-1">
		<table class="table table-hover">
								  <thead class="thead-dark">
								    <tr>
								    <th scope="col">#</th>
								      <th scope="col"> Name</th>
								   
								      <th scope="col">Regno</th>
								      <th scope="col">Date</th>	
								      <th scope="col">Time</th>
								      <th scope="col">Place</th>
								      <th scope="col">Nature</th>
								      <th scope="col">Category</th>
								      <th scope="col">Date Reported</th>
								     
								    </tr>
								  </thead>
								  
								  <tbody>
								    <th scope="row"><%=individual_case.getId() %></th>
  
								      <td><%=individual_case.getFname()+ " "+individual_case.getLname() %></td>
								      
								      <td><%=individual_case.getRegno() %></td> 
								      <td><%=individual_case.getDate_of_occurance() %></td>
								      <td><%=individual_case.getTime_of_occurance() %></td>
								      <td><%=individual_case.getPlace_of_occurance() %></td>
								      <td><%=individual_case.getOccurance()%></td>
								      <td><%=individual_case.getCategory() %></td>
								      <td><%=individual_case.getDate_reported() %></td>
						
							
								    </tbody>
		</table>
		
		</div>
		
		
		
		
		
		</div>
		
		
		<div class="row">
		
		<div class= "col-10 offset-1">
		
		<div class="jumbotron">
		
		<div class="row">
		<div class="col-md-4">
		<h5>Select a guard<h5>
	
		</div>

		<form action="CaseHandling" Method="post">
		<div class="col-md-4">
		
		<select name="selected_guard">
		
		  <option selected disabled>----- select guard ----</option>
		<%
		ArrayList<javazack.models.Guard> list = (ArrayList<javazack.models.Guard>)request.getSession().getAttribute("guards_from_db");
	       for(Guard guard: list){
			%>				
				
				<option value="<%=guard.getFname()+"  "+guard.getLname() %>"><%=guard.getFname()+"  "+guard.getLname()%></option>
	 	     
		    	<%} %>
		</select>
		
		
		<input style="margin-top:20px;" type="submit" class="btn  btn-primary" Value="Assign Guard">
	
		</div>
		
		<div class="col-md-4">
		 

		</div>
		
		</form>
		
		
		</div>
	
		<div>
		
		
		
		</div>
		
		
		
		</div>
		
		</div>
		
		
		
		
		
		
		
		</div>
		
		</div>
		
		
		
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
 
  <!-- Copyright -->

</footer>
<!-- Footer -->
</html>