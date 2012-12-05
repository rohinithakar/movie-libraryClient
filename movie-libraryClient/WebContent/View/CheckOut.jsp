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
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
<title>Shopping Cart</title>
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>

<div id="wrapper">
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<%
 
		ItemOnCart[] cartItems = ViewCartHelper.getCartItems(request, response);
		if (cartItems == null) {
			response.sendRedirect(ClientConfig.USER_HOME);
			return;
		}
 
	%>
	<div id="rightContent">
	<h3>Shopping Cart</h3>
	
	<table border="1">
		<tr>
			<th class="data">Movie Name</th>
			<th class="data">Movie Banner</th>			
			<th class="data">Rent Amount</th>
		</tr>
		<%
			for (ItemOnCart cartItem : cartItems) {
		%>
		<tr>
			<td class="data"><%= cartItem.getMovieName() %></td>
			<td class="data"><%= cartItem.getMovieBanner() %></td>		
			<td class="data"><%= cartItem.getRentAmount() %></td>
		</tr>
		<%
			}
		%>
	</table>
 
 	<div class="clear"></div>
	<div style="padding-top:40px">		
		<form method="post" action="CheckOutServlet">
			<div class="form-row">
				<a href="ViewCart" class="button">Update Cart</a>
			</div>
			<div class="form-row">
				<span class="label"> Credit Card Number </span> 
				<input type="text" name="<%=Parameters.pCreditCard%>" />
			</div>
			<div class="form-row">
				<span class="label"> Confirm </span> <input type="checkbox" name="userid" />
			</div>
			<div class="form-row">
				<input type="hidden" name="<%=Parameters.pCheckOutCheck%>" value="<%= Parameters.pCheckOutCheck %>" /> 
				<input type="submit" class="button" value="Place Order" />
			</div>
		</form>
	</div>
				
 
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
	</div>
</body>
</html>