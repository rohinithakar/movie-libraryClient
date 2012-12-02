<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>
<%@ page import="edu.sjsu.videolibrary.util.Utils"%>
<%@ page import="edu.sjsu.videolibrary.jspHelper.HomePageHelper"%>
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
<h2>Choose from the following options:</h2>
<jsp:include page="movieSearch.jsp"></jsp:include>
<h3>View Movies By Category</h3>
		<%
			String[] categories = HomePageHelper.getCategories();
			for(String category : categories) {
		%>
		<a href="<%=category%>"><%=category%></a>
		<%	} %>
		<h3>View All Movies</h3>
</body>
</html>