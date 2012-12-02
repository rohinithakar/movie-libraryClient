<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<%@ page import="edu.sjsu.videolibrary.model.Movie" %>
 <%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
 
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  } 
 else if (admin.isValid()) {  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js"></script>
<title>Edit Movie</title>
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>

<div id="wrapper">
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
		<% 
			Movie m = (Movie) session.getAttribute("currentMovie");	
			if (m != null) { 
		%>    
		<% 
			String msg = request.getParameter("msg");
			if (msg != null) {
				if (msg.equals("error") || msg.equals("false")) {
					out.print("<div class=\"gagal\">Please verify your information</div>");
				} else if (msg.indexOf("true") >= 0) { 
					out.print("<div class=\"sukses\">Movie has been updated</div>");
				}   
			}
		%>
		<h3>Edit Movie</h3>
		
		<form name="CreateMovieForm" method="post" action="EditMovie" onsubmit="return validateCreateMovie()">
 
		  <table width="95%"> 
		  	<tr>
			  	<td>
				  	<label for="movieId">Movie ID:</label> <%= m.getMovieId() %>
				    <input type="hidden" name="movieId" id="movieId" value="<%= m.getMovieId()  %>" /> 
		 		</td>
		 		<td>
		 		    <label for="releaseDate">Release Date:</label>  <%= m.getReleaseDate() %>
				    <input type="hidden" name="releaseDate" id="releaseDate" value="<%= m.getReleaseDate()  %>" />  
			  	</td>
		  	</tr>
   			<tr>
 				 <td width="125px"><b>Name:</b></td>
 				 <td><input type="text" name="moiveName" id="moiveName" value="<%= m.getMovieName() %>"></td>
 			</tr>	
 			<tr>
 				<td width="125px"><b>Movie Banner:</b></td>
 				<td><input type="text" name="movieBanner" id="movieBanner" value="<%= m.getMovieBanner() %>"></td>
 			</tr>
  			<tr>
 				<td width="125px"><b>Copies:</b></td>
 				<td><input type="text" name="availableCopies" id="availableCopies" value="<%= m.getAvailableCopies() %>"></td>
 			</tr>
 			<tr>
 				<td width="125px"><b>Category:</b></td>
 				<td>
 				
 					<select name="categoryId" id="categoryId" >
  					<% 
	  					ServiceProxy proxy = new ServiceProxy(); 
	  					proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
	  					String [] categories = proxy.listCategories();
   						for (int i = 0; i < categories.length; i++) {
  							String sel = ""; 
  							String category = request.getParameter("categoryName");
  							if (category != null) { if (category.equals(categories[i])) { sel = "selected"; } }
  							int catID = i + 1; 
   							out.println("<option value=\"" + catID + "\"" + sel + ">"+  categories[i] +   "</option>");  					
   						} %>       
 		 		</select>
 				</td>
 			</tr>
 			<tr>
 				<td></td>
 				<td>
 				<input type="submit" class="button" name="act" value="Update"  />  <input type="submit" class="button" name="act" value="Cancel"  />
 				</td>
 			</tr>   
		</table>
		</form>

		<% } else { 
			
			
		} %>
	</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	
</div>
</body>
</html>
<% } %> 