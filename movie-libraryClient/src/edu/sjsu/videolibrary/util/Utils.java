package edu.sjsu.videolibrary.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.axis.session.Session;
import org.apache.catalina.connector.Request;

import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;

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
		User user = getUserSession(request);
		if( user == null ) {
			response.sendRedirect(ClientConfig.USER_LOGIN);
			return false;
		}
		return true;
	}
	
	static public ServiceProxy getServiceProxy() {
		ServiceProxy proxy = new ServiceProxy();
		proxy.setEndpoint(ClientConfig.PROXY_ADDRESS);
		return proxy;
	}
	
	static public User getUserSession(HttpServletRequest req) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute(Parameters.pUserBean);
		return user;
	}

}
