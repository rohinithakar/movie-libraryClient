<%@page import="edu.sjsu.videolibrary.util.Parameters"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="edu.sjsu.videolibrary.jspHelper.ReturnMovieHelper"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="edu.sjsu.videolibrary.model.Transaction"%>
<%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>
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
<title>ViewAccount</title>
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>
<p>
<%=ReturnMovieHelper.getReturnMovieMessage(request) %>
</p>
	<%
		Transaction[] trans = ReturnMovieHelper.getMovies(request, response);
		if (trans != null && trans.length != 0) {
	%>
	<table border="1">
		<tr>
			<td>Movie Name</td>
			<td>Rent Date</td>
			<td>Return Movie</td>
		</tr>

		<%
			for (Transaction tran : trans) {
		%>
		<tr>
			<td><%=tran.getMovieName()%></td>
			<td><%=tran.getPurchaseDate()%></td>
			<td>
			<form action="ReturnMovieServlet" method="post">
			<input type="hidden" name="<%=Parameters.pMovieId%>" value="<%=tran.getMovieId()%>"/>
			<input type="submit" value="Return Movie"/>
			</form>
			</td>
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