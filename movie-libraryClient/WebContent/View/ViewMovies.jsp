<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import=" edu.sjsu.videolibrary.model.Movie"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Movies</title>
</head>
<body>
<form>
<table border='1'>
	<tr>
		<td>Serial no.</td><td>Movie Name</td><td>Movie Banner</td><td>Release Date</td><td>Available Copies</td><td></td>
	</tr>
	<%
		Movie[] movieArray=null;
		movieArray=(Movie[])session.getAttribute("movieArray");
		int len=movieArray.length;
		Movie movie = new Movie();
		for(int i=0;i<len;i++){
			movie=movieArray[i];
			if(movie.getAvailableCopies()!=0){
				%>
				<tr>
					<td><% out.print(i+1); %></td>
					<td><% out.print(movie.getMovieName()); %></td>
					<td><% out.print(movie.getMovieBanner()); %></td>
					<td><% out.print(movie.getReleaseDate()); %></td>
					<td><% out.print(movie.getAvailableCopies()); %></td>
					<td><input class="submit" type="submit" name="AddToCart" value="Add to Cart"></td>
				</tr>				
		<%}
		}
	%>
</table>
</form>
</body>
</html>