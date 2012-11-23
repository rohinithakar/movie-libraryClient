package edu.sjsu.videolibrary.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.sjsu.videolibrary.service.ServiceProxy;
 

public class SignInAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy(); 
       
 
    public SignInAdmin() {
        super();
    }
 
    public void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, java.io.IOException {

//
//		try {	    
//		
//			Admin user = new Admin();
//			String userId = (request.getParameter("userId"));
//			String password = (request.getParameter("password"));
//			
//			System.out.println("WTF");
//			
//			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
			// TODO: Fix this function.
//			user = proxy.signInAdminObject(userId, password);
//			   
    	// TODO: isValid method not found
//			System.out.println("user is " + user.isValid() + " " + user.getPassword()); 
//			
//			if (user.isValid()) {
//				HttpSession session = request.getSession(true);	    
//				session.setAttribute("currentAdmin", user); 
//				response.sendRedirect("Home.jsp"); //logged-in page      		
//			} else 
//				response.sendRedirect("LogIn.jsp"); //error page 
//		} 
//		
//		
//		catch (Throwable theException) 	 { System.out.println(theException);  
//		}
	}

}
