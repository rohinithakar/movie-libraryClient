<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  } else if (admin.isValid()) { %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="form" id="viewMembersForm" method="post" action="ViewMembers">
	<label>View Members </label>

  <select name="memberType" id="memberSelectBox" >
    <option value="all">All</option>
    <option value="Simple">Simple</option>
    <option value="Premium">Premium</option>
 	<option value="Admin">Admin</option>    
  </select>
  <br>
  <input type="submit" name="buttonView" id="buttonView" value="Submit">
</form> 

</body>
</html>
<% } %> 
