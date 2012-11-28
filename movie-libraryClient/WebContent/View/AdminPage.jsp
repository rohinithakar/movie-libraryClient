<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<form method="get" action="AdminPage">
	<table>
		<tr>
			<td>Search a User by:</td><td></td>		</tr>	
			<tr><td>Membership Id</td><td><input type="text" name="membershipId"></td></tr>
		<tr>	<td>User Id</td><td><input type="text" name="userId"></td></tr>
			<tr><td>Membership Type</td><td><input type="text" name="membershipType"></td></tr>
		<tr>	<td>Start Date</td><td><input type="text" name="startDate"></td></tr>
		<tr>	<td>First Name</td><td><input type="text" name="firstName"></td>	</tr>
		<tr>	<td>Last Name</td><td><input type="text" name="lastName"></td></tr>
		<tr>	<td>Address</td><td><input type="text" name="address"></td></tr>
		<tr>	<td>City</td><td><input type="text" name="city"></td></tr>
		<tr>	<td>State</td><td><input type="text" name="state"></td>	</tr>			
		<tr><td><input type="submit" class="submit" name="search" value="Search"></td><td></td></tr>
		
	</table>	
</form>
</body>
</html>