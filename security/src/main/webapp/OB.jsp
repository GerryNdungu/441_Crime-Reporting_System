<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javazack.models.DataModel"%>
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
  
   <li class="nav-item">
      <a class="nav-link" href="ReportCase.jsp">Record Case</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="OB.jsp">Currently Saved Record</a>
    </li>
   
   <li class="nav-item">
    		  <a class="nav-link" href="Display?page=1">Recorded Cases</a>
    		</li>
    
  </ul>
</nav>
<section>

    <div class="container">
      <div class="row">
        <div class="span12">
          
	<%
String message=(String)request.getAttribute("message");
DataModel data=(DataModel)request.getAttribute("from_db");


if(session.getAttribute("case_session")==null){
	%>
	<div class="alert alert-danger">  
    <strong>Report First</strong> 
  </div> 
  
<%} 
	

else{
%>



<div class="alert alert-success">  
    <strong>Success!</strong> <%=message %> 
  </div>  

<div class="row">

	
    <div class="col-8">
    
    

<table class="table">
  <thead class="thead-light">
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
   
      <th></th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
    
      <th scope="row"><%=data.getId() %></th>
  
      <td><%=data.getFname()+ " "+data.getLname() %></td>
      
      <td><%=data.getRegno() %></td> 
      <td><%=data.getDate_of_occurance() %></td>
      <td><%=data.getTime_of_occurance() %></td>
      <td><%=data.getPlace_of_occurance() %></td>
      <td><%=data.getOccurance()%></td>
      <td><%=data.getCategory() %></td>
      <td><%=data.getDate_reported() %></td>
      
     
      
    </tr>
  </tbody>
</table>
 <%} 
session.removeAttribute("case_session");
 %>
          
          

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