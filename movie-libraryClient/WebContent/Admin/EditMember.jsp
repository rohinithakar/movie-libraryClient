<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<%@ page import="edu.sjsu.videolibrary.model.User" %>
 
<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  } 
 else if (admin.isValid()) {  %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<script type="text/javascript" src="../js/admin.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Member</title>
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>	
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
		<% 
			String msg = request.getParameter("msg");
			if (msg != null) {
				if (msg.indexOf("Error")>= 0) {
						out.print("<div class=\"gagal\">" +msg +"</div>");
				} else if (msg.indexOf("updated") >= 0) { 
					out.print("<div class=\"sukses\">"+msg +"</div>");
				} else if (msg.indexOf("Invalid") >= 0 || msg.equals("")) { 
					out.print("<div class=\"gagal\">"+msg +"</div>");
				}  
			}
		%>
			<h3>Edit Member</h3>

	
<% 
	User user = (User) session.getAttribute("currentMember");	
	if (user != null) { 
%>    
		<form name="userInfoForm" method="post" action="EditMember" onsubmit="return validateUpdateUser();">
		  	<table width="60%">
			<tr>
		    	<td><label for="mermbershipId">Membership ID:</label></td><td><%= user.getMembershipId() %>
		    	<input type="hidden" name="membershipId" id="membershipId" value="<%= user.getMembershipId()  %>" /> 
		    	</td>
		    </tr>
 		    <tr>
		    	<td>
		    	<label for="startDate">Movies rented:</label>  
		    	</td>
		    	<td><%= user.getMovieList().length %>
		    	</td>
		    </tr>
		    
		    <% 
		    	String movies [] = user.getMovieList(); 
		    	if (movies.length > 0) {
		    		out.println("<tr><td>Movies</td><td>");
		    		for (int i = 0; i < movies.length; i++) {
		    			out.print(movies[i] + " ");
		    		}
		    		out.print("</td></tr>");
		    		
		    } %>
		    
 		    <tr>
		    <td>
		    <label for="firstName">First Name</label>
		    </td>
		    <td>
		    <input type="text" name="firstName" id="firstName" value="<%= user.getFirstName() %>">
		    </td>
		    </tr>
		    <tr><td><label for="firstName">Last Name</label></td><td>
		    <input type="text" name="lastName" id="lastName" value="<%= user.getLastName() %>"></td>
		    </tr>
		    <tr><td>
		     <label for="userId">Email</label>
		    </td>
		    <td>
		    <input type="text" name="userId" id="userId" value="<%= user.getUserId() %>">
		    </td>
		    </tr>
		    <tr>
		    <td>
		    	<label for="membershipType">Member Type:</label>
		    </td>
		    <td>
		    <select name="membershipType" id="membershipType">
		    <%  String [] types = {"Simple", "Premium"}; 
		    	for(int i=0; i < types.length; i++){ %>
		    		<option value="<%= types[i] %>" <%= (types[i].equals(user.getMembershipType().trim())) ?"selected" : "" %> ><%= types[i] %></option>  
			<% } %>
		    </select>
		    </td>
		    </tr>
		    <tr><td>
		    <label for="address">Address:</label>
		    </td><td>
		    <textarea name="address" id="address" cols="45" rows="3" ><%= user.getAddress() %></textarea>
		    </td>
		    </tr>
		    <tr><td>
		   <label for="city">City</label> </td><td><input type="text" name="city" id="city" value="<%= user.getCity() %>">
		   </td>
		    <tr><td>
		    <label for="state">State</label>
		    </td><td>
		    <select name="state" id="state">
		    <%  String [] states = (String []) session.getAttribute("statelist"); 
		    	for(int i=0; i < states.length; i++){ %>
		    		<option value="<%= states[i] %>" <%= (states[i].equals(user.getState())) ? "selected" : "" %> ><%= states[i] %></option>  
			<% } %>
		    </select>
		    </td>
		    </tr>
		    <tr><td>
		    <label for="zipCpde">Zip Code:</label>
		    </td><td>
		 	<input type="text" name="zipCode"  maxlength="5" id="zipCode" value="<%= user.getZip() %>">
		    </td>
		    </tr>
		    <tr><td>
		    <input type="checkbox" name="changePassword" value="true">
		    <label for="newPassword">New password: </label>
		    </td><td>
		    <input type="text" name="newPassword" id="newPassword" value="">
		    </td>
		    </tr>
		
		  <% if (user.getMembershipType().trim().equals("Premium")) { %>
		  	 <tr> <td> 
		  	 <p>Premium Information </p>   
		  	 </td><td></td></tr>
		  	 <tr>
		  	 <td>
		     <label for="creditCardNumber">Credit Card:</label>
		     </td>
		     <td>
		     <input type="text" name="creditCardNumber" id="creditCardNumber" value="<%= user.getCreditCardNumber() %>" readonly="readonly" maxlength="16">
		     </td>
		     </tr>
		     <tr><td>
		     <label for="lastPayment">Last Payment:</label>  
		     </td>
		     <td>
		     <input type="text" name="lastPayment" id="lastPayment" value="<%= user.getLatestPaymentDate() %>" readonly="readonly">
		     </td></tr> 
		   <% }  %>
		   <tr><td></td><td>
		   <input type="submit" class="button"  name="act" value="Update"  />  <input type="submit" class="button" name="act" value="Cancel"  /> 
		   </td></tr>  
			</table>
		</form>
		<% }  %>
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
<%  }  %> 

