<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import ="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guards list</title>
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
    <h2 class="text-center"><strong><span class="highlight primary">List of Guards</span></strong></h2>
  
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
								      <th scope="col">Staff ID.</th>
								      <th scope="col">First Name</th>
								      <th scope="col">Last Name</th>
								      <th scope="col">Phone No.</th>
								    </tr>
								  </thead>
		<!-- To fetch cases from DB -->						  
					<%
					 try{
						 
						 String url="jdbc:mysql://localhost:3306/";
							String username="root";
							String password="";
							
							
							Connection conn=null;
							Statement stmt=null;
							ResultSet res=null;
							
							Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
							 conn=DriverManager.getConnection(url,username,password);
							stmt=conn.createStatement();

							String	data="SELECT * from guards ";
								
							
							
							res=stmt.executeQuery(data);
							
							while(res.next()==true ){
						 
					 
					 
					  %>
							 <tbody>
								    <tr>
								    <td><%=res.getString(1) %></td>
								   	<td><%=res.getString(2) %></td>
								   	<td><%=res.getString(3) %></td>
								    <td><%=res.getString(4) %></td>
								    <td><%=res.getString(5) %></td>
								    </tr>
								 </tbody>
								  <%
						}
						}catch(Exception ex){
							%>
							<p><kbd>Error loading results!!</kbd></p>
						<%}finally{
							
						}
					  
					  %> 
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