<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
			
			String uname = request.getParameter("uname");
			String pword = request.getParameter("pword");
			
			if(uname.equals("admin") && pword.equals("12345"))
			{
			
			response.sendRedirect("ReportCase.jsp");
			}
			else
			{
			response.sendRedirect("error.html");
			}
			
			%>

</body>
</html>