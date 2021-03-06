<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>
<%@ page import="edu.sjsu.videolibrary.model.StatementInfo"%>
<%@ page import="edu.sjsu.videolibrary.service.ServiceProxy"%>
<%@ page import="edu.sjsu.videolibrary.util.UtilsClient"%>
<%@ page import="edu.sjsu.videolibrary.util.Parameters"%>
<%@ page import="edu.sjsu.videolibrary.util.DateUtils"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<%
	if (!UtilsClient.validateLogin(request, response)) {
		return;
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewMonthlyBill</title>
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
	<%
		ServiceProxy proxy = UtilsClient.getServiceProxy();

		// Hard coded values
		User usr = UtilsClient.getUserSession(request);

		String strMonth = request.getParameter(Parameters.pMonth);
		String strYear = request.getParameter(Parameters.pYear);
		int month = 0;
		int year = 0;
		Calendar cal = Calendar.getInstance();

		try {
			month = Integer.parseInt(strMonth);
			year = Integer.parseInt(strYear);
		} catch (NumberFormatException e) {
			month = cal.get(Calendar.MONTH) + 1;
			year = cal.get(Calendar.YEAR);
		}

		StatementInfo[] statement = proxy.viewStatement(
				usr.getMembershipId(), month, year);
		PaymentForPremiumMemInfo pymnt = proxy
				.generateMonthlyBillForPremiumMember(usr.getMembershipId(),
						month, year);

		DateUtils dtUtils = DateUtils.getInstance();
		List<Integer> months = dtUtils.getMonthsFromStartDate(UtilsClient
				.getUserSession(request).getStartDate());
		List<Integer> years = dtUtils.getYearFromStartDate(UtilsClient
				.getUserSession(request).getStartDate());
	%>
	<%
		if (statement != null && statement.length != 0) {
	%>
	<h3>View Monthly Statement</h3>
	<form method="get">
		<table>
		<tr> 
		<td>
		Select Month: <select name="month">
			<%
				for (Integer monthDisplay : months) {
						if (month == monthDisplay.intValue()) {
							out.write("<option value=\"" + monthDisplay
									+ "\"  selected>"
									+ dtUtils.getMonthName(monthDisplay)
									+ "</option>");
						} else {
							out.write("<option value=\"" + monthDisplay + "\">"
									+ dtUtils.getMonthName(monthDisplay)
									+ "</option>");
						}
					}
			%>
		</select> 
		</td>
		<td> 
			Select Year: <select name="year">
			<%
				for (Integer yearDisplay : years) {
						if (year == yearDisplay.intValue()) {
							out.write("<option value=\"" + yearDisplay
									+ "\" selected >" + yearDisplay + "</option>");
						} else {
							out.write("<option value=\"" + yearDisplay + "\">"
									+ yearDisplay + "</option>");
						}
					}
			%>

		</select>
		</td>
		<td><input type="submit" class="button" value="Get Statement" /></td>
		</tr>
		</table>
	</form>

	<table border="1" width="80%" class="data">
		<tr class="data">
			<th class="data">Movie Name</th>
			<th class="data">Rent Amount</th>
			<th class="data">PurchaseDate/PaymentDate</th>
			<th class="data">Return Date</th>
		</tr>

		<%
			for (StatementInfo st : statement) {
		%>
		<tr class="data">
			<td><%=st.getMovieName()%></td>
			<td><%=st.getTotalDueAmount()%></td>
			<td><%=st.getRentDate()%></td>
			<td><%=st.getReturnDate()%></td>

		</tr>
		<%
			}
		%>
	</table>
	<% } else { %> <b>No Billing Statement found in database for selected information.</b>
	<% } %>
	<%
		if (usr.getMembershipType().equalsIgnoreCase("premium")) {
			if (pymnt != null) {
	%>

	<div  class="clear" style="padding-top:20px"></div>
	<table border="1" class="data">
		<tr class="data">
			<th class="data">Payment Date</th>
			<th class="data">Payment Amount</th>
			<th class="data">Payment Status</th>
		</tr>
		<tr class="data">
			<td><%=pymnt.getPaymentDate()%></td>
			<td><%=pymnt.getMonthlyPaymentAmount()%></td>
			<td><%=pymnt.getPaymentStatus()%></td>
		</tr>
	</table>
	<% } else { %>
		<div class="clear"></div>
		<b>You don't have any payment information for selected month</b>
	<%  	}
		}
	%>
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>