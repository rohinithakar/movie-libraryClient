<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<%@ page import="edu.sjsu.videolibrary.model.Movie" %>
 
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> 
<%  } else if (admin.isValid()) { %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Movie</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js"></script>
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>

<div id="wrapper">
<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
	
		<% 
			String msg = request.getParameter("msg");
			if (msg != null) {
				if (msg.equals("error")) {
						out.print("<div class=\"gagal\">Movie can not be added</div>");
				} else if (msg.indexOf("true") >= 0) { 
					out.print("<div class=\"sukses\">Movie has been added</div>");
				} else if (msg.indexOf("false") >= 0 || msg.equals("")) { 
					out.print("<div class=\"gagal\">Please verify your information</div>");
				}  
			}
		%>
	
		<h3>Create a New Movie</h3>
		<p></p>
		<form method="post" id="CreateMovieForm" action="CreateMovie" onsubmit="return validateCreateMovie(); " >
		  <table width="95%">
 			<tr>
 				<td width="125px"><b>Release Date: </b></td>
 				<td><input type="text" name="releaseDate" id="releaseDate" value="YYYY-MM-DD"></td>
 			</tr>
 			<tr>
 				 <td width="125px"><b>Movie Name: </b></td>
 				 <td><input type="text" name="moiveName" id="moiveName" value=""></td>
 			</tr>
 			<tr>
 				 <td width="125px"><b>Movie Banner: </b></td>
 				 <td><input type="text" name="movieBanner" id="movieBanner" value=""></td>
 			</tr>		    
 			<tr>
 				 <td width="125px"><b>Copies: </b></td>
 				 <td><input type="text" name="availableCopies" id="availableCopies" value="0"></td>
 			</tr>		
  			<tr>
 				 <td width="125px"><b>Category: </b></td>
 				 <td><input type="text" name="categoryId" id="categoryId" value=""></td>
 			</tr>		
  			<tr>
  				<td></td>
  				<td><input type="submit" class="button" name="act" value="Create"  />
  				<input type="reset" class="button" name="act" value="Clear"  /></td>
  			</tr>
		   </table>   
		</form>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>
<% } %> 