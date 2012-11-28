<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<style type="text/css">
body{
	text-align: left;
}
</style>
</head>
<body>
<h2>Choose from the following options:</h2>
<form method="get" action="HomePage">
<table>
	<tr><td>Search a movie by:</td><td></td></tr>
	<tr><td>Movie Name</td><td><input type="text" name="movieName"></td></tr>
	<tr><td>Movie Banner</td><td><input type="text" name="movieBanner"></td></tr>
	<tr><td>Movie Release Date</td><td><input type="text" name="releaseDate"></td></tr>
	<tr><td><input type="submit" class="submit" name="search" value="Search"></td><td></td></tr>
</table>
<table>
	
	<tr>
		<td>View Movies By Category</td>
		<% 
			String[] categoryName = (String[])session.getAttribute("categoryName");
			for(int i=0;i<categoryName.length;i++){		
		%>
		<td><input type="radio" name="category" value="<%=categoryName[i]%>"><% out.print(categoryName[i]); %></td>
		<%} %>
	</tr>
	<tr>
		<td></td><td></td><td><input type="submit" class="submit" name="ViewByCategory" value="View"></td>
	</tr>
	<tr>
		<td>View All Movies</td>
		<td><input class="submit" type="submit" name="ViewAll" value="View"></td>
	</tr>
</table>

</form>
</body>
</html>