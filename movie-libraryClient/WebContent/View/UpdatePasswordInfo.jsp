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
<%
		if(!UtilsClient.validateLogin(request, response)) {
			return;
		}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UpdatePasswordInfo</title>
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
		
		}
		ServiceProxy proxy = UtilsClient.getServiceProxy();

		User usrSession = UtilsClient.getUserSession(request);
		User usr = proxy.displayUserInformation(usrSession.getMembershipId());
	%>

	<%
		if (usr != null) {
	%>

	<form id="form1" method="post" action="UpdatePasswordInfoServlet">
		<div class="form-row">
			Old Password<input type="text" name="oldPwd" />
		</div>
		<div class="form-row">
			New Password<input type="text" name="newPwd" />
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