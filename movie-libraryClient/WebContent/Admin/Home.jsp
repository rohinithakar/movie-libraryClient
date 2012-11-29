<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  } else if (admin.isValid()) { %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>

<jsp:include page="includes/header.jsp"></jsp:include>

<div id="wrapper">
<jsp:include page="includes/sidebar.jsp"></jsp:include>

	<div id="rightContent">
	<h3>Welcome</h3>
	<div class="shortcutHome">
	  <a href="CreateMovie.jsp"><img src="../css/img/posting.png"><br>Add a new Movie</a>
		</div>
		<div class="shortcutHome">
		<a href="ViewMovies.jsp"><img src="../css/img/photo.png"><br>View Movies</a>
		</div>
		<div class="shortcutHome">
		<a href=""><img src="../css/img/halaman.png"><br>Search a Movie</a>
		</div>
		<div class="shortcutHome">
		<a href="ViewMembers.jsp "><img src="../css/img/template.png"><br>View Members</a>
		</div>
		<div class="shortcutHome">
		<a href="SignUpAdmin.jsp"><img src="../css/img/quote.png"><br>Create a New Admin</a>
		</div>
		<div class="shortcutHome">
		<a href=""><img src="../css/img/bukutamu.png"><br>Search Members</a>
		</div>
		
		<div class="clear"></div>
		
		<div id="smallRight">
		<h3>Movies</h3>
		<table style="border: none;font-size: 12px;color: #5b5b5b;width: 100%;margin: 10px 0 10px 0;">
			<tr>
			  <td style="border: none;padding: 4px;">Total Movies</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
			<tr>
			  <td style="border: none;padding: 4px;">Total Categories</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
			<tr>
			  <td style="border: none;padding: 4px;">Total Transactions</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
		</table>
		</div>
		<div id="smallRight">
		<h3>Members</h3>
		
		<table style="border: none;font-size: 12px;color: #5b5b5b;width: 100%;margin: 10px 0 10px 0;">
			<tr>
			  <td style="border: none;padding: 4px;">Total Members</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
			<tr>
			  <td style="border: none;padding: 4px;">Simple Members</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
			<tr>
			  <td style="border: none;padding: 4px;">Premium Members</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
		</table>
		</div>
	</div>
<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>

</html>
<% } %>