<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
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
<div class="container" style="background: url(assets/Gate.jpg);background-repeat: no-repeat">
<div class="login">
	<form class="form-signin" method="post" action="OB.jsp">
		<h3 class="form-signin-heading text-center">Login</h3>
		<label for="name"> Enter Staff ID:</label>
		 <input type="text" class="form-control" name="username" placeholder="Staff ID"
		 	required/>
		 <label for="name"> Enter password:</label>	
		 <input type="password" class="form-control" name="password" placeholder="password"
		 	required/>
		 <label class="checkbox">
		 	<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe">
		 	Remember Me
		 </label>
		 <button class="btn btn-lg btn-primary btn-block">Login</button>	
	</form>
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