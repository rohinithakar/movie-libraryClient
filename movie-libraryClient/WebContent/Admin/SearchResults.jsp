<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.model.Admin" %>
<%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
<%@ page import="edu.sjsu.videolibrary.model.User" %>

<% Admin admin = (Admin) session.getAttribute("currentAdmin");  if (admin == null ) { %> <jsp:forward page="LogIn.jsp" /> <%  } else if (admin.isValid()) { %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Members</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>	
	<div id="wrapper">
		<jsp:include page="includes/sidebar.jsp"></jsp:include>
		<div id="rightContent">
		<h3>Search Members</h3>
 
 
		<% 
		
  		User members [] = (User[]) session.getAttribute("userArray");	
 
 		%>
				<% if (members != null) { %>
				<table class="data">
				<tr class="data">
					<th class="data" width="30">ID</th>
					<th class="data">Name</th>
					<th class="data">Email</th>
	 				<th class="data">Start Date</th>
	 				<th class="data">Action</th>
				</tr>
				<% 
					for (int i = 0; i < members.length; i++) { 
						User m = members[i]; 
						out.print("<tr class=\"data\"><td>" + m.getMembershipId() + "</td><td>" + m.getFirstName() + " " +  m.getLastName() + "</td><td>"  + m.getUserId() + "</td><td>" + m.getStartDate() + "</td>" );
						out.print("<td><form name=\"memberForm" + i + "\" method=\"post\" action=\"EditMember\">"); 
						out.print("<input type=\"hidden\" name=\"id\" value="+ m.getMembershipId() + ">"); 
						out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
						out.print("</form></td></tr>");
					}
				} else { 
					out.print("<p>No members Try another search options!</p>"); 
				}		
				%>
		</table>
		<a href="SearchMember.jsp" class="button">Search Again</a>
 		
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
<% }  %> 
