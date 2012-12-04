<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.util.UtilsClient"%>
<%@ page import="edu.sjsu.videolibrary.model.User"%>
<table>
	<tr>
		<td><a href="HomePage">Home</a></td>
		<td><a href="ViewAccount">ViewAccount</a></td>
		<td><a href="ViewCart">ViewCart</a></td>
		<td><a href="ViewMonthlyBill">ViewMonthlyBill</a></td>
		<td><a href="ReturnMovie">ReturnMovie</a></td>
		<% 
User usr = UtilsClient.getUserSession(request);
if(usr.getMembershipType().equalsIgnoreCase("Premium")){ %>
<td>
<a href="MakeMonthlyPayment">Make Monthly Payment</a>
</td>

<%} %>
<td>
<a href="SignOutUserServlet">SignOut</a>
</td>
</tr>
</table>