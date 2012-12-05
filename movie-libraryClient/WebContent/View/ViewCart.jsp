<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="edu.sjsu.videolibrary.util.UtilsClient"%>
<%@ page import="edu.sjsu.videolibrary.jspHelper.ViewCartHelper"%>
<%@ page import="edu.sjsu.videolibrary.model.ItemOnCart"%>
<%@ page import="edu.sjsu.videolibrary.util.ClientConfig"%>
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
<style type="text/css">
</style>
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
	<%
		ItemOnCart[] cartItems = ViewCartHelper.getCartItems(request,
				response);
		if (cartItems == null) {
			//response.sendRedirect(ClientConfig.USER_HOME);
			//return;
			out.write("Curenty you dont have any items in cart.Want to shop ?");
			out.write(" Go Back to Browsing Movies.");
			return;
		}
	%>
		<table class="data">
			<tr class="data">
				<th class="data">Movie Name</th>
				<th class="data">Movie Banner</th>
				<th class="data">Rent Amount</th>
			</tr>
	
			<%
				for (ItemOnCart cartItem : cartItems) {
			%>
			<tr class="data">
				<td><%=cartItem.getMovieName()%></td>
				<td><%=cartItem.getMovieBanner()%></td>
				<td><%=cartItem.getRentAmount()%></td>
				<td>
					<form name="input" action="DeleteCartItemServlet" method="post">
						<input type="submit" value="Delete"> <input type="hidden" name="movieId" value="<%=cartItem.getMovieId()%>">
					</form>
				</td>
			</tr>
			<%
				}
			%>
		</table>
		<div>
 		<span style="float:left">
  			<a href="HomePage" class="button">Continue Shopping </a>
 		</span>
 		<span style="float:right">
 				<a href="CheckOut" class="button">Proceed to CheckOut </a>		
 		</span>
 		</div>
 	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>

</html>