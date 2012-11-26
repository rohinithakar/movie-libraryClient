<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  } else if (admin.isValid()) { %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>


<h1> Home </h1>
<h2>Members/Admin</h2>
<ul>
  <li><a href="ViewMembers.jsp">View Members</a></li>
  <li><a href="CreateAdmin.jsp">Create Admin</a></li>
  <li><a href="#">Search</a></li>
</ul>
<h2>Movies</h2>
<ul>
  <li><a href="ViewMovies.jsp">View</a></li>
  <li><a href="CreateMovie.jsp">Create</a></li>
  <li><a href="#">Search</a></li>
</ul>
 
<p><a href="#">Sign Out</a></p>
</body>

</body>
</html>
<% } %> 