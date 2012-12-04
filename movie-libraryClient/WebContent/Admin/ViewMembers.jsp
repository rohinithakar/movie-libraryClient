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
		<h3>View Members</h3>
		<p></p>
		<%
			String msg = request.getParameter("msg");
			if (msg != null) {
				if (msg.equals("false") || msg.equals ("error")) {
					out.print("<div class=\"gagal\">Account can not be modified</div>");
				} else if (msg.equals("true")) { 
					out.print("<div class=\"sukses\">Account has been updated</div>");
				}  else if (msg.equals("superadmin")) {
					out.print("<div class=\"gagal\">SuperAdmin can not be deleted</div>");
				} else if (msg.equals("delete true")) {
					out.print("<div class=\"sukses\">Account has been deleted</div>");
				} else if (msg.equals("delete false")) {
					out.print("<div class=\"gagal\">Account can not be deleted</div>");					
				} else if (msg.indexOf("Error")>=0){
					out.print("<div class=\"gagal\">"+ msg + "</div>");										
				} else if (msg.indexOf("updated")>=0) {
					out.print("<div class=\"sukses\">"+ msg + "</div>");										
				}
			}
		%>
		<form name="form" id="viewMembersForm" method="get" action="ViewMembers.jsp">
			<table width="95%">
				<tr><td width="125px"><b>Member Type: </b></td><td>
				<select name="memberType" id="memberSelectBox" >
				<%
				String type = request.getParameter("memberType");
				if (type == null) type = "All";
				String types [] = {"All","Simple","Premium","Admin"};
				for (int i = 0; i < types.length; i++) {
					String sel = ""; 
					if (type != null) { if (type.equals(types[i])) { sel = "selected"; } }
					out.println("<option value=\"" + types[i] +  "\"" + sel + ">" + types[i] + "</option>");
				}
				%>
			  </select>
	 			 </td></tr>
	  			<tr><td></td><td>
	  				<input type="submit" class="button" value="Submit">
	  			</td></tr>
	  		</table>
		</form> 
		

		<% 

		ServiceProxy proxy = new ServiceProxy(); 
		proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
		User members []; 		
		
		System.out.println("Type " + type);
		
		if (type.equals("Admin")) {
		
			%>
			<table class="data">
				<tr class="data">
					<th class="data" >Email</th>
					<th class="data">Name</th>
 					<th class="data">Action</th>
				</tr>		
				<% 
				Admin admins [] = proxy.viewAdmins();
				if (admins.length > 0) {
					for (int i = 0; i < admins.length; i++) { 
						Admin m = admins[i]; 
						out.print("<tr class=\"data\"><td>" + m.getAdminId()  + "</td><td>" + m.getFirstName() + " " +  m.getLastName() + "</td>");
						out.print("<td><form name=\"adminForm" + i + "\" method=\"post\" action=\"EditAdmin\">"); 
						out.print("<input type=\"hidden\" name=\"id\" value="+ m.getAdminId() + ">"); 
						out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
						out.print("</form></td></tr>");
					}			
				} 	else { 
					out.print("No results"); 

				}
				%>
			</table>
		<%
		} else { 
 			String pageStr = request.getParameter("page");
 			int currentPage = 1;
 			if (pageStr != null) {
 				currentPage = Integer.parseInt(pageStr);
 				if (currentPage < 1) {
 					currentPage = 1;
 				}
 			} 
 			int previousPage = currentPage - 1;
 			int nextPage = currentPage + 1;
 			int offset = (currentPage * 20) + 1;
			
 			members = proxy.viewMembersByPage(type, offset, 20);
 			//members = proxy.viewMembers(type);

 			if (currentPage > 1) {
				out.print("<a href=\"ViewMembers.jsp?memberType=" + type + "&page=" + previousPage + "\"> Previous </a>");
			}

 			if (members.length == 20) {
				out.print("<a href=\"ViewMembers.jsp?memberType=" + type + "&page=" + nextPage + "\"> Next </a>");
			}

 			if (members != null) { %>
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
					out.print("<p>No members Try another type!</p>"); 
				}		
				%>
		</table>
	<% } %>
		
		</div>
		<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>
<% } %> 
