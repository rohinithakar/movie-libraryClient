<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<%@ page import="edu.sjsu.videolibrary.model.Movie" %>
 
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  } else if (admin.isValid()) { %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Movie</title>
</head>
<body>
<% 
	Movie m = (Movie) session.getAttribute("currentMovie");	
	if (m != null) { 
%>    
<form name="MovieInfoForm" method="post" action="EditMovie">
  <p>Movie Information:</p>
    <label for="movieId">Movie ID:</label> <%= m.getMovieId() %>
    <input type="hidden" name="movieId" id="movieId" value="<%= m.getMovieId()  %>" /> 
    <br>
    <label for="releaseDate">Release Date:</label>  <%= m.getReleaseDate() %>
    <input type="hidden" name="releaseDate" id="releaseDate" value="<%= m.getReleaseDate()  %>" />  
    <br>
  <p><br>    
    <label for="moiveName">Movie Name</label>
    <input type="text" name="moiveName" id="moiveName" value="<%= m.getMovieName() %>"><br>
    <label for="movieBanner">Movie Banner </label>
    <input type="text" name="movieBanner" id="movieBanner" value="<%= m.getMovieBanner() %>"><br>
     <label for="availableCopies">Copies</label>
    <input type="text" name="availableCopies" id="availableCopies" value="<%= m.getAvailableCopies() %>"><br>
    <label for="categoryId">Category:</label>
    <input type="text" name="categoryId" id="categoryId" value="<%= m.getCategoryId() %>"><br>
  </p>
   <input type="submit"  name="act" value="Update"  />  <input type="submit"  name="act" value="Cancel"  />   
</form>
<% }  %>
</body>
</html>
<% } %> 