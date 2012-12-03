package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.UtilsClient;
import edu.sjsu.videolibrary.model.User;

public class UpdatePasswordInfo extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public UpdatePasswordInfo(){
		super();	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(!UtilsClient.validateLogin(request, response)) {
			return;
		}
		try{
			User usr = UtilsClient.getUserSession(request);
			int membershipId = usr.getMembershipId();
			String oldPwd = request.getParameter("oldPwd");
			String newPwd = request.getParameter("newPwd");

			ServiceProxy proxy = UtilsClient.getServiceProxy();
			String result = proxy.updatePassword(membershipId,oldPwd,newPwd);

			if(result == null){
				response.sendRedirect("UpdatePasswordInfo?msg=serverError");
				return;
			}
			if(result.equalsIgnoreCase("true")){
				response.sendRedirect("UpdatePasswordInfo?msg=successful");
				return;
			}
		}
		catch(Exception e){
			e.getMessage();
		}		
	}
}






