<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javazack.models.DataModel"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CSO</title>
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
    		<li class="nav-item active">
     		 	<a class="nav-link" href="CSO_Display?page=1">Recorded Cases</a>
    		</li>
    		
   			 <li class="nav-item">
    		  <a class="nav-link" href="Addguard.jsp">Add Guard</a>
   			 </li>
   			 
   			  <li class="nav-item">
    		  <a class="nav-link" href="GuardsDisplay?page=1"> Investigation Guards</a>
   			 </li>
    		
</nav>
<section>

    <div class="container">
      <div class="row">
        <div class="span12">

        </div>
       
      </div>
    </div>
    </section>
   

  </section>
    <h2 class="text-center"><strong><span class="highlight primary">Cases Submitted</span></strong></h2>
  
 <!-- To display table with contents --> 
 
 
		
<div class="container">
		
			
					
			          			<table class="table table-hover">
								  <thead class="thead-dark">
								    <tr>
								      <th scope="col">#</th>
								        <th scope="col">FName</th>
								      <th scope="col">LName</th>
								      <th scope="col">StaffID/RegNo</th>
								      <th scope="col">Date</th>
								      <th scope="col">Time</th>
								      <th scope="col">Place</th>
								       <th scope="col">Case Category</th>
								      <th scope="col">Description</th>
								      <th scope="col">Time Reported</th>
								      <th scope="col">Time Updated</th>
								       <th scope="col">Status</th>
								      	 <th></th>
								        <th scope="col">Guard Assigned</th>
								     
								     
								    </tr>
								  </thead>
		<!-- To fetch cases from DB -->	
		
		<%
		
		List<DataModel> list = (ArrayList<DataModel>)request.getSession().getAttribute("all_data");
		
		
		 for (DataModel dataModel:list) {
		%>					  
					
							 <tbody>
								    <tr>
								    <th><%=dataModel.getId() %></th>
								   
								   	<td><%=dataModel.getFname() %></td>
								    <td><%=dataModel.getLname()%></td>
								    <td><%=dataModel.getRegno() %></td>
								    <td><%=dataModel.getDate_of_occurance() %></td>
								    <td><%=dataModel.getTime_of_occurance()%></td>
								    <td><%=dataModel.getPlace_of_occurance() %></td>
								    <td><%=dataModel.getCategory() %></td>
								    <td><%=dataModel.getOccurance()%></td>
								    <td><%=dataModel.getDate_reported()%></td>
								    <td><%=dataModel.getUpdated_at()%></td>
								    <%
								    if(dataModel.isStatus()==true){
								
								    %>
								  <td style="color:green">active</td>
								    
								   <%
								    }
								   else{
								   %>
								     <td style="color:red">pending</td>
							<%} %>
								
								     <td><a href="CSO_IndividualCase?id=<%=dataModel.getId() %>" class="btn btn-primary">View</a></td>
								   
								   
								   
								<td><%=dataModel.getAssignedGuard()%></td>
								    </tr>
							</tbody>
							
						<%} 
						session.invalidate();
						%>
							</table>
				
				  <nav aria-label="Page navigation example">
					  <ul class="pagination">
					    
					    <li class="page-item"><a class="page-link" href="CSO_Display?page=1">1</a></li>
					    <li class="page-item"><a class="page-link" href="CSO_Display?page=2">2</a></li>
					    <li class="page-item"><a class="page-link" href="CSO_Display?page=3">3</a></li>
					    <li class="page-item"><a class="page-link" href="CSO_Display?page=4">4</a></li>
					    <li class="page-item"><a class="page-link" href="CSO_Display?page=5">5</a></li>
					    <li class="page-item"><a class="page-link" href="CSO_Display?page=5">6</a></li>
					    <li class="page-item"><a class="page-link" href="CSO_Display?page=5">7</a></li>
					    <li class="page-item"><a class="page-link" href="CSO_Display?page=5">8</a></li>
					    <li class="page-item"><a class="page-link" href="CSO_Display?page=5">9</a></li>
					    <li class="page-item"><a class="page-link" href="CSO_Display?page=5">10</a></li>
					   
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
  <script src="assets/js/jquery.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/bootstrap.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
 </div>  

</body>

</html>
</html>