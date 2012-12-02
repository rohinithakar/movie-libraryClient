<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="edu.sjsu.videolibrary.util.Utils"%>
 <%
	if(!Utils.validateLogin(request, response)) {
		return;
	}
%>
<table>
<tr>
<td>
<a href="HomePage">Home</a>
</td>
</tr>
</table>