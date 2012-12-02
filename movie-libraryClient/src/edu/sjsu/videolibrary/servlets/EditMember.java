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

import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;


//@WebServlet("/Admin/EditMember")
public class EditMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy();  
	
	private String msg = "";
	private boolean error = false; 

    public EditMember() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		try {
			String id = request.getParameter("id");
			String action = request.getParameter("act");
			
			HttpSession session = request.getSession();	   			
			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
			
			if (action.equals("Edit")) {					
				editUser(session, request, response, id);
			} else if (action.equals("Update")) {
				updateUser(session, request, response, id);
			}  else if (action.equals("Delete")) {
				deleteUser(session, request, response, id);
			} 
			
		} catch (Exception e) { msg = "error"; }
		

				
	}
	
    public void editUser (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
		User member = proxy.displayUserInformation(Integer.parseInt(id));
		
		if (member.getFirstName() != null) {
			
		    String states [] = proxy.getStates();
		    session.setAttribute("statelist", states);
			session.setAttribute("currentMember", member);
			response.sendRedirect("EditMember.jsp");
		}  else { 
			error = true; 
			msg = "Invalid information";
		} 
    }
    
    public void updateUser (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
    	
    	String userId = request.getParameter("userId").trim().toLowerCase(); //Validate Email 
	    int membershipId = Integer.parseInt(request.getParameter("membershipId")); 
	    String firstName = request.getParameter("firstName"); 
	    String lastName = request.getParameter("lastName"); 
	    String address = request.getParameter("address"); 
	    String city = request.getParameter("city"); 
	    String state = request.getParameter("state"); 
	    String zipCode = request.getParameter("zipCode"); 
	    String membershipType = request.getParameter("membershipType"); 
	    String creditCardNumber = request.getParameter("creditCardNumber"); //Validate CC			    
	    
	    
	    
	    boolean changePassword = Boolean.parseBoolean(request.getParameter("changePassword"));
	    String newPassword = request.getParameter("newPassword");

	    String done = proxy.updateUserInfo(membershipId, userId, firstName, lastName, address, city, state, zipCode, membershipType, creditCardNumber);
	    
	    if (!done.equals("true")) {
	    	msg = "Error with database connection"; 
	    	error = true; 
		} else {
			msg = "Account updated"; 
		}
	    
	    System.out.println(changePassword + " " + newPassword.length() + " " + error);
		if (changePassword == true && error != true) {
			if (newPassword.length() >= 6)
				updateUserPassword(membershipId, newPassword);
			else 
				msg = "Error: Please input a longer password";
		} else {
			msg = "Account updated"; 	
		}
 		response.sendRedirect("ViewMembers.jsp?memberType=All&msg="+msg);

    }
    
    public void updateUserPassword (int membershipId, String newPassword) throws RemoteException { 
		String updatePassword = proxy.updateUserPassword(membershipId,newPassword);
		if (updatePassword.equals("true")) {
			msg = "Account and Password updated"; 	
		} else { 
			msg = "Invalid new password";
			error = true; 
		}   	
    }
    
    public void deleteUser (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
		String done = proxy.deleteUserAccount(id);
		response.sendRedirect("ViewMembers.jsp?msg=" + done);
    }

}
