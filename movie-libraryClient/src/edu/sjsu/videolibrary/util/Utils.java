package edu.sjsu.videolibrary.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Utils {
	
	static public void generateHeader( HttpServletRequest request, HttpServletResponse response ) throws IOException {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		out.write("<table border=1><tr>");
		out.write("<td><a href=\"UserMain\">Home</a></td>");
		out.write("<td><a href=\"ViewAccount\">View My Account</a></td>");
		out.write("	<td><a href=\"Cart\">View Cart</a></td>");
		out.write("	<td><a href=\"SellItem\">Return Movie</a></td>");
	
		out.write("	<td><a href=\"SignOutServlet\">Sign-Out</a></td>");
		out.write("</tr>");
		out.write("</table>");
	}
	
	static public boolean isValidInput(String in){
		return in != null && !in.isEmpty() && !in.trim().isEmpty();
	}

	static public boolean isValidCardNum(String ccNum){
		if(isValidInput(ccNum) && ccNum.length()==16){
			for(char temp :ccNum.toCharArray()){
				if(temp < '0'|| temp>'9'){
					return false;
				}
			}
			return true;
		}
		else{
			return false;
		}
	}
	
	static public boolean validateLogin( HttpServletRequest request, HttpServletResponse response ) throws IOException {
		String user =(String) request.getSession().getAttribute("user");
		if( user == null ) {
			response.sendRedirect("SignIn");
			return false;
		}
		return true;
	}

}
