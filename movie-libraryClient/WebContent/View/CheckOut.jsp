<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<style type = "text/css">

</style>
</head>
<body>
	<table width="100%">
	
	<!-- Body -->
	<tr>
		<td>
			<center>
				<form method = "post" action = "CheckOut">
					<table id = "">
						<%= request.getAttribute("transaction") %>
					</table>
					<div class= "form-row">	<a href=""> Edit Cart </a> </div>
					<div class= "form-row"> <span class = "label"> Credit Card Number </span> <input type = "text" name = "creditCard" /> </div>
					<div class= "form-row"> <span class = "label"> Confirm </span> <input type = "checkbox" name = "userid" /> </div>	
					<div class= "form-row">	<a href=""> Place Order </a> </div>
						
						
					
				</form>
			</center>
		</td>
	</tr>
</table>
</body>
</html>