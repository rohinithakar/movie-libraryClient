<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<%@ page import="edu.sjsu.videolibrary.model.Movie" %>
 
<%
Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { 
%> <jsp:forward page="LogIn.jsp" /> 
<%  }
// TODO: isValid not found
/*else if (admin.isValid()) { */%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Movie</title>
</head>
<body>
<form name="CreateMovieInfoForm" method="post" action="CreateMovie">
  <p>Movie Information:</p>
    <br>
    <label for="releaseDate">Release Date:</label>  
    <input type="text" name="releaseDate" id="releaseDate" value="YYYY-MM-DD"><br>
    <br>
  <p><br>    
    <label for="moiveName">Movie Name</label>
    <input type="text" name="moiveName" id="moiveName" value=""><br>
    <label for="movieBanner">Movie Banner </label>
    <input type="text" name="movieBanner" id="movieBanner" value=""><br>
     <label for="availableCopies">Copies</label>
    <input type="text" name="availableCopies" id="availableCopies" value=""><br>
    <label for="categoryId">Category:</label>
    <input type="text" name="categoryId" id="categoryId" value=""><br>
  </p>
   <input type="submit"  name="act" value="Create"  />  <input type="submit"  name="act" value="Cancel"  />   
</form>
</body>
</html>
<% /*}*/ %> 