<%@page import="edu.sjsu.videolibrary.util.ClientConfig"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import=" edu.sjsu.videolibrary.model.Movie"%>
<%@ page import=" edu.sjsu.videolibrary.jspHelper.ViewMoviesHelper"%>
<%@ page import="edu.sjsu.videolibrary.util.UtilsClient"%>
 <%
  	if(!UtilsClient.validateLogin(request, response)) {
  		return;
  	}
 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Movies</title>
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<%
		Movie[] movies = ViewMoviesHelper.getMovies(request, response);
		int count = 1;
		if (movies != null) {
	%>
	<table border='1'>
		<tr>
			<td>Serial no.</td>
			<td>Movie Name</td>
			<td>Movie Banner</td>
			<td>Release Date</td>
			<td>Available Copies</td>
			<td></td>
		</tr>
		<%
			for (Movie movie : movies) {
					if (movie.getAvailableCopies() != 0) {
		%>
		<tr>
			<td>
				<%
					out.print(count++);
				%>
			</td>
			<td>
				<%
					out.print(movie.getMovieName());
				%>
			</td>
			<td>
				<%
					out.print(movie.getMovieBanner());
				%>
			</td>
			<td>
				<%
					out.print(movie.getReleaseDate());
				%>
			</td>
			<td>
				<%
					out.print(movie.getAvailableCopies());
				%>
			</td>
			<td>
			<form action="AddToCartServlet" method="post">
					<input type="hidden" name="movieId" value="<%=movie.getMovieId()%>"/>
					<input class="submit" type="submit"	value="Add to Cart">
				</form></td>
		</tr>
		<%
			}
				}
		%>
	</table>
	<%
		String[] pageLinks = ViewMoviesHelper.getPageLinks(ClientConfig.VIEW_MOVIES,request, response);
			if (pageLinks[0] != null) {
				out.print("<a href=\"" + pageLinks[0] + "\"> Prev</a>");

			}
			if (pageLinks[1] != null) {
				out.print("<a href=\"" + pageLinks[1] + "\"> Next</a>");

			}
		} else {
			out.print("No Movies found in Databsae");
		}
	%>
</body>
</html>