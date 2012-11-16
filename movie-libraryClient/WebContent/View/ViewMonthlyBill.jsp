<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo"%>
<%@ page import="edu.sjsu.videolibrary.model.StatementInfo"%>
<%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
<%@ page import="edu.sjsu.videolibrary.util.Utils"%>

<%
// 	if(!Utils.validateLogin(request, response)) {
// 		return;
// 	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	// Utils.generateHeader(request, response);
%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewMonthlyBill</title>
</head>
<body>

	<%
		ServiceProxy proxy = new ServiceProxy();
		proxy.setEndpoint("http://localhost:8080/movie-library/services/Service ");
		String membershipId = (String)session.getAttribute("membershipId");
		StatementInfo[] statement = proxy.viewStatement(membershipId,month,year);
		PaymentForPremiumMemInfo pymnt = proxy.generateMonthlyBillForPremiumMember(membershipId,month,year);
		%>
	<% if(statement != null && statement.length != 0){ %>

	<table border="1">
		<tr>
			<td>Movie Name</td>
			<td>Rent Amount</td>
			<td>PurchaseDate/PaymentDate</td>
			<td>Return Date</td>
		</tr>

		<% 		
			for (StatementInfo st :statement) { %>
		<tr>
			<td><%=st.getMovieName()%></td>
			<td><%=st.getTotalDueAmount()%></td>
			<td><%=st.getRentDate()%></td>
			<td><%=st.getReturnDate()%></td>
			
		</tr>
		<% } %>
	</table>
	<% }  
	else{ %>
	<b>Currently you don't have any movie-billing transaction associated with your
		account.</b>
	<%} %>
	
	
	<% if(pymnt != null){ %>
	
	<table border="1">
		<tr>
			<td>Payment Date</td>
			<td>Payment Amount</td>
			<td>Payment Status</td>			
		</tr>
		<tr>
			<td><%=pymnt.getPaymentDate()%></td>
			<td><%=pymnt.getMonthlyPaymentAmount()%></td>
			<td><%=pymnt.getPaymentStatus()%></td>			
		</tr>
		</table>
		<%}
	else{ %>
	<b>You don't have any payment information for selected month</b>
	<% } %>

</body>
</html>