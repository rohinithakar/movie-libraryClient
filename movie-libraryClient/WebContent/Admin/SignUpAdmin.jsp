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
				if (msg.equals("error") || msg.equals("false")) {
					out.print("<div class=\"gagal\">Please verify your information</div>");
				} else if (msg.indexOf("true") >= 0) { 
					out.print("<div class=\"sukses\">Administrator has been created</div>");
				}   
			}
		%>
		<h3>Create a New Admin</h3>
		<p></p>
		<form method="post" action="SignUpAdmin" id="SignUpAdminForm" onsubmit="return validateSignUpAdmin();">
		  <table width="95%">
  			<tr>
 				 <td width="125px"><b>First Name: </b></td>
 				 <td><input type="text" name="fname" id="fname" value=""></td>
 			</tr>		    
 			<tr>
 				 <td width="125px"><b>Last Name: </b></td>
 				 <td><input type="text" name="lname" id="lname" value=""></td>
 			</tr>				
 			<tr>
 				<td width="125px"><b>Email Address: </b></td>
 				<td><input type="text" name="uid" id="uid" ></td>
 			</tr>
  			<tr>
 				 <td width="125px"><b>Password: </b></td>
 				 <td><input type="password" name="pwd" id="pwd" value=""></td>
 			</tr>
 			<tr>
 				 <td width="125px"><b>Confirm Password: </b></td>
 				 <td><input type="password" name="confirmation" id="confirmation" value=""></td>
 			</tr>		
  			<tr>
  				<td></td>
  				<td><input type="submit" class="button"  />
  				<input type="reset" class="button"  /></td>
  			</tr>
		   </table>   
		</form>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>
<% } %> 