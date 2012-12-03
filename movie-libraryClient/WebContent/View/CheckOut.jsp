<%@page import="edu.sjsu.videolibrary.jspHelper.ViewCartHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="edu.sjsu.videolibrary.util.ClientConfig"%>
<%@ page import="edu.sjsu.videolibrary.model.ItemOnCart"%>
<%@ page import="edu.sjsu.videolibrary.util.UtilsClient"%>
<%@ page import="edu.sjsu.videolibrary.util.Parameters"%>
<%@ page import="edu.sjsu.videolibrary.jspHelper.ViewCartHelper"%>
<%
	if (!UtilsClient.validateLogin(request, response)) {
		return;
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
</head>
<body>
	<%
		ItemOnCart[] cartItems = ViewCartHelper.getCartItems(request,
				response);
		if (cartItems == null) {
			response.sendRedirect(ClientConfig.USER_HOME);
			return;
		}
	%>
	<table border="1">
		<tr>
			<td>Movie Name</td>
			<td>Movie Banner</td>			
			<td>Rent Amount</td>
		</tr>

		<%
			for (ItemOnCart cartItem : cartItems) {
		%>
		<tr>
			<td><%=cartItem.getMovieName()%></td>
			<td><%=cartItem.getMovieBanner()%></td>		
			<td><%=cartItem.getRentAmount()%></td>
		</tr>
		<%
			}
		%>
	</table>
	<table width="100%">

		<!-- Body -->
		<tr>
			<td>
				
					<form method="post" action="CheckOutServlet">
						<div class="form-row">
							<a href="ViewCart">Update Cart</a>
						</div>
						<div class="form-row">
							<span class="label"> Credit Card Number </span> <input
								type="text" name="<%=Parameters.pCreditCard%>" />
						</div>
						<div class="form-row">
							<span class="label"> Confirm </span> <input type="checkbox"
								name="userid" />
						</div>
						<div class="form-row">
							
								<input type="hidden" name="<%=Parameters.pCheckOutCheck%>" value="<%=Parameters.pCheckOutCheck%>" /> <input
									type="submit" value="Place Order" />
						</div>
					</form>
				
			</td>
		</tr>
	</table>
</body>
</html>