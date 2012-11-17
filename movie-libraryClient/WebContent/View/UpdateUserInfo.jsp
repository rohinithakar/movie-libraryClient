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
<%@ page import="edu.sjsu.videolibrary.util.Utils"%>

<%
	// 	if(!Utils.validateLogin(request, response)) {
	// 		return;
	// 	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%
	// Utils.generateHeader(request, response);
%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdateUserInfo</title>
</head>
<body>

	<%
		String error = request.getParameter("msg");
		if (error != null){
			if(error.equalsIgnoreCase("serverError")) 
				out.println("Update could not be performed.");				
		
			if(error.equalsIgnoreCase("successful"))
			out.println("Update Successful.");
		
		}
	%>

	<%
		ServiceProxy proxy = new ServiceProxy();
		proxy.setEndpoint("http://localhost:8080/movie-library/services/Service ");
		// User usrSession = (User)session.getAttribute(Parameters.pUserBean);

				// Hard coded values
				User usrSession = new User();
				usrSession.setMembershipId(1);
		User usr = proxy.displayUserInformation(usrSession.getMembershipId());
	%>


	<%
		if (usr != null) {
	%>

	<form id="form1" method="post" action="UpdateUserInfoServlet">
		<div class="form-row">
			First Name<input type="text" name="firstName"
				value=<%=usr.getFirstName()%> />
		</div>
		<div class="form-row">
			Last Name<input type="text" name="lastName"
				value="<%=usr.getLastName()%>" />
		</div>
		<div class="form-row">
			Membership Type<input type="text" name="membershipType"
				value="<%=usr.getMembershipType()%>" />
		</div>
		<div class="form-row">
			User Id<input type="text" name="lastName"
				value="<%=usr.getUserId()%>" />
		</div>
		<div class="form-row">
			Address<input type="text" name="lastName"
				value="<%=usr.getAddress()%>" />
		</div>
		<div class="form-row">
			City<input type="text" name="lastName" value="<%=usr.getCity()%>" />
		</div>
		<div class="form-row">
			State<input type="text" name="lastName" value="<%=usr.getState()%>" />
		</div>
		<div class="form-row">
			ZipCode<input type="text" name="lastName" value="<%=usr.getZip()%>" />
		</div>
		<div class="form-row">
			Credit Card #<input type="text" name="lastName"
				value="<%=usr.getCreditCardNumber()%>" />
		</div>
		<div>
			<input type="hidden" name="membershipId"
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