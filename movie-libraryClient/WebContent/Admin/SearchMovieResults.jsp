<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
<%@ page import="edu.sjsu.videolibrary.model.Movie" %>

<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  } else if (admin.isValid()) { %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Members</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>	
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
		<h3>Search Movie</h3>
 
 
		<% 
		
  		Movie movies [] = (Movie[]) session.getAttribute("movieArray");	
 
 		%>
				<% if (movies != null) { %>
				<table class="data">
				<tr class="data">
					<th class="data" width="30">ID</th>
					<th class="data">Movie Name</th>
					<th class="data">Movie Banner</th>
	 				<th class="data">Available Copies</th>
	 				<th class="data">Release Date</th>
	 				<th class="data">Action</th>
				</tr>
				<% 
					for (int i = 0; i < movies.length; i++) { 
						Movie m = movies[i]; 
						out.print("<tr class=\"data\"><td>" + m.getMovieId() + "</td><td>" + m.getMovieName() + "</td><td>"  + m.getMovieBanner() + "</td><td>" 
								  + m.getAvailableCopies() + "</td><td>" + m.getReleaseDate() + "</td>" );
						out.print("<td><form name=\"movieForm" + i + "\" method=\"post\" action=\"EditMovie\">"); 
						out.print("<input type=\"hidden\" name=\"id\" value="+ m.getMovieId() + ">");
						out.print("<input type=\"hidden\" name=\"categoryName\" value="+ m.getCategoryName() + ">"); 
						out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
						out.print("</form></td></tr>");
					}
				} else { 
					out.print("<p>No movies Try another search!</p>"); 
				}		
				%>
		</table>
		<a href="SearchMovie.jsp" class="button">Search Again</a>
 		
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
<% }  %> 
