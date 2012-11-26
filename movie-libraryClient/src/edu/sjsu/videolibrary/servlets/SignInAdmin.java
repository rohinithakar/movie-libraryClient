package edu.sjsu.videolibrary.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.model.Admin;


public class SignInAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy(); 
       
 
    public SignInAdmin() {
        super();
    }
 
    public void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, java.io.IOException {


		try {	    
		
			Admin user = new Admin();
			String userId = (request.getParameter("userId"));
			String password = (request.getParameter("password"));
 	
			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
 			user = proxy.signInAdmin(userId, password);
 
 		
 			if (user.isValid()) {
 				HttpSession session = request.getSession(true);	    
				session.setAttribute("currentAdmin", user); 
				response.sendRedirect("Home.jsp"); //logged-in page      		
			} else 
				response.sendRedirect("LogIn.jsp"); //error page 
		} 
		
		
		catch (Throwable theException) 	 { System.out.println(theException);  
		}
	}

}
