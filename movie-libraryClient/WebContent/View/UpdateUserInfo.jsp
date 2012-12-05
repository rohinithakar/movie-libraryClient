<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>
<%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
<%@ page import="edu.sjsu.videolibrary.util.UtilsClient"%>
<%@page import="edu.sjsu.videolibrary.util.Parameters"%>
<%@page import="edu.sjsu.videolibrary.util.ClientConfig"%>
<%
	if(!UtilsClient.validateLogin(request, response)) {
		return;
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateUserInfo</title>
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>

	<%
		String error = request.getParameter("msg");
		if (error != null){
			if(error.equalsIgnoreCase("serverError")) 
				out.println("Update could not be performed.");				
		
			if(error.equalsIgnoreCase("successful"))
			out.println("Update Successful.");
			
			if(error.equalsIgnoreCase("duplicate")) {
				out.println("Duplicate user id provided");
			}
		
		}
	%>

	<%
		ServiceProxy proxy = UtilsClient.getServiceProxy();

			// Hard coded values
		User usrSession = UtilsClient.getUserSession(request);
		User usr = proxy.displayUserInformation(usrSession.getMembershipId());
		int id = usr.getMembershipId();
		if( usr.getCreditCardNumber() == null ) {
			usr.setCreditCardNumber("");
		}
	%>


	<%
		if (usr != null) {
	%>

	<form id="form1" method="post" action="UpdateUserInfoServlet">
		<div class="form-row">
			First Name<input type="text" name="<%=Parameters.pFirstName%>"
				value=<%=usr.getFirstName()%> />
		</div>
		<div class="form-row">
			Last Name<input type="text" name="<%=Parameters.pLastName%>"
				value="<%=usr.getLastName()%>" />
		</div>
		<div class="form-row">
			Membership Type
				<select name="<%=Parameters.pMembershipType%>" id="membershipType">
		    <%  String [] types = {"Simple", "Premium"}; 
		    	for(int i=0; i < types.length; i++){ %>
		    		<option value="<%= types[i] %>" <%= (types[i].equals(usr.getMembershipType().trim())) ?"selected" : "" %> ><%= types[i] %></option>  
			<% } %>
		    </select>
		</div>
		<div class="form-row">
			User Id<input type="text" name="<%=Parameters.pUserId%>"
				value="<%=usr.getUserId()%>" />
		</div>
		<div class="form-row">
			Address<input type="text" name="<%=Parameters.pAddress%>"
				value="<%=usr.getAddress()%>" />
		</div>
		<div class="form-row">
			City<input type="text" name="<%=Parameters.pCity%>" value="<%=usr.getCity()%>" />
		</div>
		<div class="form-row">
			State
			<select name="<%=Parameters.pState%>" id="state">
		    <%  String [] states = UtilsClient.getStates(); 
		    	for(int i=0; i < states.length; i++){ %>
		    		<option value="<%= states[i] %>" <%= (states[i].equalsIgnoreCase(usr.getState())) ? "selected" : "" %> ><%= states[i] %></option>  
			<% } %>
		    </select>
		</div>
		<div class="form-row">
			ZipCode<input type="text" name="<%=Parameters.pZip%>" value="<%=usr.getZip()%>" />
		</div>
		<div class="form-row">
			Credit Card #<input type="text" name="<%=Parameters.pCreditCard%>"
				value="<%=usr.getCreditCardNumber()%>" />
		</div>
		<div>
			<input type="hidden" name="<%=Parameters.pMembershipId%>"
				value="<%= usr.getMembershipId()%>">
		</div>
		<div class="form-row">
			<input class="submit" type="submit" value="Update">
		</div>
	</form>
	<%
		} 
		else{
			
			%>
	<b> No record Found.</b>
	<% }  %>

</body>
</html>