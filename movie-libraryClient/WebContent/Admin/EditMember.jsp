<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<%@ page import="edu.sjsu.videolibrary.model.User" %>
 
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  } 
 else if (admin.isValid()) {  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<% 
	User user = (User) session.getAttribute("currentMember");	
	if (user != null) { 
%>    
<form name="userInfoForm" method="post" action="EditMember">
  <p>Personal Information:</p>
    <label for="mermbershipId">Membership ID:</label> <%= user.getMembershipId() %>
    <input type="hidden" name="membershipId" id="membershipId" value="<%= user.getMembershipId()  %>" /> 
    <br>
    <label for="startDate">Start Date:</label>  <%= user.getStartDate() %>
    <br>
  <p><br>    
    <label for="firstName">First Name</label>
    <input type="text" name="firstName" id="firstName" value="<%= user.getFirstName() %>"><br>
    <label for="firstName">Last Name</label>
    <input type="text" name="lastName" id="lastName" value="<%= user.getLastName() %>"><br>
     <label for="userId">Email</label>
    <input type="text" name="userId" id="userId" value="<%= user.getUserId() %>"><br>
    <label for="membershipType">Member Type:</label>
    
    <select name="membershipType" id="membershipType">
    <%  String [] types = {"Simple", "Premium"}; 
    	for(int i=0; i < types.length; i++){ %>
    		<option value="<%= types[i] %>" <%= (types[i].equals(user.getMembershipType().trim())) ?"selected" : "" %> ><%= types[i] %></option>  
	<% } %>
    </select><br>
    <label for="address">Address:</label>
    <br>
    <textarea name="address" id="address" cols="45" rows="3" ><%= user.getAddress() %></textarea>
    <br>
   <label for="city">City</label><input type="text" name="city" id="city" value="<%= user.getCity() %>"><br>
    
    <label for="state">State</label>
    <select name="state" id="state">
    <%  String [] states = (String []) session.getAttribute("statelist"); 
    	for(int i=0; i < states.length; i++){ %>
    		<option value="<%= states[i] %>" <%= (states[i].equals(user.getState())) ? "selected" : "" %> ><%= states[i] %></option>  
	<% } %>
    </select>
    <br>
    <label for="zipCpde">Zip Code:</label><input type="text" name="zipCpde"  maxlength="5" id="zipCpde" value="<%= user.getZip() %>"><br>
    <input type="checkbox" name="changePassword" value="true">
    <label for="newPassword">New password: </label><input type="text" name="newPassword" id="newPassword" value="">
    
  </p>
  <%
  	
  %>
  <% if (user.getMembershipType().trim().equals("Premium")) { %>
  <p>Premium Information </p>   
     <label for="creditCardNumber">Credit Card:</label>
     <input type="text" name="creditCardNumber" id="creditCardNumber" value="<%= user.getCreditCardNumber() %>" readonly="readonly" maxlength="16"><br>
     <label for="lastPayment">Last Payment:</label>  
     <input type="text" name="lastPayment" id="lastPayment" value="<%= user.getLatestPaymentDate() %>" readonly="readonly"><br>  
   <% }  %>
   <input type="submit"  name="act" value="Update"  />  <input type="submit"  name="act" value="Cancel"  />   
</form>
<% }  %>
</body>
</html>
<%  }  %> 

