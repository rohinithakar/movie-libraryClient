<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="edu.sjsu.videolibrary.model.Transaction"%>
<%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>
<%@ page import="edu.sjsu.videolibrary.util.Utils"%>


<%
	// 	if(!Utils.validateLogin(request, response)) {
	// 		return;
	// 	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewAccount</title>
</head>
<%
	Utils.generateHeader(request, response);
%>
<body>
	<%
		ServiceProxy proxy = new ServiceProxy();
		proxy.setEndpoint("http://localhost:8080/movie-library/services/Service ");
		// User usr = (User)session.getAttribute("user");
				
		// Hard code
		User usr = new User();
		usr.setMembershipId(1);
		Transaction[] trans = proxy.viewAccountTransactions(usr.getMembershipId());
	%>

	<%
		if (trans != null && trans.length != 0) {
	%>

	<table border="1">
		<tr>
			<td>Movie Name</td>
			<td>Rent Amount/Movie</td>
			<td>Rent Date</td>
			<td>Return Date</td>
		</tr>

		<%
			for (Transaction tran : trans) {
		%>
		<tr>
			<td><%=tran.getMovieName()%></td>
			<td><%=tran.getPerMovieAmount()%></td>
			<td><%=tran.getPurchaseDate()%></td>
			<td><%=tran.getReturnDate()%></td>
		</tr>
		<%
			}
		%>
	</table>
	<%
		} else {
	%>
	<b>Currently you don't have any transaction associated with your
		account.</b>
	<%
		}
	%>

</body>
</html>