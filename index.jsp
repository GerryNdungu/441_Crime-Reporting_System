<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
 background-color: lightgrey;
 margin: 0;
 padding:0;
 background-size: cover;
 
}
h1{
    text-align: center;
 	font-size: 130%;
 	color: lightgrey;
 	}
.format{
  position: static;
  text-align: center;
  font-size: 100%
  top: 50%;
  left: 50%;
  width:10;
  height:50;
  padding:80px 60px;
  box-sizing: border-box;
  background: black;
  color: lightgrey;
}
.format input[type="submit"]{
		height: 40px;
 		color: black;
 		border-radius: 20px;		
}

</style>

</head>
<body>
<div class="format">
 		
 		<img src="logo.png" class="user">
 		
 		 <h1>EGERTON SECURITY DEPARTMENT<br>Log in</h1>
 		 
    <form action="login.java" method="post" >
    		
    
        Enter user name: <input type="text" name="uname" placeholder="Enter Username" required><br><br>
        Enter password: <input type="text" name="pword" placeholder="*************" required><br><br>
        
        <input type ="submit" value="Sign-in">
        
    </form>
    </div>
   


</body>
</html>