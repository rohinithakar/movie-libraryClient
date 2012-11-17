package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.Utils;

public class UpdatePasswordInfo extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public UpdatePasswordInfo(){
		super();	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//	if(!Utils.validateLogin(request, response)) {
		//		return;
		//	}

		PrintWriter out = response.getWriter();
		try{
			int membershipId = Integer.parseInt(request.getParameter("membershipId"));
			String oldPwd = request.getParameter("oldPwd");
			String newPwd = request.getParameter("newPwd");

			ServiceProxy proxy  = new ServiceProxy();
			proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
			String result = proxy.updatePassword(membershipId,oldPwd,newPwd);

			if(result == null){
				response.sendRedirect("UpdatePassword?msg=serverError");
				return;
			}
			if(result.equalsIgnoreCase("true")){
				response.sendRedirect("UpdatePassword?msg=successful");
				return;
			}
		}
		catch(Exception e){
			e.getMessage();
		}		
	}
}






