<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<%@ page import="edu.sjsu.videolibrary.model.User" %>
 <%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
 <%@ page import="edu.sjsu.videolibrary.util.Parameters"%>
 
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  }
 else if (admin.isValid()) {  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Movie</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js" ></script>

</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>	
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
			<h3>Search Movie</h3>
		
 


<form name="adminInfoForm" method="post" action="SearchMovie">
  	<table width="95%">
<form method="get" action="SearchedMovies">
	<table>
		<tr><td>Search a movie by:</td><td></td></tr>
		<tr><td>Movie Name</td><td><input type="text" name="<%=Parameters.pMovieName%>"></td></tr>
		<tr><td>Movie Banner</td><td><input type="text" name="<%=Parameters.pMovieBanner%>"></td></tr>
		<tr><td>Movie Release Date</td><td>
		<input type="checkbox" name="date" value="true">
		<jsp:include page="includes/dateComponent.jsp"></jsp:include> </td></tr>
   		<tr><td><input type="submit" class="button" name="search" value="Search"></td><td></td>
		</tr>	
    </table> 
</form>
 
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
<%  } %> 
