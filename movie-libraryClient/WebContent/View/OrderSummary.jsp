<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank you!</title>
<link rel="stylesheet" type="text/css" href="../css/admin-style.css">
</head>
<body>
<jsp:include page="includes/header.jsp"></jsp:include>
<div id="wrapper">
	<jsp:include page="includes/sidebar.jsp"></jsp:include>
	<div id="rightContent">
		<h3> Thank you for your purchase! </h3>
		<table id = "">
			<%= request.getAttribute("transaction") %>
		</table>
		<div class="clear"></div>
		<p>
		<a class="button" href="HomePage.jsp">Continue Shopping </a> 
		</p>						
	</div>
	<jsp:include page="includes/footer.jsp"></jsp:include>
</div>
</body>
</html>