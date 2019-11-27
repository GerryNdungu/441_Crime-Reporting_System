<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javazack.models.Guard"%>
    
 
  
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Guard</title>
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
    		<li class="nav-item ">
     		 	<a class="nav-link" href="CSO_Display?page=1">Recorded Cases</a>
    		</li>
    		
   			 <li class="nav-item">
    		  <a class="nav-link" href="Addguard.jsp">Add Guard</a>
   			 </li>
   			 
   			  <li class="nav-item active">
    		  <a class="nav-link" href="#">Guards Data</a>
   			 </li>
    		
  		</ul>
		</nav>



    </div>


<div class="wrapper">
	<section id="maincontent" style="background:white">
		    <div class="container">    
<div class="container">
      <div class="row">
        <div class="span12">

        </div>
       
      </div>
    </div>
    </section>
   

  </section>
    <h2 class="text-center"><strong><span class="highlight primary">Investigation Guards</span></strong></h2>
  
 <!-- To display table with contents --> 
<div class="row">
		
			<div class="container">	
					
			          			<table class="table table-hover">
								  <thead class="thead-dark">
								    <tr>
								      <th scope="col">#</th>
								       <th scope="col">FName</th>
								      <th scope="col">LName</th>
								      <th scope="col">ID</th>
								      <th scope="col">Phone_No</th>
								     
								    </tr>
								  </thead>
		<!-- To fetch cases from DB -->	
		
		<%
						List<javazack.models.Guard> list = (ArrayList<javazack.models.Guard>)request.getSession().getAttribute("display");
							
							
							 for (javazack.models.Guard guard:list) {
					%>					  
					
							 <tbody>
								    <tr>
									<td><%=guard.getNumber() %></td>
								   	<td><%=guard.getFname() %></td>
								    <td><%=guard.getLname()%></td>
								    <td><%=guard.getId() %></td>
								    <td><%=guard.getPhoneno() %></td>
								    
								
								   
							
								    </tr>
							</tbody>
							
						<%} 
						
						%>
							</table>
				
				  <nav aria-label="Page navigation example">
					  <ul class="pagination">
					    
					    <li class="page-item"><a class="page-link" href="GuardsDisplay?page=1">1</a></li>
					    <li class="page-item"><a class="page-link" href="GuardsDisplay?page=2">2</a></li>
					    <li class="page-item"><a class="page-link" href="GuardsDisplay?page=3">3</a></li>
					    <li class="page-item"><a class="page-link" href="GuardsDisplay?page=4">4</a></li>
					    <li class="page-item"><a class="page-link" href="GuardsDisplay?page=5">5</a></li>
					    <li class="page-item"><a class="page-link" href="GuardsDisplay?page=5">6</a></li>
					    <li class="page-item"><a class="page-link" href="GuardsDisplay?page=5">7</a></li>
					    <li class="page-item"><a class="page-link" href="GuardsDisplay?page=5">8</a></li>
					    <li class="page-item"><a class="page-link" href="GuardsDisplay?page=5">9</a></li>
					    <li class="page-item"><a class="page-link" href="GuardsDisplay?page=5">10</a></li>
					   
					  </ul>
					</nav>
				
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
