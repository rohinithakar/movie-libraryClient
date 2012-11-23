<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  }
//TODO: isValid not found
/*else if (admin.isValid()) { */%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Movies</title>
</head>
<body>
<form name="form" id="viewMoviesForm" method="post" action="ViewMovies">
	<label>By Category </label>

  <select name="category" id="categorySelectBox" >
    <option value="all">All</option>
    <option value="1">Drama</option>
    <option value="2">Romance</option>
 	<option value="3">Comedy</option>  
  	<option value="4">Thriller</option>       
  </select>
  <br>
  <input type="submit" name="buttonView" id="buttonView" value="Submit">
</form> 

</body>
</html>
<% /*}*/ %> 
