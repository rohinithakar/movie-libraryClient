<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
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
	<form name="form" id="viewMoviesForm" method="post" action="ViewMovies">
		<table width="95%">
			<tr><td width="125px"><b>By Category</b></td><td>
  				<select name="category" id="categorySelectBox" >
				    <option value="all">All</option>
				    <option value="Drama">Drama</option>
				    <option value="Romance">Romance</option>
				 	<option value="Comedy">Comedy</option>  
				  	<option value="Thriller">Thriller</option>       
 		 		</select>
 			 </td></tr>
  			<tr><td></td><td>
  				<input type="submit" class="button" name="buttonView" id="buttonView" value="Submit">
  			</td></tr>
  		</table>
	</form> 
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>
<%  }  %> 
