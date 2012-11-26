<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<%@ page import="edu.sjsu.videolibrary.model.User" %>
 
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  }
 else if (admin.isValid()) {  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Admin</title>
</head>
<body>

<% 
	Admin user = (Admin) session.getAttribute("currentMember");	
	if (user != null) { 
%>    
<form name="adminInfoForm" method="post" action="EditAdmin">
  <p>Personal Information:</p>
    <label for="mermbershipId">Membership ID:</label> <%= user.getAdminId() %>
    <input type="hidden" name="userId" id="userId" value="<%= user.getAdminId()  %>" /> 
  <p><br>    
    <label for="firstName">First Name</label>
    <input type="text" name="firstName" id="firstName" value="<%= user.getFirstName() %>"><br>
    <label for="firstName">Last Name</label>
    <input type="text" name="lastName" id="lastName" value="<%= user.getLastName() %>"><br>
     <label for="newPassword">New password: </label><input type="text" name="newPassword" id="newPassword" value="">
   	<br>
   <input type="submit"  name="act" value="Update"  />  <input type="submit"  name="act" value="Cancel"  />   
</form>
<% }  %>
</body>
</html>
<%  } %> 
