<%@page import="edu.sjsu.videolibrary.jspHelper.SignInUserHelper"%>
<%@page import="edu.sjsu.videolibrary.servlets.SignInUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="edu.sjsu.videolibrary.util.Parameters"%>
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
	if (!UtilsClient.validateLogin(request, response)) {
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Make MonthLy Payment</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>

<jsp:include page="includes/header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
		<h3> Would like to pay your monthly membership fees? </h3>

		<p>
		<%=SignInUserHelper.getPaymentError(request) %>
		</p>

		<table>
			<tr>
				<td>
					<form action="MakeMonthlyPaymentServlet" method="post">
						 <input type="submit" class="button" value="Pay Now" />
					</form>
				</td>
			</tr>
	
		</table>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>

</body>
</html>