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
<title>View Movies</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">

</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>

<div id="wrapper">
<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
	<h3>View Movies</h3>
	<p></p>
	<%
		String msg = request.getParameter("msg");
		if (msg != null) {
			if (msg.equals("false deleted")) {
				out.print("<div class=\"gagal\">Movie can not be deleted</div>");
			} else if (msg.equals("true deleted")) { 
				out.print("<div class=\"sukses\">Movie has been deleted</div>");
			}   
		}
	%>
	
	<form name="form" id="viewMoviesForm" method="get" action="ViewMovies.jsp">
		<table width="95%">
			<% 
				String category = request.getParameter("category");
				ServiceProxy proxy = new ServiceProxy(); 
				proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
				String [] categories = proxy.listCategories();	
				Movie [] movies; 
			%>
		
			<tr><td width="125px"><b>By Category</b></td><td>
  				<select name="category" id="categorySelectBox" >
  					<option value="All">All</option>
  					<% for (int i = 0; i < categories.length; i++) {
  						String sel = ""; 
  						if (category != null) { if (category.equals(categories[i])) { sel = "selected"; } }
   						out.println("<option value=\"" + categories[i] + "\"" + sel + ">"+  categories[i] +   "</option>");
  					} %>       
 		 		</select>
 			 </td></tr>
  			<tr><td></td><td>
  				<input type="submit" class="button" value="Submit">
  			</td></tr>
  		</table>
	</form>
	<% if (category != null) { 
		if (category.equals("All")) {
			movies = proxy.listAllMovies();
		} else { 
			movies = proxy.listMoviesByCategory(category);
		}
	%>
	<table class="data">
			<tr class="data">
				<th class="data" width="30">ID</th>
				<th class="data">Name</th>
				<th class="data">Banner</th>
 				<th class="data">Available Copies</th>
				<th class="data">Release Date</th>
				<th class="data">Action</th>
			</tr>
			
			<% 
			if (movies.length > 0) {
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
				out.print("No movies Try another!"); 
			}		
			%>
	</table>
	<% } %>
		 
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>
<%  }  %> 
