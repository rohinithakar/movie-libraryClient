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
<title>Shopping Cart</title>
<style type="text/css">
</style>
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>
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
			<td><form name="input" action="DeleteCartItemServlet"
					method="post">
					<input type="submit" value="Delete"> <input type="hidden"
						name="movieId" value="<%=cartItem.getMovieId()%>">
				</form></td>
		</tr>
		<%
			}
		%>
	</table>
	<table width="100%">

		<!-- Body -->
		<tr>
			<td>

				<form method="post" action="CheckOut">
					<div class="form-row">
						<span>
							<p>
								<a href="HomePage">Continue Shopping </a>
							</p>
							<p>
								<a href="CheckOut">Proceed to CheckOut </a>
							</p>
						</span>

					</div>
				</form>

			</td>
		</tr>
	</table>
</body>
</html>