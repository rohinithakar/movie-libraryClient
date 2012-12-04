<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<form method="get" action="SearchMovieServlet">
	<table>
		<tr><td>Search a movie by:</td><td></td></tr>
		<tr><td>Movie Name</td><td><input type="text" name="movieName"></td></tr>
		<tr><td>Movie Banner</td><td><input type="text" name="movieBanner"></td></tr>
		<tr><td>Movie Release Date</td><td><input type="text" name="releaseDate"></td></tr>
		<tr><td><input type="submit" class="submit" name="search" value="Search"></td><td></td></tr>
	</table>
</form>