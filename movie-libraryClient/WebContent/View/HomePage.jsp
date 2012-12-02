<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>
<%@ page import="edu.sjsu.videolibrary.util.Utils"%>
<%@ page import="edu.sjsu.videolibrary.jspHelper.HomePageHelper"%>
<%@ page import="java.util.Map"%>
<%
	if(!Utils.validateLogin(request, response)) {
		return;
	}
%>
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
<jsp:include page="includes/header.jsp"></jsp:include>
<h2>Choose from the following options:</h2>
<jsp:include page="includes/movieSearch.jsp"></jsp:include>
<h3>View Movies By Category</h3>
		<%
			Map<String,String> categories = HomePageHelper.getCategories();
			for(Map.Entry<String,String> category : categories.entrySet()) {
		%>
		<a href="<%=category.getValue()%>"><%=category.getKey()%></a>
		<%	} %>
		<p><a href="ViewMovies">View All Movies</a></p>
</body>
</html>