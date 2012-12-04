<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.util.Parameters"%>
<form method="get" action="SearchedMovies">
	<table>
		<tr><td>Search a movie by:</td><td></td></tr>
		<tr><td>Movie Name</td><td><input type="text" name="<%=Parameters.pMovieName%>"></td></tr>
		<tr><td>Movie Banner</td><td><input type="text" name="<%=Parameters.pMovieBanner%>"></td></tr>
		<tr><td>Movie Release Date</td><td><input type="text" name="<%=Parameters.pMovieReleaseDate%>"></td></tr>
		<tr><td><input type="submit" class="submit" value="Search"></td><td></td></tr>
	</table>
</form>