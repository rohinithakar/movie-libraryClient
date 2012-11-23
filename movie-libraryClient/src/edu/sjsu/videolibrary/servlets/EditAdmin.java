package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.RemoteException;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.model.Admin;
import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;


//@WebServlet("/Admin/EditAdmin")
public class EditAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy();  
	
	private String msg = "";
	private boolean error = false; 

    public EditAdmin() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();  

		try {
			String id = request.getParameter("id");
			String action = request.getParameter("act");
			
			HttpSession session = request.getSession();	   			
			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
			
			if (action.equals("Edit")) {					
				editAdmin(session, request, response, id);
			} else if (action.equals("Update")) {
				updateAdmin(session, request, response, id);
			}  else if (action.equals("Delete")) {
				deleteAdmin(session, request, response, id);
			} else {
				response.sendRedirect("ViewMembers.jsp");
			}
			
		} catch (Exception e) {}
		
		out.print(msg);
				
	}
	
    public void editAdmin (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
		Admin admin = proxy.displayAdminInformation(id);
		if (admin.getFirstName() != null) {
			session.setAttribute("currentMember", admin);
			response.sendRedirect("EditAdmin.jsp");
		}  else { 
			error = true; 
			msg = "Invalid information";
		} 
    }
    
    public void updateAdmin (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
    	
    	String userId = request.getParameter("userId");
	    String firstName = request.getParameter("firstName"); 
	    String lastName = request.getParameter("lastName"); 
	    String newPassword = request.getParameter("newPassword");

	    String done = proxy.updateAdminInfo(userId, firstName, lastName, newPassword);
	    
	    if (!done.equals("true")) {
	    	msg = "Error with database connection"; 
	    	error = true; 
		} else {
			msg = ("Account updated <a href=\"ViewMembers.jsp\">go Back to View Members</a> "); 
		}
    }
        
    public void deleteAdmin (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
		String done = proxy.deleteAdminAccount(id);
		if (!done.equals("false")) {
			msg = ("Account deleted <a href=\"ViewMembers.jsp\">go Back to View Members</a> "); 
		} else {
			error = true; 
		}
    }

}
